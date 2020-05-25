
/*
    Copyright 2007 Alexandre Campo, Alvaro Gutierrez, Valentin Longchamp.

    This file is part of libIrcom.

    libIrcom is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License.

    libIrcom is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with libIrcom.  If not, see <http://www.gnu.org/licenses/>.
*/

// simple test :  send or receive numbers, and avoid obstacles in the same time.

#include <e_ad_conv.h>
#include <e_init_port.h>
#include <e_epuck_ports.h>
#include <e_uart_char.h>
#include <e_led.h>

#include <e_led.h>
#include <e_motors.h>
#include <e_agenda.h>

#include <stdio.h>
#include <ircom.h>
#include <btcom.h>
#include <math.h>

/* float sensorDir[NB_IR_SENSORS] = {0.2967, 0.8727, 1.5708, 2.6180, 3.6652, 4.7124, 5.4105, 5.9865}; */
float sensorDir[8] = {0.2967, 0.8727, 1.5708, 2.6180, 3.6652, 4.7124, 5.4105, 5.9865};

int getselector()
{
    return SELECTOR0 + 2*SELECTOR1 + 4*SELECTOR2 + 8*SELECTOR3;
}

void obstacleAvoidance();

// cycling test
/* void cycling() */
/* { */
/*     e_set_speed_left(350); */
/*     e_set_speed_right(500); */
/* } */


// formation
#define PI 3.1415926
#define DTR 0.017453 // degree to radian
#define ratio 7763.66 // 1000 / 0.041 / 2 / PI
const double safeDist = 0.13;
// destination
const double dest_range = 10.0;
double dest_bearing = 45.0 * DTR;
/* const double dest_bearing2 = 315.0 * DTR; */
const double vspeed = 0.0;

// leader
void goStaright()
{
    e_set_speed_left(vspeed);
    e_set_speed_right(vspeed);
}

void veloFormation(IrcomMessage imsg)
{
    if((int)imsg.value == 1) // see leader
    {
	double term_bearing;
	double phi_d;
	// get actual range and bearing
	double l = (double)imsg.distance; // actual range
	double phi = (double)imsg.direction; // actual bearing
	if(phi > PI) // leader on the right: pi to 2pi
	{
	    term_bearing = 315 * DTR;
	    phi -= 2*PI;
	}
	else // leader on the left: 0 to pi
	{
	    term_bearing = 45 * DTR;
	}

	phi_d = term_bearing; // radians
	
	if(l < safeDist*100 && fabs(phi-term_bearing) < 20*DTR)
	{
	    char arr[100];
	    sprintf(arr, "Arrive destination, stop!\n");
	    btcomSendString(arr);
	    e_set_speed_left(0);
	    e_set_speed_right(0);
	    return;
	}
	
	double d = 0.2;
	double a=0.4, b=0.6;
	double k1=2, k2=2, k3=1.4;
	double forward_speed, turn_speed;
	double alpha = 0.0;
	
	double l_d = 1.5 * safeDist;
	// double w_l = getHeading() - getLastHeading();
	double w_l = 0.0;
	double v_l = 0.02;
	/* double v_l = vspeed; */
	double xel = l*cos(phi+alpha) - l_d*cos(phi_d);
	double yel = l*sin(phi+alpha) - l_d*sin(phi_d);
	double xe = cos(alpha)*xel + sin(alpha)*yel;
	double ye = -sin(alpha)*xel + cos(alpha)*yel;
	double sol_turn_speed = w_l + v_l*(k2*a*(ye+d*sin(alpha)+k3*alpha)) + b/k3*sin(alpha);
	forward_speed = v_l*cos(alpha) + k1*(xe-d*(1-cos(alpha))) - k3*alpha*sol_turn_speed;
	turn_speed = sol_turn_speed;
	int v_right = (int)((forward_speed + 0.5*turn_speed*0.053)*ratio);
	int v_left = (int)((forward_speed -  0.5*turn_speed*0.053)*ratio);
	/* int v_right = int((2*forward_speed + 0.053*turn_speed) * 0.5 * ratio); */
	/* int v_left = int((2*forward_speed - v_right) * ratio); */
	/* e_set_speed(forward_speed, turn_speed); */
	char tmp[128];
	sprintf(tmp, "Setting speed: %d \t %d\n", v_left, v_right);
	btcomSendString(tmp);
	e_set_speed_left(v_left);
	e_set_speed_right(v_right);
	// send id + can't see/on leader's left/on leader's right
	// 20: can't see, 21: left, 22: right
	if(phi > 0) // on leader's left
	{
	    ircomSend(21);
	    while (ircomSendDone() == 0);
	}
	else // on leader's right
	{
	    ircomSend(22);
	    while (ircomSendDone() == 0);
	}
    }
    else // see follower
    {
	e_set_speed_left(0);
	e_set_speed_right(0);
	ircomSend(20);
	while (ircomSendDone() == 0);
    }
}

void posFormation(IrcomMessage imsg)
{    
    if((int)imsg.value == 1) // see leader
    {
	// get actual range and bearing
	double range = (double)imsg.distance;
	double bearing = (double)imsg.direction;
	if(bearing > 180*DTR) // on the right
	    bearing -= 2*PI;

	double delta_x = range*cos(bearing) - dest_range*cos(dest_bearing);
	double delta_y = range*sin(bearing) - dest_range*sin(dest_bearing);
	double dist = sqrt(delta_x*delta_x + delta_y*delta_y);
	double angle = atan(delta_y / delta_x);

	e_set_speed((int)dist, (int)angle);
	/* double v_left, v_right; */
	/* e_set_speed_left(v_left); */
	/* e_set_speed_right(v_right); */
	char tmp[128];
	sprintf(tmp, "Setting speed: %d \t %d\n", (int)dist, (int)angle);
	btcomSendString(tmp);
	// send id + can't see/on leader's left/on leader's right
	// 20: can't see, 21: left, 22: right
	/* int j; */
	/* for(j=0; j<200000; ++j) */
	/* 	asm("nop"); */
	/* if(imsg.direction > 0) // on leader's left */
	/* { */
	/*     ircomSend(21); */
	/*     while (ircomSendDone() == 0); */
	/* } */
	/* else // on leader's right */
	/* { */
	/*     ircomSend(22); */
	/*     while (ircomSendDone() == 0); */
	/* } */
    }
    else // see follower
    {
	e_set_speed_left(0);
	e_set_speed_right(0);
	ircomSend(20);
	while (ircomSendDone() == 0);
    }
}

int main()
{
    // init robot
    e_init_port();
    e_init_ad_scan();
    e_init_uart1();
    e_led_clear();	
    e_init_motors();
    e_start_agendas_processing();

    // wait for s to start
    btcomWaitForCommand('s');
    btcomSendString("==== READY - IR TESTING ====\n\n");

    e_calibrate_ir(); 

    // initialize ircom and start reading
    ircomStart();
    ircomEnableContinuousListening();
    ircomListen();

    // rely on selector to define the role
    int selector = getselector();

    // show selector choosen
    int i;
    long int j;
    for (i = 0; i < selector; i++)
    {
	e_led_clear();
	for(j = 0; j < 200000; j++)
	    asm("nop");
	e_set_led(i%8, 1);
	for(j = 0; j < 300000; j++)
	    asm("nop");
	e_led_clear();
	for(j = 0; j < 300000; j++)
	    asm("nop");
    }

    // acting as leader
    if (selector == 1)
    {    	
	btcomSendString("==== Leader ====\n\n");
	// e_activate_agenda(goStaright, 10000);

	while(1)
	{
	    // takes ~15knops for a 32window, avoid putting messages too close...
	    for(j = 0; j < 200000; j++)
		asm("nop");

	    // brocast id
	    // role: leader: 1, follower: 2
	    btcomSendString("Broadcasting...");
	    ircomSend(1);
	    while (ircomSendDone() == 0);

	    btcomSendString(".");
	}
    }
    // acting as follower
    else if (selector == 2)
    {
	btcomSendString("==== Follower, posFormation ====\n\n");
	while(1)
	{
	    IrcomMessage imsg;
	    ircomPopMessage(&imsg);
	    if(imsg.error == 0)
	    {
		char tmp[128];
		sprintf(tmp, "Receive agent %d: distance=%f \t direction=%f \t receivingSensor=%d\n", (int)imsg.value, (double)imsg.distance, (double)imsg.direction, (int)imsg.receivingSensor);
		btcomSendString(tmp);
		if((double)imsg.distance < safeDist*100 && fabs((double)imsg.direction-0.785)<0.35) // arrive dest
		{
		    char* arr = "Arrive destination, stop!";
		    btcomSendString(arr);
		    e_set_speed_left(0);
		    e_set_speed_right(0);
		    break;
		}
		else // process msg
		    posFormation(imsg);
	    }
	    /* for(j = 0; j < 200000; j++) */
	    /* 	asm("nop"); */
	    /* ircomSend(); */
	}
    }
    else if (selector == 3)
    {
	btcomSendString("==== Follower, veloFormation ====\n\n");
	while(1)
	{
	    IrcomMessage imsg;
	    ircomPopMessage(&imsg);
	    if(imsg.error == 0)
	    {
		char tmp[128];
		sprintf(tmp, "Receive agent %d: distance=%f \t direction=%f \t receivingSensor=%d\n", (int)imsg.value, (double)imsg.distance, (double)imsg.direction, (int)imsg.receivingSensor);
		btcomSendString(tmp);
		
		veloFormation(imsg); // process msg
	    }
	    /* for(j = 0; j < 200000; j++) */
	    /* 	asm("nop"); */
	    /* ircomSend(); */
	}
    }
    // no proper role defined...
    else 
    {
	int i = 0;
	long int j;
	while(1)
	{
	    e_led_clear();
	    
	    for(j = 0; j < 200000; j++)
		asm("nop");
	    
	    e_set_led(i, 1);
	    
	    for(j = 0; j < 300000; j++)
		asm("nop");
	    
	    i++;
	    i = i%8;
	}	
    }    
    
    ircomStop();
    return 0;
}

int obstacleAvoidanceThreshold = 30.0;
int obstacleAvoidanceSpeed = 500.0;
void obstacleAvoidance()
{    
    // check if an obstacle is perceived 
    double reading = 0.0;
    int obstaclePerceived = 0;
    int i=0;
    double x = 0.0, y = 0.0;
    for (i = 0; i < 8; i++)
    {
        reading = e_get_calibrated_prox(i);
	// if signal above noise
	if(reading >= obstacleAvoidanceThreshold)
	{
	    obstaclePerceived = 1;
	    
	    // compute direction to escape
	    double signal = reading - obstacleAvoidanceThreshold;
	    x += -cos(sensorDir[i]) * signal / 8.0;
	    y += sin(sensorDir[i]) * signal / 8.0;
	}
    }
    
    // no obstacles to avoid, return immediately
    if (obstaclePerceived == 0)
    {
	// go straight forward
	// change movement direction
	e_set_speed_left(obstacleAvoidanceSpeed);
	e_set_speed_right(obstacleAvoidanceSpeed);
	// return obstaclePerceived;
	return;
    }
    
    double desiredAngle = atan2 (y, x);
    
    double leftSpeed = 0.0;
    double rightSpeed = 0.0;
    
    // turn left
    if (desiredAngle >= 0.0)
    {
	leftSpeed  = cos(desiredAngle);
	rightSpeed = 1;
    }
    // turn right
    else
    {
	leftSpeed = 1;
	rightSpeed = cos(desiredAngle);
    }
    
    // rescale values
    leftSpeed *= obstacleAvoidanceSpeed;
    rightSpeed *= obstacleAvoidanceSpeed;
    
    // change movement direction
    e_set_speed_left(leftSpeed);
    e_set_speed_right(rightSpeed);
    
    // advertise obstacle avoidance in progress
    // return 1;
}


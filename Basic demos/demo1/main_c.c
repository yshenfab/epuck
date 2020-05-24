/**************************************/
/** LEDs blinking (pause with timer) **/
/**************************************/

#include "p30f6014A.h"
#include "e_epuck_ports.h"
#include "e_init_port.h"

#define DELAY	20000

int main() {

	//system initialization 
	e_init_port();    // configure port pins

	T1CON = 0x8030; // Timer1 settings: TMR1 on, prescale 1:256

	while (1) {

		//switch the state of all leds with "^" exclusif OR bit to bit
		LED0 = LED0^1; 
		LED1 = LED1^1; 
		LED2 = LED2^1; 
		LED3 = LED3^1;
		LED4 = LED4^1; 
		LED5 = LED5^1; 
		LED6 = LED6^1; 
		LED7 = LED7^1;

		TMR1 = 0;
		while(TMR1 < DELAY);

	}								
}


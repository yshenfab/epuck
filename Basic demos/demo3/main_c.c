/**************************************************************/
/** Send selector position via Bluetooth (simplified method) **/
/**************************************************************/

#include "p30f6014A.h"
#include "e_epuck_ports.h"
#include "e_init_port.h"
#include "e_led.h"
#include <string.h>
#include <stdio.h>

#define BAUDRATE 115200

int main() {

	int selector;
	char buffer[5];

	//system initialization 
	e_init_port();    // configure port pins

	//UART1 (Bluetooth) port initialization (11500bps, 8 data bits, 1 stop bit, no parity)
	U1MODEbits.UARTEN = 1;				//enable UART
	U1BRG = (((FCY/BAUDRATE)/16)-1);	//set baudrate
	U1STAbits.UTXEN = 1;

	while (1) {

		// selector state reading
		selector = SELECTOR0 + 2*SELECTOR1 + 4*SELECTOR2 + 8*SELECTOR3;
		
		// turn off all leds
		e_led_clear();
		e_set_body_led(0);
		e_set_front_led(0);
		
		// turn on leds based on selector state
		switch(selector) {
			case 0: e_set_led(0, 1);
					break;
			case 1: e_set_led(1, 1);
					break;
			case 2: e_set_led(2, 1);
					break;
			case 3: e_set_led(3, 1);
					break;
			case 4: e_set_led(4, 1);
					break;
			case 5: e_set_led(5, 1);
					break;
			case 6: e_set_led(6, 1);
					break;
			case 7: e_set_led(7, 1);
					break;
			case 8: e_set_body_led(1);
					break;
			case 9: e_set_front_led(1);
					break;
			default:e_set_led(8, 1); //turn on all leds
		}

		sprintf(buffer, "s=%x\n\r", selector);
		
		//put data in the uart transmit register
		U1TXREG = buffer[0];
		U1TXREG = buffer[1];
		U1TXREG = buffer[2];
		U1TXREG = buffer[3];
		U1TXREG = buffer[4];
	}								
}


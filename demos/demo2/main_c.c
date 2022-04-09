/******************************************/
/** Selector position changes LEDs state **/
/******************************************/

#include "p30f6014A.h"
#include "e_epuck_ports.h"
#include "e_init_port.h"
#include "e_led.h"

int main() {

	int selector;

	//system initialization 
	e_init_port();    // configure port pins

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

	}								
}


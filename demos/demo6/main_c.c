/***********************************************************************/
/** Motor speed controlled depending on front proximity sensor values **/
/***********************************************************************/

#include "p30f6014A.h"
#include "e_epuck_ports.h"
#include "e_init_port.h"
#include "e_ad_conv.h"
#include "e_prox.h"
#include "e_motors.h"

#define DELAY 50000

int main() {

	long timer = 0;

	//system initialization 
	e_init_port();    			// configure port pins
	e_init_ad_scan(ALL_ADC);	// configure Analog-to-Digital Converter Module

	while (1) {

		if (e_get_prox(0)>500) {		//escape
			e_set_speed_left(-100);
			e_set_speed_right(-100);
		} else if (e_get_prox(0)>100) {	//follow
			e_set_speed_left(100);
			e_set_speed_right(100);
		} else {						//stop
			e_set_speed_left(0);
			e_set_speed_right(0);
		}

		//wait a little to let the robot move
		for(timer = 0; timer < DELAY; timer++);

	}								
}


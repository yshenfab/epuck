/************************************************************************/
/** Proximity reading with interrupts and corresponding LED turned on; **/
/** values sent via BT (assembler version with interrupt and buffer)   **/
/************************************************************************/

#include "p30f6014A.h"
#include "e_epuck_ports.h"
#include "e_init_port.h"
#include "e_led.h"
#include "e_ad_conv.h"
#include "e_prox.h"
#include "e_uart_char.h"
#include <string.h>
#include <stdio.h>

int main() {

	char buffer[100];

	//system initialization 
	e_init_port();    			// configure port pins
	e_init_ad_scan(ALL_ADC);	// configure Analog-to-Digital Converter Module
	e_init_uart1();				// initialize UART to 115200 Kbaud

	while (1) {

		// turn off all leds
		e_led_clear();
		e_set_body_led(0);
		e_set_front_led(0);
		
		// turn on leds based on proximity state
		if (e_get_prox(0)>400) 
			e_set_led(0,1);
		if (e_get_prox(1)>400) 
			e_set_led(1,1);
		if (e_get_prox(2)>400) 
			e_set_led(2,1);
		if (e_get_prox(3)>400) 
			e_set_led(3,1);
		if (e_get_prox(4)>400) 
			e_set_led(4,1);
		if (e_get_prox(5)>400) 
			e_set_led(5,1);
		if (e_get_prox(6)>400) 
			e_set_led(6,1);
		if (e_get_prox(7)>400) 
			e_set_led(7,1);

		// send proximity values via bluetooth
		sprintf(buffer, "IR0=%d,IR1=%d,IR2=%d,IR3=%d,IR4=%d,IR5=%d,IR6=%d,IR7=%d\n\r\0",
		e_get_prox(0),e_get_prox(1),e_get_prox(2),e_get_prox(3),e_get_prox(4),
		e_get_prox(5),e_get_prox(6),e_get_prox(7));
		e_send_uart1_char(buffer, strlen(buffer));
		while(e_uart1_sending());

	}								
}


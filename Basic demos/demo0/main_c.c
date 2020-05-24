/*******************************/
/** Very simple LEDs blinking **/
/*******************************/

#include "p30f6014A.h"
#include "e_epuck_ports.h"

#define DELAY 50000

// set configuration bits for MPLAB (e.g oscillator)
_FOSC(CSW_FSCM_OFF & XT_PLL8);
_FWDT(WDT_OFF);
_FBORPOR(PBOR_OFF & MCLR_EN);
_FGS(CODE_PROT_OFF);

int main() {

	long timer = 0;
	
	//configure LEDs pin direction
	LED0_DIR = OUTPUT_PIN;
	LED1_DIR = OUTPUT_PIN;
	LED2_DIR = OUTPUT_PIN;
	LED3_DIR = OUTPUT_PIN;
	LED4_DIR = OUTPUT_PIN;
	LED5_DIR = OUTPUT_PIN;
	LED6_DIR = OUTPUT_PIN;
	LED7_DIR = OUTPUT_PIN;

	while (1) {

		LED0 = 0; 
		LED1 = 0; 
		LED2 = 0; 
		LED3 = 0;
		LED4 = 0; 
		LED5 = 0; 
		LED6 = 0; 
		LED7 = 0;

		for(timer = 0; timer < DELAY; timer++);

		LED0 = 1; 
		LED1 = 1; 
		LED2 = 1; 
		LED3 = 1;
		LED4 = 1; 
		LED5 = 1; 
		LED6 = 1; 
		LED7 = 1;

		for(timer = 0; timer < DELAY; timer++);

	}								
}


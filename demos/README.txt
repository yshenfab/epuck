SIMPLE PROGRAMS FOR THE E-PUCK ROBOT

This set of simple programs has an increasing degree of complexity. From very basic LED blinking up to motor control depending on sensor input. 
The first demos do not use interrupts and keep to a minimum the library used.

LIST OF BASIC PROGRAMS:

- demo0: very simple LEDs blinking

- demo1: LEDs blinking (pause with timer)

- demo2: selector reading + LEDs

- demo3: send selector position via Bluetooth (simplified method)

- demo4: proximity reading with interrupts + LEDs

- demo5: proximity reading with interrupts + LEDs + send values via BT (assembler version with interrupt and buffer)

- demo6: motor speed controlled depending on front proximity sensor values


COMPILATION:

The demos can be edited and compiled using MPLAB IDE (windows), clicking directly on the project file. 
The demos should be compiled with MPLAB-C30 on all operating systems.
The compiled .hex file is downloaded to the e-puck robot via Bluetooth using for example tinyBootloader.

Authors:
Stefano Morgani and Gilles Caprari, GCtronic

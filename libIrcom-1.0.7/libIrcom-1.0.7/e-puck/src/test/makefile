# EXE MAKEFILE
#------------------------------
#ROOT = ../..
ROOT = /opt/microchip/xc16/v1.36B
EXE_TARGET = ircomTest

LIBS = -lIrcom -lBtcom -lE-puck -lm
INCS =
OPTS = -Wall -O3


# don't modify what is below ...
#------------------------------

ASM_SRCS 	= $(wildcard *.s)
C_SRCS 	= $(wildcard *.c)
SRCS 		= $(C_SRCS) $(ASM_SRCS)
HDRS 		= $(wildcard *.h) $(wildcard *.inc)
OBJS 		= $(addsuffix .o,$(basename $(SRCS)))

CC	  		= xc16-gcc
AS	  		= xc16-as
BIN2HEX  	= xc16-bin2hex
AR			= xc16-ar
RANLIB		= xc16-ranlib
STRIP		= xc16-strip

CC_FLAGS 	= -mcpu=30F6014A -I/opt/microchip/xc16/v1.36B/include -I/home/yang/sustech/epuck/lib/e-puck-lib/library/I2C -I/home/yang/sustech/epuck/lib/e-puck-lib/library/a_d/ -I/home/yang/sustech/epuck/lib/e-puck-lib/library/bluetooth -I/home/yang/sustech/epuck/lib/e-puck-lib/library/camera -I/home/yang/sustech/epuck/lib/e-puck-lib/library/codec -I/home/yang/sustech/epuck/lib/e-puck-lib/library/contrib -I/home/yang/sustech/epuck/lib/e-puck-lib/library/doc -I/home/yang/sustech/epuck/lib/e-puck-lib/library/fft -I/home/yang/sustech/epuck/lib/e-puck-lib/library/matlab -I/home/yang/sustech/epuck/lib/e-puck-lib/library/motor_led -I/home/yang/sustech/epuck/lib/e-puck-lib/library/uart -I/home/yang/sustech/epuck/libIrcom-1.0.7/libIrcom-1.0.7/e-puck/src/btcom -I/home/yang/sustech/epuck/libIrcom-1.0.7/libIrcom-1.0.7/e-puck/src/epfl -I/home/yang/sustech/epuck/libIrcom-1.0.7/libIrcom-1.0.7/e-puck/src/ircom
AS_FLAGS 	= -I/opt/microchip/xc16/v1.36B/support/dsPIC30F/inc -p=30F6014A
LD_FLAGS 	= -Wl,--heap=512,-L/opt/microchip/xc16/v1.36B/lib,-T/opt/microchip/xc16/v1.36B/support/dsPIC30F/gld/p30F6014A.gld


all : $(EXE_TARGET).hex

$(EXE_TARGET).hex : $(EXE_TARGET).elf
	$(BIN2HEX) $(EXE_TARGET).elf
	if [ ! -d $(ROOT)/bin ]; then mkdir $(ROOT)/bin; fi
	cp $@ $(ROOT)/bin/
	make clean

$(EXE_TARGET).elf : $(OBJS) 
#	$(STRIP) $(OBJS) 
	$(CC) -o $@ $? $(LD_FLAGS) -L$(ROOT)/lib $(LIBS)

%.o : %.c %.h
	$(CC) $(CC_FLAGS) $(OPTS) $(INCS) -I$(ROOT)/include/ -c $< -o $(<:.c=.o)

%.o : %.c
	$(CC) $(CC_FLAGS) $(OPTS) $(INCS) -I$(ROOT)/include/ -c $< -o $(<:.c=.o)

%.o : %.s
	$(AS) -o $(<:.s=.o) $(AS_FLAGS) $(INCS) -I$(ROOT)/include/ $<


.PHONY : clean
clean : 
	rm -f *~ *.o *.a *.bak *.hex *.elf $(LIB_TARGET) core gmon.out  





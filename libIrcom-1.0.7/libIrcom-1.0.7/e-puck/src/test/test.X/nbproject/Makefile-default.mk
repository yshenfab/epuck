#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../btcom/btcom.c ../../epfl/e_agenda.c ../../epfl/e_init_port.c ../../epfl/e_init_uart1.s ../../epfl/e_init_uart2.s ../../epfl/e_led.c ../../epfl/e_motors.c ../../epfl/e_remote_control.c ../../epfl/e_uart1_rx_char.s ../../epfl/e_uart1_tx_char.s ../../epfl/e_uart2_rx_char.s ../../epfl/e_uart2_tx_char.s ../../ircom/e_ad_conv.c ../../ircom/ircom.c ../../ircom/ircomMessages.c ../../ircom/ircomReceive.c ../../ircom/ircomSend.c ../../ircom/ircomTools.c ../main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1618905679/btcom.o ${OBJECTDIR}/_ext/1853423697/e_agenda.o ${OBJECTDIR}/_ext/1853423697/e_init_port.o ${OBJECTDIR}/_ext/1853423697/e_init_uart1.o ${OBJECTDIR}/_ext/1853423697/e_init_uart2.o ${OBJECTDIR}/_ext/1853423697/e_led.o ${OBJECTDIR}/_ext/1853423697/e_motors.o ${OBJECTDIR}/_ext/1853423697/e_remote_control.o ${OBJECTDIR}/_ext/1853423697/e_uart1_rx_char.o ${OBJECTDIR}/_ext/1853423697/e_uart1_tx_char.o ${OBJECTDIR}/_ext/1853423697/e_uart2_rx_char.o ${OBJECTDIR}/_ext/1853423697/e_uart2_tx_char.o ${OBJECTDIR}/_ext/1625310744/e_ad_conv.o ${OBJECTDIR}/_ext/1625310744/ircom.o ${OBJECTDIR}/_ext/1625310744/ircomMessages.o ${OBJECTDIR}/_ext/1625310744/ircomReceive.o ${OBJECTDIR}/_ext/1625310744/ircomSend.o ${OBJECTDIR}/_ext/1625310744/ircomTools.o ${OBJECTDIR}/_ext/1472/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1618905679/btcom.o.d ${OBJECTDIR}/_ext/1853423697/e_agenda.o.d ${OBJECTDIR}/_ext/1853423697/e_init_port.o.d ${OBJECTDIR}/_ext/1853423697/e_init_uart1.o.d ${OBJECTDIR}/_ext/1853423697/e_init_uart2.o.d ${OBJECTDIR}/_ext/1853423697/e_led.o.d ${OBJECTDIR}/_ext/1853423697/e_motors.o.d ${OBJECTDIR}/_ext/1853423697/e_remote_control.o.d ${OBJECTDIR}/_ext/1853423697/e_uart1_rx_char.o.d ${OBJECTDIR}/_ext/1853423697/e_uart1_tx_char.o.d ${OBJECTDIR}/_ext/1853423697/e_uart2_rx_char.o.d ${OBJECTDIR}/_ext/1853423697/e_uart2_tx_char.o.d ${OBJECTDIR}/_ext/1625310744/e_ad_conv.o.d ${OBJECTDIR}/_ext/1625310744/ircom.o.d ${OBJECTDIR}/_ext/1625310744/ircomMessages.o.d ${OBJECTDIR}/_ext/1625310744/ircomReceive.o.d ${OBJECTDIR}/_ext/1625310744/ircomSend.o.d ${OBJECTDIR}/_ext/1625310744/ircomTools.o.d ${OBJECTDIR}/_ext/1472/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1618905679/btcom.o ${OBJECTDIR}/_ext/1853423697/e_agenda.o ${OBJECTDIR}/_ext/1853423697/e_init_port.o ${OBJECTDIR}/_ext/1853423697/e_init_uart1.o ${OBJECTDIR}/_ext/1853423697/e_init_uart2.o ${OBJECTDIR}/_ext/1853423697/e_led.o ${OBJECTDIR}/_ext/1853423697/e_motors.o ${OBJECTDIR}/_ext/1853423697/e_remote_control.o ${OBJECTDIR}/_ext/1853423697/e_uart1_rx_char.o ${OBJECTDIR}/_ext/1853423697/e_uart1_tx_char.o ${OBJECTDIR}/_ext/1853423697/e_uart2_rx_char.o ${OBJECTDIR}/_ext/1853423697/e_uart2_tx_char.o ${OBJECTDIR}/_ext/1625310744/e_ad_conv.o ${OBJECTDIR}/_ext/1625310744/ircom.o ${OBJECTDIR}/_ext/1625310744/ircomMessages.o ${OBJECTDIR}/_ext/1625310744/ircomReceive.o ${OBJECTDIR}/_ext/1625310744/ircomSend.o ${OBJECTDIR}/_ext/1625310744/ircomTools.o ${OBJECTDIR}/_ext/1472/main.o

# Source Files
SOURCEFILES=../../btcom/btcom.c ../../epfl/e_agenda.c ../../epfl/e_init_port.c ../../epfl/e_init_uart1.s ../../epfl/e_init_uart2.s ../../epfl/e_led.c ../../epfl/e_motors.c ../../epfl/e_remote_control.c ../../epfl/e_uart1_rx_char.s ../../epfl/e_uart1_tx_char.s ../../epfl/e_uart2_rx_char.s ../../epfl/e_uart2_tx_char.s ../../ircom/e_ad_conv.c ../../ircom/ircom.c ../../ircom/ircomMessages.c ../../ircom/ircomReceive.c ../../ircom/ircomSend.c ../../ircom/ircomTools.c ../main.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=30F6014A
MP_LINKER_FILE_OPTION=,--script=p30F6014A.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1618905679/btcom.o: ../../btcom/btcom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1618905679" 
	@${RM} ${OBJECTDIR}/_ext/1618905679/btcom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618905679/btcom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../btcom/btcom.c  -o ${OBJECTDIR}/_ext/1618905679/btcom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1618905679/btcom.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1618905679/btcom.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1853423697/e_agenda.o: ../../epfl/e_agenda.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_agenda.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_agenda.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../epfl/e_agenda.c  -o ${OBJECTDIR}/_ext/1853423697/e_agenda.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1853423697/e_agenda.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_agenda.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1853423697/e_init_port.o: ../../epfl/e_init_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_init_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_init_port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../epfl/e_init_port.c  -o ${OBJECTDIR}/_ext/1853423697/e_init_port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1853423697/e_init_port.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_init_port.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1853423697/e_led.o: ../../epfl/e_led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../epfl/e_led.c  -o ${OBJECTDIR}/_ext/1853423697/e_led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1853423697/e_led.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_led.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1853423697/e_motors.o: ../../epfl/e_motors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_motors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_motors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../epfl/e_motors.c  -o ${OBJECTDIR}/_ext/1853423697/e_motors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1853423697/e_motors.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_motors.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1853423697/e_remote_control.o: ../../epfl/e_remote_control.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_remote_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_remote_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../epfl/e_remote_control.c  -o ${OBJECTDIR}/_ext/1853423697/e_remote_control.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1853423697/e_remote_control.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_remote_control.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1625310744/e_ad_conv.o: ../../ircom/e_ad_conv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1625310744" 
	@${RM} ${OBJECTDIR}/_ext/1625310744/e_ad_conv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625310744/e_ad_conv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ircom/e_ad_conv.c  -o ${OBJECTDIR}/_ext/1625310744/e_ad_conv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1625310744/e_ad_conv.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625310744/e_ad_conv.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1625310744/ircom.o: ../../ircom/ircom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1625310744" 
	@${RM} ${OBJECTDIR}/_ext/1625310744/ircom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625310744/ircom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ircom/ircom.c  -o ${OBJECTDIR}/_ext/1625310744/ircom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1625310744/ircom.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625310744/ircom.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1625310744/ircomMessages.o: ../../ircom/ircomMessages.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1625310744" 
	@${RM} ${OBJECTDIR}/_ext/1625310744/ircomMessages.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625310744/ircomMessages.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ircom/ircomMessages.c  -o ${OBJECTDIR}/_ext/1625310744/ircomMessages.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1625310744/ircomMessages.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625310744/ircomMessages.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1625310744/ircomReceive.o: ../../ircom/ircomReceive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1625310744" 
	@${RM} ${OBJECTDIR}/_ext/1625310744/ircomReceive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625310744/ircomReceive.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ircom/ircomReceive.c  -o ${OBJECTDIR}/_ext/1625310744/ircomReceive.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1625310744/ircomReceive.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625310744/ircomReceive.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1625310744/ircomSend.o: ../../ircom/ircomSend.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1625310744" 
	@${RM} ${OBJECTDIR}/_ext/1625310744/ircomSend.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625310744/ircomSend.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ircom/ircomSend.c  -o ${OBJECTDIR}/_ext/1625310744/ircomSend.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1625310744/ircomSend.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625310744/ircomSend.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1625310744/ircomTools.o: ../../ircom/ircomTools.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1625310744" 
	@${RM} ${OBJECTDIR}/_ext/1625310744/ircomTools.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625310744/ircomTools.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ircom/ircomTools.c  -o ${OBJECTDIR}/_ext/1625310744/ircomTools.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1625310744/ircomTools.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625310744/ircomTools.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../main.c  -o ${OBJECTDIR}/_ext/1472/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1618905679/btcom.o: ../../btcom/btcom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1618905679" 
	@${RM} ${OBJECTDIR}/_ext/1618905679/btcom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1618905679/btcom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../btcom/btcom.c  -o ${OBJECTDIR}/_ext/1618905679/btcom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1618905679/btcom.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1618905679/btcom.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1853423697/e_agenda.o: ../../epfl/e_agenda.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_agenda.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_agenda.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../epfl/e_agenda.c  -o ${OBJECTDIR}/_ext/1853423697/e_agenda.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1853423697/e_agenda.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_agenda.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1853423697/e_init_port.o: ../../epfl/e_init_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_init_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_init_port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../epfl/e_init_port.c  -o ${OBJECTDIR}/_ext/1853423697/e_init_port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1853423697/e_init_port.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_init_port.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1853423697/e_led.o: ../../epfl/e_led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../epfl/e_led.c  -o ${OBJECTDIR}/_ext/1853423697/e_led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1853423697/e_led.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_led.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1853423697/e_motors.o: ../../epfl/e_motors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_motors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_motors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../epfl/e_motors.c  -o ${OBJECTDIR}/_ext/1853423697/e_motors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1853423697/e_motors.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_motors.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1853423697/e_remote_control.o: ../../epfl/e_remote_control.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_remote_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_remote_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../epfl/e_remote_control.c  -o ${OBJECTDIR}/_ext/1853423697/e_remote_control.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1853423697/e_remote_control.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_remote_control.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1625310744/e_ad_conv.o: ../../ircom/e_ad_conv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1625310744" 
	@${RM} ${OBJECTDIR}/_ext/1625310744/e_ad_conv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625310744/e_ad_conv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ircom/e_ad_conv.c  -o ${OBJECTDIR}/_ext/1625310744/e_ad_conv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1625310744/e_ad_conv.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625310744/e_ad_conv.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1625310744/ircom.o: ../../ircom/ircom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1625310744" 
	@${RM} ${OBJECTDIR}/_ext/1625310744/ircom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625310744/ircom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ircom/ircom.c  -o ${OBJECTDIR}/_ext/1625310744/ircom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1625310744/ircom.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625310744/ircom.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1625310744/ircomMessages.o: ../../ircom/ircomMessages.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1625310744" 
	@${RM} ${OBJECTDIR}/_ext/1625310744/ircomMessages.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625310744/ircomMessages.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ircom/ircomMessages.c  -o ${OBJECTDIR}/_ext/1625310744/ircomMessages.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1625310744/ircomMessages.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625310744/ircomMessages.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1625310744/ircomReceive.o: ../../ircom/ircomReceive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1625310744" 
	@${RM} ${OBJECTDIR}/_ext/1625310744/ircomReceive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625310744/ircomReceive.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ircom/ircomReceive.c  -o ${OBJECTDIR}/_ext/1625310744/ircomReceive.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1625310744/ircomReceive.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625310744/ircomReceive.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1625310744/ircomSend.o: ../../ircom/ircomSend.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1625310744" 
	@${RM} ${OBJECTDIR}/_ext/1625310744/ircomSend.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625310744/ircomSend.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ircom/ircomSend.c  -o ${OBJECTDIR}/_ext/1625310744/ircomSend.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1625310744/ircomSend.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625310744/ircomSend.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1625310744/ircomTools.o: ../../ircom/ircomTools.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1625310744" 
	@${RM} ${OBJECTDIR}/_ext/1625310744/ircomTools.o.d 
	@${RM} ${OBJECTDIR}/_ext/1625310744/ircomTools.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../ircom/ircomTools.c  -o ${OBJECTDIR}/_ext/1625310744/ircomTools.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1625310744/ircomTools.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1625310744/ircomTools.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../main.c  -o ${OBJECTDIR}/_ext/1472/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mlarge-code -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1853423697/e_init_uart1.o: ../../epfl/e_init_uart1.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_init_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_init_uart1.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../epfl/e_init_uart1.s  -o ${OBJECTDIR}/_ext/1853423697/e_init_uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/1853423697/e_init_uart1.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_init_uart1.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1853423697/e_init_uart2.o: ../../epfl/e_init_uart2.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_init_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_init_uart2.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../epfl/e_init_uart2.s  -o ${OBJECTDIR}/_ext/1853423697/e_init_uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/1853423697/e_init_uart2.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_init_uart2.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1853423697/e_uart1_rx_char.o: ../../epfl/e_uart1_rx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_uart1_rx_char.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_uart1_rx_char.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../epfl/e_uart1_rx_char.s  -o ${OBJECTDIR}/_ext/1853423697/e_uart1_rx_char.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/1853423697/e_uart1_rx_char.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_uart1_rx_char.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1853423697/e_uart1_tx_char.o: ../../epfl/e_uart1_tx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_uart1_tx_char.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_uart1_tx_char.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../epfl/e_uart1_tx_char.s  -o ${OBJECTDIR}/_ext/1853423697/e_uart1_tx_char.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/1853423697/e_uart1_tx_char.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_uart1_tx_char.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1853423697/e_uart2_rx_char.o: ../../epfl/e_uart2_rx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_uart2_rx_char.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_uart2_rx_char.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../epfl/e_uart2_rx_char.s  -o ${OBJECTDIR}/_ext/1853423697/e_uart2_rx_char.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/1853423697/e_uart2_rx_char.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_uart2_rx_char.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1853423697/e_uart2_tx_char.o: ../../epfl/e_uart2_tx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_uart2_tx_char.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_uart2_tx_char.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../epfl/e_uart2_tx_char.s  -o ${OBJECTDIR}/_ext/1853423697/e_uart2_tx_char.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/1853423697/e_uart2_tx_char.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_uart2_tx_char.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1853423697/e_init_uart1.o: ../../epfl/e_init_uart1.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_init_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_init_uart1.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../epfl/e_init_uart1.s  -o ${OBJECTDIR}/_ext/1853423697/e_init_uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/1853423697/e_init_uart1.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_init_uart1.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1853423697/e_init_uart2.o: ../../epfl/e_init_uart2.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_init_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_init_uart2.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../epfl/e_init_uart2.s  -o ${OBJECTDIR}/_ext/1853423697/e_init_uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/1853423697/e_init_uart2.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_init_uart2.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1853423697/e_uart1_rx_char.o: ../../epfl/e_uart1_rx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_uart1_rx_char.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_uart1_rx_char.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../epfl/e_uart1_rx_char.s  -o ${OBJECTDIR}/_ext/1853423697/e_uart1_rx_char.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/1853423697/e_uart1_rx_char.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_uart1_rx_char.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1853423697/e_uart1_tx_char.o: ../../epfl/e_uart1_tx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_uart1_tx_char.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_uart1_tx_char.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../epfl/e_uart1_tx_char.s  -o ${OBJECTDIR}/_ext/1853423697/e_uart1_tx_char.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/1853423697/e_uart1_tx_char.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_uart1_tx_char.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1853423697/e_uart2_rx_char.o: ../../epfl/e_uart2_rx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_uart2_rx_char.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_uart2_rx_char.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../epfl/e_uart2_rx_char.s  -o ${OBJECTDIR}/_ext/1853423697/e_uart2_rx_char.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/1853423697/e_uart2_rx_char.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_uart2_rx_char.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1853423697/e_uart2_tx_char.o: ../../epfl/e_uart2_tx_char.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1853423697" 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_uart2_tx_char.o.d 
	@${RM} ${OBJECTDIR}/_ext/1853423697/e_uart2_tx_char.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../epfl/e_uart2_tx_char.s  -o ${OBJECTDIR}/_ext/1853423697/e_uart2_tx_char.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/1853423697/e_uart2_tx_char.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1853423697/e_uart2_tx_char.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.test.X.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/test.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.test.X.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}/xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/test.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

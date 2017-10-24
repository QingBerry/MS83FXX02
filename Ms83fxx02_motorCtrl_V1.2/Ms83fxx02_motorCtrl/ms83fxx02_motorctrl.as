opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F685
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_EEPROM_Init
	FNCALL	_main,_EEPROM_GetFlag
	FNCALL	_main,_EEPROM_RestoreDeviceModeData
	FNCALL	_main,_EEPROM_RestoreMotorData
	FNCALL	_main,_Board_Init
	FNCALL	_main,_Driver_Init
	FNCALL	_main,_Motor_GetStatus
	FNCALL	_main,_Motor_HandleStatusChangeEvt
	FNCALL	_main,_ChargeDetect_GetStatus
	FNCALL	_main,_ChargeTimer_ResetCount
	FNCALL	_main,_SetDeviceMode
	FNCALL	_main,_Battery_Detect
	FNCALL	_main,_LED_Init
	FNCALL	_main,_KEY_DeInit
	FNCALL	_main,_Motor_Stop
	FNCALL	_main,_Motor_SetStatus
	FNCALL	_main,_MotorOperationTimer_Stop
	FNCALL	_main,_ChargeCtrl_Output
	FNCALL	_main,_LED_VoltageChargeOutput
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_ChargeTimer_Cmd
	FNCALL	_main,_ChargeTimer_INTConfig
	FNCALL	_main,_charge_control
	FNCALL	_main,_GetDeviceMode
	FNCALL	_Motor_HandleStatusChangeEvt,_Motor_CheckRunLimit
	FNCALL	_Motor_HandleStatusChangeEvt,_KEY_GetReleaseStatus
	FNCALL	_Motor_HandleStatusChangeEvt,_Motor_SetStatus
	FNCALL	_Motor_HandleStatusChangeEvt,_Motor_Start
	FNCALL	_Motor_HandleStatusChangeEvt,_MotorOperationTimer_Stop
	FNCALL	_Motor_HandleStatusChangeEvt,_MotorOperationTimer_Init
	FNCALL	_Motor_HandleStatusChangeEvt,_SwitchModeTimer_GetINTStatus
	FNCALL	_Motor_HandleStatusChangeEvt,_Motor_Stop
	FNCALL	_Motor_HandleStatusChangeEvt,_SwitchModeTimer_Cmd
	FNCALL	_Motor_HandleStatusChangeEvt,_SwitchModeTimer_INTConfig
	FNCALL	_Motor_HandleStatusChangeEvt,_LEDTimer_GetOperationStatus
	FNCALL	_Motor_HandleStatusChangeEvt,_LEDTimer_Cmd
	FNCALL	_Motor_HandleStatusChangeEvt,_LEDTimer_INTConfig
	FNCALL	_Motor_HandleStatusChangeEvt,_LEDTimer_GetRunLimitINTStatus
	FNCALL	_Motor_HandleStatusChangeEvt,_LED_DisplayRunLimit
	FNCALL	_Motor_HandleStatusChangeEvt,_KEY_GetPressStatus
	FNCALL	_Motor_HandleStatusChangeEvt,_LED_CloseMotorStatus
	FNCALL	_charge_control,_ChargeTimer_GetCount
	FNCALL	_charge_control,_Battery_Detect
	FNCALL	_charge_control,_LED_VoltageChargeOutput
	FNCALL	_charge_control,_GPIO_WriteBit
	FNCALL	_Driver_Init,_LED_Init
	FNCALL	_Driver_Init,_KEY_Init
	FNCALL	_Driver_Init,_Charge_Init
	FNCALL	_Driver_Init,_ADC_Init
	FNCALL	_Driver_Init,_EEPROM_Init
	FNCALL	_Motor_Start,_LED_DisplayMotorStatus
	FNCALL	_Motor_Start,_Motor_Init
	FNCALL	_Motor_Start,_SwitchModeTimer_Cmd
	FNCALL	_Motor_Start,_SwitchModeTimer_INTConfig
	FNCALL	_Motor_Stop,_LED_CloseMotorStatus
	FNCALL	_Battery_Detect,_ADC_ReadData
	FNCALL	_Battery_Detect,___lwdiv
	FNCALL	_Battery_Detect,_GetDeviceMode
	FNCALL	_Battery_Detect,_EEPROM_SetFlag
	FNCALL	_Battery_Detect,_EEPROM_StoreModeData
	FNCALL	_Battery_Detect,_EEPROM_StoreMotorData
	FNCALL	_Battery_Detect,_LED_UnderVoltageOutput
	FNCALL	_Battery_Detect,_LEDTimer_GetOperationStatus
	FNCALL	_Battery_Detect,_LEDTimer_Cmd
	FNCALL	_Battery_Detect,_LEDTimer_INTConfig
	FNCALL	_Battery_Detect,_LEDTimer_GetINTStatus
	FNCALL	_Battery_Detect,_GPIO_ReadInputDataBit
	FNCALL	_Battery_Detect,_SetDeviceMode
	FNCALL	_Battery_Detect,_GPIO_WriteBit
	FNCALL	_Charge_Init,_ChargeDetect_Init
	FNCALL	_Charge_Init,_ChargeCtrl_Init
	FNCALL	_EEPROM_StoreModeData,_EEPROM_Write
	FNCALL	_EEPROM_SetFlag,_EEPROM_Write
	FNCALL	_ADC_ReadData,_delay_us
	FNCALL	_EEPROM_StoreMotorData,_EEPROM_Write
	FNCALL	_LED_UnderVoltageOutput,_GPIO_WriteBit
	FNCALL	_LED_CloseMotorStatus,_GPIO_WriteBit
	FNCALL	_LED_DisplayRunLimit,_GPIO_ReadInputDataBit
	FNCALL	_LED_DisplayRunLimit,_GPIO_WriteBit
	FNCALL	_LED_DisplayMotorStatus,_GPIO_WriteBit
	FNCALL	_ChargeCtrl_Init,_GPIO_Init
	FNCALL	_ChargeCtrl_Init,_GPIO_WriteBit
	FNCALL	_ChargeDetect_Init,_GPIO_Init
	FNCALL	_ChargeDetect_Init,_GPIO_ReadInputDataBit
	FNCALL	_ChargeDetect_Init,_GPIO_INTConfig
	FNCALL	_ChargeCtrl_Output,_GPIO_WriteBit
	FNCALL	_MotorOperationTimer_Stop,_Motor_CheckRunLimit
	FNCALL	_KEY_DeInit,_GPIO_Init
	FNCALL	_ChargeDetect_GetStatus,_GPIO_ReadInputDataBit
	FNCALL	_EEPROM_RestoreMotorData,_EEPROM_Read
	FNCALL	_EEPROM_RestoreDeviceModeData,_EEPROM_Read
	FNCALL	_EEPROM_GetFlag,_EEPROM_Read
	FNCALL	_LED_VoltageChargeOutput,_GPIO_WriteBit
	FNCALL	_EEPROM_Init,_EEPROM_Write
	FNCALL	_KEY_Init,_GPIO_Init
	FNCALL	_KEY_Init,_GPIO_INTConfig
	FNCALL	_LED_Init,_GPIO_Init
	FNCALL	_LED_Init,_GPIO_WriteBit
	FNROOT	_main
	FNCALL	_ISR,_KEY_IntrHandler
	FNCALL	_ISR,_DebounceTimer_IntrHandler
	FNCALL	_ISR,i1_GetDeviceMode
	FNCALL	_ISR,_SwitchModeTimer_IntrHandler
	FNCALL	_ISR,_ChargeTimer_IntrHandler
	FNCALL	_ISR,_MotorOperTimer_IntrHandler
	FNCALL	_ISR,_LEDTimer_IntrHandler
	FNCALL	_ISR,_ChargeDetect_IntrHandler
	FNCALL	_MotorOperTimer_IntrHandler,i1_Motor_CheckRunLimit
	FNCALL	_MotorOperTimer_IntrHandler,___lbmod
	FNCALL	_MotorOperTimer_IntrHandler,i1_MotorOperationTimer_Init
	FNCALL	_MotorOperTimer_IntrHandler,i1_Motor_Stop
	FNCALL	_MotorOperTimer_IntrHandler,i1_MotorOperationTimer_Stop
	FNCALL	_MotorOperTimer_IntrHandler,i1_Motor_SetStatus
	FNCALL	_MotorOperTimer_IntrHandler,i1_Motor_Init
	FNCALL	i1_Motor_Stop,i1_LED_CloseMotorStatus
	FNCALL	i1_MotorOperationTimer_Stop,i1_Motor_CheckRunLimit
	FNCALL	i1_LED_CloseMotorStatus,i1_GPIO_WriteBit
	FNCALL	_ChargeDetect_IntrHandler,i1_GPIO_ReadInputDataBit
	FNCALL	_DebounceTimer_IntrHandler,i1_GPIO_ReadInputDataBit
	FNCALL	_KEY_IntrHandler,_TIM1_Init
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_motor_timing_running_flag
	global	_key_status
	global	_motor_status
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"ms83fxx02_motor.c"
	line	52

;initializer for _motor_timing_running_flag
	retlw	01h
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	file	"MS83FXX02_KEY.C"
	line	22

;initializer for _key_status
	retlw	01h
	file	"ms83fxx02_motor.c"
	line	43

;initializer for _motor_status
	retlw	01h
	global	_battery_value
	global	_charge_time_out
	global	_motor_oper_record
	global	_battery_sample_count
	global	_charge_detect_count
	global	_device_mode
	global	_key_press_flag
	global	_key_press_time_count
	global	_led_timer_int_status
	global	_run_limit_int_status
	global	_switch_mode_time_out
	global	_key_press
	global	_key_release
	global	_motor_intr_count
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_CCP1CON
_CCP1CON	set	21
	global	_CCPR1L
_CCPR1L	set	19
	global	_CMCON0
_CMCON0	set	25
	global	_INTCON
_INTCON	set	11
	global	_MSCKCON
_MSCKCON	set	27
	global	_PIR1
_PIR1	set	12
	global	_PIR2
_PIR2	set	13
	global	_PORTA
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_T1CON
_T1CON	set	16
	global	_T2CON
_T2CON	set	18
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_TMR2
_TMR2	set	17
	global	_WDTCON
_WDTCON	set	24
	global	_ADON
_ADON	set	248
	global	_GIE
_GIE	set	95
	global	_GO_DONE
_GO_DONE	set	249
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
	global	_PAIE
_PAIE	set	91
	global	_PAIF
_PAIF	set	88
	global	_PC4
_PC4	set	60
	global	_PEIE
_PEIE	set	94
	global	_T2CKSRC
_T2CKSRC	set	221
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_TMR2IF
_TMR2IF	set	97
	global	_TMR2ON
_TMR2ON	set	146
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_ANSEL
_ANSEL	set	145
	global	_EEADR
_EEADR	set	155
	global	_EECON1
_EECON1	set	156
	global	_EEDAT
_EEDAT	set	154
	global	_IOCA
_IOCA	set	150
	global	_OSCCON
_OSCCON	set	143
	global	_PCON
_PCON	set	142
	global	_PIE1
_PIE1	set	140
	global	_PIE2
_PIE2	set	141
	global	_PR2
_PR2	set	146
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_WPD
_WPD	set	137
	global	_WPUA
_WPUA	set	149
	global	_ANSEL5
_ANSEL5	set	1165
	global	_INTEDG
_INTEDG	set	1038
	global	_RD
_RD	set	1248
	global	_TMR1IE
_TMR1IE	set	1120
	global	_TRISC4
_TRISC4	set	1084
	global	_WR
_WR	set	1256
	global	_WREN1
_WREN1	set	1250
	global	_WREN2
_WREN2	set	1252
	global	_WREN3
_WREN3	set	1253
	global	_PR3L
_PR3L	set	270
	global	_PR4L
_PR4L	set	276
	global	_PR5L
_PR5L	set	282
	global	_PWM3CR0
_PWM3CR0	set	271
	global	_PWM3CR1
_PWM3CR1	set	272
	global	_PWM4CR0
_PWM4CR0	set	277
	global	_PWM4CR1
_PWM4CR1	set	278
	global	_PWM5CR0
_PWM5CR0	set	283
	global	_PWM5CR1
_PWM5CR1	set	284
	global	_T3CKDIV
_T3CKDIV	set	273
	global	_T4CKDIV
_T4CKDIV	set	279
	global	_T5CKDIV
_T5CKDIV	set	285
	global	_TMR3H
_TMR3H	set	269
	global	_TMR3L
_TMR3L	set	268
	global	_TMR4H
_TMR4H	set	275
	global	_TMR4L
_TMR4L	set	274
	global	_TMR5H
_TMR5H	set	281
	global	_TMR5L
_TMR5L	set	280
	global	_TMR3IE
_TMR3IE	set	2177
	global	_TMR3IF
_TMR3IF	set	2176
	global	_TMR3ON
_TMR3ON	set	2178
	global	_TMR4IE
_TMR4IE	set	2225
	global	_TMR4IF
_TMR4IF	set	2224
	global	_TMR4ON
_TMR4ON	set	2226
	global	_TMR5IE
_TMR5IE	set	2273
	global	_TMR5IF
_TMR5IF	set	2272
	global	_TMR5ON
_TMR5ON	set	2274
	file	"ms83fxx02_motorctrl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_key_press:
       ds      1

_key_release:
       ds      1

_motor_intr_count:
       ds      1

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"MS83FXX02_KEY.C"
	line	22
_key_status:
       ds      1

psect	dataCOMMON
	file	"ms83fxx02_motor.c"
	line	43
_motor_status:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_battery_value:
       ds      10

_charge_time_out:
       ds      2

_motor_oper_record:
       ds      2

_battery_sample_count:
       ds      1

_charge_detect_count:
       ds      1

_device_mode:
       ds      1

_key_press_flag:
       ds      1

_key_press_time_count:
       ds      1

_led_timer_int_status:
       ds      1

_run_limit_int_status:
       ds      1

_switch_mode_time_out:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"ms83fxx02_motor.c"
	line	52
_motor_timing_running_flag:
       ds      1

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+016h)
	fcall	clear_ram
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_LED_Init
?_LED_Init:	; 0 bytes @ 0x0
	global	?_KEY_Init
?_KEY_Init:	; 0 bytes @ 0x0
	global	?_Charge_Init
?_Charge_Init:	; 0 bytes @ 0x0
	global	?_ADC_Init
?_ADC_Init:	; 0 bytes @ 0x0
	global	?_EEPROM_Init
?_EEPROM_Init:	; 0 bytes @ 0x0
	global	?_Battery_Detect
?_Battery_Detect:	; 0 bytes @ 0x0
	global	?_LED_VoltageChargeOutput
?_LED_VoltageChargeOutput:	; 0 bytes @ 0x0
	global	?_EEPROM_RestoreDeviceModeData
?_EEPROM_RestoreDeviceModeData:	; 0 bytes @ 0x0
	global	?_EEPROM_RestoreMotorData
?_EEPROM_RestoreMotorData:	; 0 bytes @ 0x0
	global	?_Motor_HandleStatusChangeEvt
?_Motor_HandleStatusChangeEvt:	; 0 bytes @ 0x0
	global	?_ChargeTimer_ResetCount
?_ChargeTimer_ResetCount:	; 0 bytes @ 0x0
	global	?_SetDeviceMode
?_SetDeviceMode:	; 0 bytes @ 0x0
	global	?_KEY_DeInit
?_KEY_DeInit:	; 0 bytes @ 0x0
	global	?_Motor_Stop
?_Motor_Stop:	; 0 bytes @ 0x0
	global	?_Motor_SetStatus
?_Motor_SetStatus:	; 0 bytes @ 0x0
	global	?_MotorOperationTimer_Stop
?_MotorOperationTimer_Stop:	; 0 bytes @ 0x0
	global	?_ChargeCtrl_Output
?_ChargeCtrl_Output:	; 0 bytes @ 0x0
	global	?_ChargeTimer_Cmd
?_ChargeTimer_Cmd:	; 0 bytes @ 0x0
	global	?_ChargeTimer_INTConfig
?_ChargeTimer_INTConfig:	; 0 bytes @ 0x0
	global	?_KEY_IntrHandler
?_KEY_IntrHandler:	; 0 bytes @ 0x0
	global	??_KEY_IntrHandler
??_KEY_IntrHandler:	; 0 bytes @ 0x0
	global	?_DebounceTimer_IntrHandler
?_DebounceTimer_IntrHandler:	; 0 bytes @ 0x0
	global	?_SwitchModeTimer_IntrHandler
?_SwitchModeTimer_IntrHandler:	; 0 bytes @ 0x0
	global	??_SwitchModeTimer_IntrHandler
??_SwitchModeTimer_IntrHandler:	; 0 bytes @ 0x0
	global	?_ChargeTimer_IntrHandler
?_ChargeTimer_IntrHandler:	; 0 bytes @ 0x0
	global	??_ChargeTimer_IntrHandler
??_ChargeTimer_IntrHandler:	; 0 bytes @ 0x0
	global	?_MotorOperTimer_IntrHandler
?_MotorOperTimer_IntrHandler:	; 0 bytes @ 0x0
	global	?_LEDTimer_IntrHandler
?_LEDTimer_IntrHandler:	; 0 bytes @ 0x0
	global	??_LEDTimer_IntrHandler
??_LEDTimer_IntrHandler:	; 0 bytes @ 0x0
	global	?_ChargeDetect_IntrHandler
?_ChargeDetect_IntrHandler:	; 0 bytes @ 0x0
	global	?_SwitchModeTimer_Cmd
?_SwitchModeTimer_Cmd:	; 0 bytes @ 0x0
	global	?_SwitchModeTimer_INTConfig
?_SwitchModeTimer_INTConfig:	; 0 bytes @ 0x0
	global	?_Board_Init
?_Board_Init:	; 0 bytes @ 0x0
	global	?_Driver_Init
?_Driver_Init:	; 0 bytes @ 0x0
	global	?_charge_control
?_charge_control:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	?_ChargeDetect_Init
?_ChargeDetect_Init:	; 0 bytes @ 0x0
	global	?_ChargeCtrl_Init
?_ChargeCtrl_Init:	; 0 bytes @ 0x0
	global	?_TIM1_Init
?_TIM1_Init:	; 0 bytes @ 0x0
	global	??_TIM1_Init
??_TIM1_Init:	; 0 bytes @ 0x0
	global	?_LED_DisplayRunLimit
?_LED_DisplayRunLimit:	; 0 bytes @ 0x0
	global	?_LED_CloseMotorStatus
?_LED_CloseMotorStatus:	; 0 bytes @ 0x0
	global	?_LED_UnderVoltageOutput
?_LED_UnderVoltageOutput:	; 0 bytes @ 0x0
	global	?_LEDTimer_Cmd
?_LEDTimer_Cmd:	; 0 bytes @ 0x0
	global	?_LEDTimer_INTConfig
?_LEDTimer_INTConfig:	; 0 bytes @ 0x0
	global	?_Motor_Init
?_Motor_Init:	; 0 bytes @ 0x0
	global	?_Motor_Start
?_Motor_Start:	; 0 bytes @ 0x0
	global	?_MotorOperationTimer_Init
?_MotorOperationTimer_Init:	; 0 bytes @ 0x0
	global	?_EEPROM_StoreMotorData
?_EEPROM_StoreMotorData:	; 0 bytes @ 0x0
	global	?_EEPROM_SetFlag
?_EEPROM_SetFlag:	; 0 bytes @ 0x0
	global	?_EEPROM_StoreModeData
?_EEPROM_StoreModeData:	; 0 bytes @ 0x0
	global	?i1_GPIO_WriteBit
?i1_GPIO_WriteBit:	; 0 bytes @ 0x0
	global	?i1_LED_CloseMotorStatus
?i1_LED_CloseMotorStatus:	; 0 bytes @ 0x0
	global	?i1_Motor_Init
?i1_Motor_Init:	; 0 bytes @ 0x0
	global	??i1_Motor_Init
??i1_Motor_Init:	; 0 bytes @ 0x0
	global	?i1_Motor_SetStatus
?i1_Motor_SetStatus:	; 0 bytes @ 0x0
	global	??i1_Motor_SetStatus
??i1_Motor_SetStatus:	; 0 bytes @ 0x0
	global	?i1_Motor_Stop
?i1_Motor_Stop:	; 0 bytes @ 0x0
	global	??i1_Motor_CheckRunLimit
??i1_Motor_CheckRunLimit:	; 0 bytes @ 0x0
	global	?i1_MotorOperationTimer_Init
?i1_MotorOperationTimer_Init:	; 0 bytes @ 0x0
	global	??i1_MotorOperationTimer_Init
??i1_MotorOperationTimer_Init:	; 0 bytes @ 0x0
	global	?i1_MotorOperationTimer_Stop
?i1_MotorOperationTimer_Stop:	; 0 bytes @ 0x0
	global	??i1_MotorOperationTimer_Stop
??i1_MotorOperationTimer_Stop:	; 0 bytes @ 0x0
	global	??i1_GetDeviceMode
??i1_GetDeviceMode:	; 0 bytes @ 0x0
	global	?_EEPROM_GetFlag
?_EEPROM_GetFlag:	; 1 bytes @ 0x0
	global	?_Motor_GetStatus
?_Motor_GetStatus:	; 1 bytes @ 0x0
	global	?_ChargeDetect_GetStatus
?_ChargeDetect_GetStatus:	; 1 bytes @ 0x0
	global	?_GetDeviceMode
?_GetDeviceMode:	; 1 bytes @ 0x0
	global	?_SwitchModeTimer_GetINTStatus
?_SwitchModeTimer_GetINTStatus:	; 1 bytes @ 0x0
	global	?_EEPROM_Read
?_EEPROM_Read:	; 1 bytes @ 0x0
	global	?_KEY_GetReleaseStatus
?_KEY_GetReleaseStatus:	; 1 bytes @ 0x0
	global	?_KEY_GetPressStatus
?_KEY_GetPressStatus:	; 1 bytes @ 0x0
	global	?_LEDTimer_GetOperationStatus
?_LEDTimer_GetOperationStatus:	; 1 bytes @ 0x0
	global	?_LEDTimer_GetINTStatus
?_LEDTimer_GetINTStatus:	; 1 bytes @ 0x0
	global	?_LEDTimer_GetRunLimitINTStatus
?_LEDTimer_GetRunLimitINTStatus:	; 1 bytes @ 0x0
	global	?_Motor_CheckRunLimit
?_Motor_CheckRunLimit:	; 1 bytes @ 0x0
	global	?___lbmod
?___lbmod:	; 1 bytes @ 0x0
	global	?i1_GPIO_ReadInputDataBit
?i1_GPIO_ReadInputDataBit:	; 1 bytes @ 0x0
	global	?i1_Motor_CheckRunLimit
?i1_Motor_CheckRunLimit:	; 1 bytes @ 0x0
	global	?i1_GetDeviceMode
?i1_GetDeviceMode:	; 1 bytes @ 0x0
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x0
	global	i1GPIO_WriteBit@GPIO_Pin
i1GPIO_WriteBit@GPIO_Pin:	; 1 bytes @ 0x0
	global	i1GPIO_ReadInputDataBit@GPIO_Pin
i1GPIO_ReadInputDataBit@GPIO_Pin:	; 1 bytes @ 0x0
	global	i1Motor_Init@status
i1Motor_Init@status:	; 1 bytes @ 0x0
	global	i1Motor_SetStatus@status
i1Motor_SetStatus@status:	; 1 bytes @ 0x0
	global	i1MotorOperationTimer_Init@time
i1MotorOperationTimer_Init@time:	; 1 bytes @ 0x0
	ds	1
	global	??___lbmod
??___lbmod:	; 0 bytes @ 0x1
	global	??i1_GPIO_ReadInputDataBit
??i1_GPIO_ReadInputDataBit:	; 0 bytes @ 0x1
	global	i1GPIO_WriteBit@BitVal
i1GPIO_WriteBit@BitVal:	; 1 bytes @ 0x1
	global	i1GPIO_ReadInputDataBit@bitstatus
i1GPIO_ReadInputDataBit@bitstatus:	; 1 bytes @ 0x1
	ds	1
	global	??i1_GPIO_WriteBit
??i1_GPIO_WriteBit:	; 0 bytes @ 0x2
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x2
	global	i1GPIO_WriteBit@GPIOx
i1GPIO_WriteBit@GPIOx:	; 1 bytes @ 0x2
	global	i1GPIO_ReadInputDataBit@GPIOx
i1GPIO_ReadInputDataBit@GPIOx:	; 1 bytes @ 0x2
	ds	1
	global	??_DebounceTimer_IntrHandler
??_DebounceTimer_IntrHandler:	; 0 bytes @ 0x3
	global	??_ChargeDetect_IntrHandler
??_ChargeDetect_IntrHandler:	; 0 bytes @ 0x3
	global	??i1_LED_CloseMotorStatus
??i1_LED_CloseMotorStatus:	; 0 bytes @ 0x3
	global	??i1_Motor_Stop
??i1_Motor_Stop:	; 0 bytes @ 0x3
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x3
	ds	1
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x4
	ds	1
	global	??_MotorOperTimer_IntrHandler
??_MotorOperTimer_IntrHandler:	; 0 bytes @ 0x5
	global	??_ISR
??_ISR:	; 0 bytes @ 0x5
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_ADC_Init
??_ADC_Init:	; 0 bytes @ 0x0
	global	??_Motor_GetStatus
??_Motor_GetStatus:	; 0 bytes @ 0x0
	global	??_ChargeTimer_ResetCount
??_ChargeTimer_ResetCount:	; 0 bytes @ 0x0
	global	??_SetDeviceMode
??_SetDeviceMode:	; 0 bytes @ 0x0
	global	??_Motor_SetStatus
??_Motor_SetStatus:	; 0 bytes @ 0x0
	global	??_MotorOperationTimer_Stop
??_MotorOperationTimer_Stop:	; 0 bytes @ 0x0
	global	??_ChargeTimer_Cmd
??_ChargeTimer_Cmd:	; 0 bytes @ 0x0
	global	??_ChargeTimer_INTConfig
??_ChargeTimer_INTConfig:	; 0 bytes @ 0x0
	global	??_GetDeviceMode
??_GetDeviceMode:	; 0 bytes @ 0x0
	global	?_GPIO_Init
?_GPIO_Init:	; 0 bytes @ 0x0
	global	?_GPIO_INTConfig
?_GPIO_INTConfig:	; 0 bytes @ 0x0
	global	?_EEPROM_Write
?_EEPROM_Write:	; 0 bytes @ 0x0
	global	??_SwitchModeTimer_Cmd
??_SwitchModeTimer_Cmd:	; 0 bytes @ 0x0
	global	??_SwitchModeTimer_INTConfig
??_SwitchModeTimer_INTConfig:	; 0 bytes @ 0x0
	global	??_SwitchModeTimer_GetINTStatus
??_SwitchModeTimer_GetINTStatus:	; 0 bytes @ 0x0
	global	??_Board_Init
??_Board_Init:	; 0 bytes @ 0x0
	global	??_EEPROM_Read
??_EEPROM_Read:	; 0 bytes @ 0x0
	global	??_KEY_GetReleaseStatus
??_KEY_GetReleaseStatus:	; 0 bytes @ 0x0
	global	??_KEY_GetPressStatus
??_KEY_GetPressStatus:	; 0 bytes @ 0x0
	global	??_LEDTimer_Cmd
??_LEDTimer_Cmd:	; 0 bytes @ 0x0
	global	??_LEDTimer_INTConfig
??_LEDTimer_INTConfig:	; 0 bytes @ 0x0
	global	??_LEDTimer_GetOperationStatus
??_LEDTimer_GetOperationStatus:	; 0 bytes @ 0x0
	global	??_LEDTimer_GetINTStatus
??_LEDTimer_GetINTStatus:	; 0 bytes @ 0x0
	global	??_LEDTimer_GetRunLimitINTStatus
??_LEDTimer_GetRunLimitINTStatus:	; 0 bytes @ 0x0
	global	??_Motor_Init
??_Motor_Init:	; 0 bytes @ 0x0
	global	??_Motor_CheckRunLimit
??_Motor_CheckRunLimit:	; 0 bytes @ 0x0
	global	??_MotorOperationTimer_Init
??_MotorOperationTimer_Init:	; 0 bytes @ 0x0
	global	?_delay_us
?_delay_us:	; 0 bytes @ 0x0
	global	?_GPIO_ReadInputDataBit
?_GPIO_ReadInputDataBit:	; 1 bytes @ 0x0
	global	?_ChargeTimer_GetCount
?_ChargeTimer_GetCount:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	EEPROM_Read@addr
EEPROM_Read@addr:	; 1 bytes @ 0x0
	global	EEPROM_Write@data
EEPROM_Write@data:	; 1 bytes @ 0x0
	global	GPIO_Init@GPIO_InitStruct
GPIO_Init@GPIO_InitStruct:	; 1 bytes @ 0x0
	global	GPIO_ReadInputDataBit@GPIO_Pin
GPIO_ReadInputDataBit@GPIO_Pin:	; 1 bytes @ 0x0
	global	GPIO_INTConfig@GPIO_Pin
GPIO_INTConfig@GPIO_Pin:	; 1 bytes @ 0x0
	global	LEDTimer_Cmd@NewState
LEDTimer_Cmd@NewState:	; 1 bytes @ 0x0
	global	LEDTimer_INTConfig@NewState
LEDTimer_INTConfig@NewState:	; 1 bytes @ 0x0
	global	Motor_Init@status
Motor_Init@status:	; 1 bytes @ 0x0
	global	Motor_SetStatus@status
Motor_SetStatus@status:	; 1 bytes @ 0x0
	global	MotorOperationTimer_Init@time
MotorOperationTimer_Init@time:	; 1 bytes @ 0x0
	global	SetDeviceMode@mode
SetDeviceMode@mode:	; 1 bytes @ 0x0
	global	SwitchModeTimer_Cmd@NewState
SwitchModeTimer_Cmd@NewState:	; 1 bytes @ 0x0
	global	SwitchModeTimer_INTConfig@NewState
SwitchModeTimer_INTConfig@NewState:	; 1 bytes @ 0x0
	global	ChargeTimer_Cmd@NewState
ChargeTimer_Cmd@NewState:	; 1 bytes @ 0x0
	global	ChargeTimer_INTConfig@NewState
ChargeTimer_INTConfig@NewState:	; 1 bytes @ 0x0
	global	delay_us@delay_us
delay_us@delay_us:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??_GPIO_Init
??_GPIO_Init:	; 0 bytes @ 0x1
	global	??_GPIO_ReadInputDataBit
??_GPIO_ReadInputDataBit:	; 0 bytes @ 0x1
	global	??_EEPROM_Write
??_EEPROM_Write:	; 0 bytes @ 0x1
	global	EEPROM_Read@data
EEPROM_Read@data:	; 1 bytes @ 0x1
	global	EEPROM_Write@addr
EEPROM_Write@addr:	; 1 bytes @ 0x1
	global	GPIO_Init@GPIOx
GPIO_Init@GPIOx:	; 1 bytes @ 0x1
	global	GPIO_ReadInputDataBit@bitstatus
GPIO_ReadInputDataBit@bitstatus:	; 1 bytes @ 0x1
	global	GPIO_INTConfig@NewState
GPIO_INTConfig@NewState:	; 1 bytes @ 0x1
	global	ADC_Init@channel
ADC_Init@channel:	; 1 bytes @ 0x1
	ds	1
	global	??_EEPROM_Init
??_EEPROM_Init:	; 0 bytes @ 0x2
	global	??_ChargeTimer_GetCount
??_ChargeTimer_GetCount:	; 0 bytes @ 0x2
	global	??_EEPROM_GetFlag
??_EEPROM_GetFlag:	; 0 bytes @ 0x2
	global	??_EEPROM_RestoreDeviceModeData
??_EEPROM_RestoreDeviceModeData:	; 0 bytes @ 0x2
	global	??_EEPROM_RestoreMotorData
??_EEPROM_RestoreMotorData:	; 0 bytes @ 0x2
	global	??_KEY_DeInit
??_KEY_DeInit:	; 0 bytes @ 0x2
	global	??_GPIO_INTConfig
??_GPIO_INTConfig:	; 0 bytes @ 0x2
	global	??_EEPROM_StoreMotorData
??_EEPROM_StoreMotorData:	; 0 bytes @ 0x2
	global	??_delay_us
??_delay_us:	; 0 bytes @ 0x2
	global	??_EEPROM_SetFlag
??_EEPROM_SetFlag:	; 0 bytes @ 0x2
	global	??_EEPROM_StoreModeData
??_EEPROM_StoreModeData:	; 0 bytes @ 0x2
	global	GPIO_ReadInputDataBit@GPIOx
GPIO_ReadInputDataBit@GPIOx:	; 1 bytes @ 0x2
	global	GPIO_INTConfig@GPIOx
GPIO_INTConfig@GPIOx:	; 1 bytes @ 0x2
	global	KEY_DeInit@GPIO_InitStruct
KEY_DeInit@GPIO_InitStruct:	; 2 bytes @ 0x2
	global	delay_us@i
delay_us@i:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_KEY_Init
??_KEY_Init:	; 0 bytes @ 0x3
	global	?_GPIO_WriteBit
?_GPIO_WriteBit:	; 0 bytes @ 0x3
	global	??_ChargeDetect_GetStatus
??_ChargeDetect_GetStatus:	; 0 bytes @ 0x3
	global	??_ChargeDetect_Init
??_ChargeDetect_Init:	; 0 bytes @ 0x3
	global	GPIO_WriteBit@GPIO_Pin
GPIO_WriteBit@GPIO_Pin:	; 1 bytes @ 0x3
	global	ChargeDetect_Init@GPIO_InitStruct
ChargeDetect_Init@GPIO_InitStruct:	; 2 bytes @ 0x3
	global	ChargeDetect_GetStatus@i
ChargeDetect_GetStatus@i:	; 2 bytes @ 0x3
	global	KEY_Init@GPIO_InitStruct
KEY_Init@GPIO_InitStruct:	; 2 bytes @ 0x3
	ds	1
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	?_ADC_ReadData
?_ADC_ReadData:	; 2 bytes @ 0x4
	global	GPIO_WriteBit@BitVal
GPIO_WriteBit@BitVal:	; 1 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds	1
	global	??_GPIO_WriteBit
??_GPIO_WriteBit:	; 0 bytes @ 0x5
	global	GPIO_WriteBit@GPIOx
GPIO_WriteBit@GPIOx:	; 1 bytes @ 0x5
	ds	1
	global	??_LED_Init
??_LED_Init:	; 0 bytes @ 0x6
	global	??_LED_VoltageChargeOutput
??_LED_VoltageChargeOutput:	; 0 bytes @ 0x6
	global	??_Motor_Stop
??_Motor_Stop:	; 0 bytes @ 0x6
	global	??_ChargeCtrl_Output
??_ChargeCtrl_Output:	; 0 bytes @ 0x6
	global	??_ChargeCtrl_Init
??_ChargeCtrl_Init:	; 0 bytes @ 0x6
	global	?_LED_DisplayMotorStatus
?_LED_DisplayMotorStatus:	; 0 bytes @ 0x6
	global	??_LED_DisplayRunLimit
??_LED_DisplayRunLimit:	; 0 bytes @ 0x6
	global	??_LED_CloseMotorStatus
??_LED_CloseMotorStatus:	; 0 bytes @ 0x6
	global	??_LED_UnderVoltageOutput
??_LED_UnderVoltageOutput:	; 0 bytes @ 0x6
	global	??_ADC_ReadData
??_ADC_ReadData:	; 0 bytes @ 0x6
	global	ChargeCtrl_Output@BitVal
ChargeCtrl_Output@BitVal:	; 1 bytes @ 0x6
	global	LED_DisplayMotorStatus@GPIO_Pin
LED_DisplayMotorStatus@GPIO_Pin:	; 1 bytes @ 0x6
	global	LED_VoltageChargeOutput@BitVal
LED_VoltageChargeOutput@BitVal:	; 1 bytes @ 0x6
	global	LED_UnderVoltageOutput@BitVal
LED_UnderVoltageOutput@BitVal:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	global	ChargeCtrl_Init@GPIO_InitStruct
ChargeCtrl_Init@GPIO_InitStruct:	; 2 bytes @ 0x6
	global	LED_Init@GPIO_InitStruct
LED_Init@GPIO_InitStruct:	; 2 bytes @ 0x6
	ds	1
	global	??_LED_DisplayMotorStatus
??_LED_DisplayMotorStatus:	; 0 bytes @ 0x7
	global	LED_DisplayMotorStatus@GPIOx
LED_DisplayMotorStatus@GPIOx:	; 1 bytes @ 0x7
	global	ADC_ReadData@channel
ADC_ReadData@channel:	; 1 bytes @ 0x7
	ds	1
	global	??_Charge_Init
??_Charge_Init:	; 0 bytes @ 0x8
	global	??_Driver_Init
??_Driver_Init:	; 0 bytes @ 0x8
	global	??_Motor_Start
??_Motor_Start:	; 0 bytes @ 0x8
	global	Motor_Start@status
Motor_Start@status:	; 1 bytes @ 0x8
	global	ADC_ReadData@battery_value
ADC_ReadData@battery_value:	; 2 bytes @ 0x8
	ds	1
	global	??_Motor_HandleStatusChangeEvt
??_Motor_HandleStatusChangeEvt:	; 0 bytes @ 0x9
	global	Motor_HandleStatusChangeEvt@status
Motor_HandleStatusChangeEvt@status:	; 1 bytes @ 0x9
	ds	1
	global	??_Battery_Detect
??_Battery_Detect:	; 0 bytes @ 0xA
	ds	2
	global	Battery_Detect@mode
Battery_Detect@mode:	; 1 bytes @ 0xC
	ds	1
	global	Battery_Detect@i
Battery_Detect@i:	; 1 bytes @ 0xD
	ds	1
	global	Battery_Detect@adc_data
Battery_Detect@adc_data:	; 2 bytes @ 0xE
	ds	2
	global	??_charge_control
??_charge_control:	; 0 bytes @ 0x10
	global	charge_control@charge_count
charge_control@charge_count:	; 2 bytes @ 0x10
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x12
;;Data sizes: Strings 0, constant 0, data 3, bss 25, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      14
;; BANK0           80     18      41
;; BANK1           80      0       0
;; BANK2           80      0       0

;;
;; Pointer list with targets:

;; ?_ChargeTimer_GetCount	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?_ADC_ReadData	unsigned short  size(1) Largest target is 0
;;
;; GPIO_Init@GPIO_InitStruct	PTR struct . size(1) Largest target is 2
;;		 -> LED_Init@GPIO_InitStruct(BANK0[2]), KEY_Init@GPIO_InitStruct(BANK0[2]), KEY_DeInit@GPIO_InitStruct(BANK0[2]), ChargeCtrl_Init@GPIO_InitStruct(BANK0[2]), 
;;		 -> ChargeDetect_Init@GPIO_InitStruct(BANK0[2]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ISR in COMMON
;;
;;   _MotorOperTimer_IntrHandler->___lbmod
;;   i1_LED_CloseMotorStatus->i1_GPIO_WriteBit
;;   _ChargeDetect_IntrHandler->i1_GPIO_ReadInputDataBit
;;   _DebounceTimer_IntrHandler->i1_GPIO_ReadInputDataBit
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_charge_control
;;   _Motor_HandleStatusChangeEvt->_Motor_Start
;;   _charge_control->_Battery_Detect
;;   _Driver_Init->_LED_Init
;;   _Motor_Start->_LED_DisplayMotorStatus
;;   _Battery_Detect->_ADC_ReadData
;;   _Charge_Init->_ChargeCtrl_Init
;;   _EEPROM_StoreModeData->_EEPROM_Write
;;   _EEPROM_SetFlag->_EEPROM_Write
;;   _ADC_ReadData->_delay_us
;;   _EEPROM_StoreMotorData->_EEPROM_Write
;;   _LED_UnderVoltageOutput->_GPIO_WriteBit
;;   _LED_CloseMotorStatus->_GPIO_WriteBit
;;   _LED_DisplayRunLimit->_GPIO_WriteBit
;;   _LED_DisplayMotorStatus->_GPIO_WriteBit
;;   _ChargeCtrl_Init->_GPIO_WriteBit
;;   _ChargeDetect_Init->_GPIO_ReadInputDataBit
;;   _ChargeDetect_Init->_GPIO_INTConfig
;;   _ChargeCtrl_Output->_GPIO_WriteBit
;;   _KEY_DeInit->_GPIO_Init
;;   _ChargeDetect_GetStatus->_GPIO_ReadInputDataBit
;;   _EEPROM_RestoreMotorData->_EEPROM_Read
;;   _EEPROM_RestoreDeviceModeData->_EEPROM_Read
;;   _EEPROM_GetFlag->_EEPROM_Read
;;   _LED_VoltageChargeOutput->_GPIO_WriteBit
;;   _EEPROM_Init->_EEPROM_Write
;;   _KEY_Init->_GPIO_INTConfig
;;   _LED_Init->_GPIO_WriteBit
;;   _GPIO_WriteBit->_GPIO_ReadInputDataBit
;;
;; Critical Paths under _ISR in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0    7179
;;                        _EEPROM_Init
;;                     _EEPROM_GetFlag
;;       _EEPROM_RestoreDeviceModeData
;;            _EEPROM_RestoreMotorData
;;                         _Board_Init
;;                        _Driver_Init
;;                    _Motor_GetStatus
;;        _Motor_HandleStatusChangeEvt
;;             _ChargeDetect_GetStatus
;;             _ChargeTimer_ResetCount
;;                      _SetDeviceMode
;;                     _Battery_Detect
;;                           _LED_Init
;;                         _KEY_DeInit
;;                         _Motor_Stop
;;                    _Motor_SetStatus
;;           _MotorOperationTimer_Stop
;;                  _ChargeCtrl_Output
;;            _LED_VoltageChargeOutput
;;                           _ADC_Init
;;                    _ChargeTimer_Cmd
;;              _ChargeTimer_INTConfig
;;                     _charge_control
;;                      _GetDeviceMode
;; ---------------------------------------------------------------------------------
;; (1) _Motor_HandleStatusChangeEvt                          1     1      0    1125
;;                                              9 BANK0      1     1      0
;;                _Motor_CheckRunLimit
;;               _KEY_GetReleaseStatus
;;                    _Motor_SetStatus
;;                        _Motor_Start
;;           _MotorOperationTimer_Stop
;;           _MotorOperationTimer_Init
;;       _SwitchModeTimer_GetINTStatus
;;                         _Motor_Stop
;;                _SwitchModeTimer_Cmd
;;          _SwitchModeTimer_INTConfig
;;        _LEDTimer_GetOperationStatus
;;                       _LEDTimer_Cmd
;;                 _LEDTimer_INTConfig
;;      _LEDTimer_GetRunLimitINTStatus
;;                _LED_DisplayRunLimit
;;                 _KEY_GetPressStatus
;;               _LED_CloseMotorStatus
;; ---------------------------------------------------------------------------------
;; (1) _charge_control                                       2     2      0    1522
;;                                             16 BANK0      2     2      0
;;               _ChargeTimer_GetCount
;;                     _Battery_Detect
;;            _LED_VoltageChargeOutput
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (1) _Driver_Init                                          0     0      0    1764
;;                           _LED_Init
;;                           _KEY_Init
;;                        _Charge_Init
;;                           _ADC_Init
;;                        _EEPROM_Init
;; ---------------------------------------------------------------------------------
;; (2) _Motor_Start                                          1     1      0     374
;;                                              8 BANK0      1     1      0
;;             _LED_DisplayMotorStatus
;;                         _Motor_Init
;;                _SwitchModeTimer_Cmd
;;          _SwitchModeTimer_INTConfig
;; ---------------------------------------------------------------------------------
;; (1) _Motor_Stop                                           0     0      0     154
;;               _LED_CloseMotorStatus
;; ---------------------------------------------------------------------------------
;; (2) _Battery_Detect                                       6     6      0    1125
;;                                             10 BANK0      6     6      0
;;                       _ADC_ReadData
;;                            ___lwdiv
;;                      _GetDeviceMode
;;                     _EEPROM_SetFlag
;;               _EEPROM_StoreModeData
;;              _EEPROM_StoreMotorData
;;             _LED_UnderVoltageOutput
;;        _LEDTimer_GetOperationStatus
;;                       _LEDTimer_Cmd
;;                 _LEDTimer_INTConfig
;;              _LEDTimer_GetINTStatus
;;              _GPIO_ReadInputDataBit
;;                      _SetDeviceMode
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (2) _Charge_Init                                          0     0      0     835
;;                  _ChargeDetect_Init
;;                    _ChargeCtrl_Init
;; ---------------------------------------------------------------------------------
;; (3) _EEPROM_StoreModeData                                 0     0      0      44
;;                       _EEPROM_Write
;; ---------------------------------------------------------------------------------
;; (3) _EEPROM_SetFlag                                       0     0      0      44
;;                       _EEPROM_Write
;; ---------------------------------------------------------------------------------
;; (3) _ADC_ReadData                                         6     4      2     116
;;                                              4 BANK0      6     4      2
;;                           _delay_us
;; ---------------------------------------------------------------------------------
;; (3) _EEPROM_StoreMotorData                                0     0      0      44
;;                       _EEPROM_Write
;; ---------------------------------------------------------------------------------
;; (3) _LED_UnderVoltageOutput                               1     1      0     176
;;                                              6 BANK0      1     1      0
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (2) _LED_CloseMotorStatus                                 0     0      0     154
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (2) _LED_DisplayRunLimit                                  0     0      0     267
;;              _GPIO_ReadInputDataBit
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (3) _LED_DisplayMotorStatus                               2     1      1     198
;;                                              6 BANK0      2     1      1
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (3) _ChargeCtrl_Init                                      2     2      0     361
;;                                              6 BANK0      2     2      0
;;                          _GPIO_Init
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (3) _ChargeDetect_Init                                    2     2      0     474
;;                                              3 BANK0      2     2      0
;;                          _GPIO_Init
;;              _GPIO_ReadInputDataBit
;;                     _GPIO_INTConfig
;; ---------------------------------------------------------------------------------
;; (1) _ChargeCtrl_Output                                    1     1      0     176
;;                                              6 BANK0      1     1      0
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (1) _MotorOperationTimer_Stop                             0     0      0       0
;;                _Motor_CheckRunLimit
;; ---------------------------------------------------------------------------------
;; (1) _KEY_DeInit                                           2     2      0     207
;;                                              2 BANK0      2     2      0
;;                          _GPIO_Init
;; ---------------------------------------------------------------------------------
;; (1) _ChargeDetect_GetStatus                               2     2      0     136
;;                                              3 BANK0      2     2      0
;;              _GPIO_ReadInputDataBit
;; ---------------------------------------------------------------------------------
;; (1) _EEPROM_RestoreMotorData                              0     0      0      46
;;                        _EEPROM_Read
;; ---------------------------------------------------------------------------------
;; (1) _EEPROM_RestoreDeviceModeData                         0     0      0      46
;;                        _EEPROM_Read
;; ---------------------------------------------------------------------------------
;; (1) _EEPROM_GetFlag                                       0     0      0      46
;;                        _EEPROM_Read
;; ---------------------------------------------------------------------------------
;; (2) _LED_VoltageChargeOutput                              1     1      0     176
;;                                              6 BANK0      1     1      0
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (2) _EEPROM_Init                                          0     0      0      44
;;                       _EEPROM_Write
;; ---------------------------------------------------------------------------------
;; (2) _KEY_Init                                             2     2      0     361
;;                                              3 BANK0      2     2      0
;;                          _GPIO_Init
;;                     _GPIO_INTConfig
;; ---------------------------------------------------------------------------------
;; (1) _LED_Init                                             2     2      0     502
;;                                              6 BANK0      2     2      0
;;                          _GPIO_Init
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (3) ___lwdiv                                              7     3      4     162
;;                                              0 BANK0      7     3      4
;; ---------------------------------------------------------------------------------
;; (4) _delay_us                                             4     2      2      47
;;                                              0 BANK0      4     2      2
;; ---------------------------------------------------------------------------------
;; (2) _SwitchModeTimer_GetINTStatus                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _MotorOperationTimer_Init                             1     1      0      44
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _Motor_CheckRunLimit                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _SwitchModeTimer_INTConfig                            1     1      0      22
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _SwitchModeTimer_Cmd                                  1     1      0      22
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _Motor_Init                                           1     1      0      88
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _LEDTimer_GetRunLimitINTStatus                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _LEDTimer_GetINTStatus                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _LEDTimer_GetOperationStatus                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _LEDTimer_INTConfig                                   1     1      0      22
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _LEDTimer_Cmd                                         1     1      0      22
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _KEY_GetPressStatus                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _KEY_GetReleaseStatus                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _EEPROM_Read                                          2     2      0      46
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (4) _EEPROM_Write                                         2     1      1      44
;;                                              0 BANK0      2     1      1
;; ---------------------------------------------------------------------------------
;; (4) _GPIO_INTConfig                                       3     1      2     154
;;                                              0 BANK0      3     1      2
;; ---------------------------------------------------------------------------------
;; (3) _GPIO_ReadInputDataBit                                3     2      1     113
;;                                              0 BANK0      3     2      1
;; ---------------------------------------------------------------------------------
;; (2) _GPIO_Init                                            2     1      1     154
;;                                              0 BANK0      2     1      1
;; ---------------------------------------------------------------------------------
;; (1) _GetDeviceMode                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _ChargeTimer_INTConfig                                1     1      0      22
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _ChargeTimer_Cmd                                      1     1      0      22
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _Motor_SetStatus                                      1     1      0      22
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _SetDeviceMode                                        1     1      0      22
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _ChargeTimer_ResetCount                               0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Motor_GetStatus                                      0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _GPIO_WriteBit                                        3     1      2     154
;;                                              3 BANK0      3     1      2
;;              _GPIO_ReadInputDataBit (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _ChargeTimer_GetCount                                 2     0      2       0
;;                                              0 BANK0      2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _ADC_Init                                             2     2      0      22
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Board_Init                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (5) _ISR                                                  4     4      0    1923
;;                                              5 COMMON     4     4      0
;;                    _KEY_IntrHandler
;;          _DebounceTimer_IntrHandler
;;                    i1_GetDeviceMode
;;        _SwitchModeTimer_IntrHandler
;;            _ChargeTimer_IntrHandler
;;         _MotorOperTimer_IntrHandler
;;               _LEDTimer_IntrHandler
;;           _ChargeDetect_IntrHandler
;; ---------------------------------------------------------------------------------
;; (6) _MotorOperTimer_IntrHandler                           0     0      0    1181
;;              i1_Motor_CheckRunLimit
;;                            ___lbmod
;;         i1_MotorOperationTimer_Init
;;                       i1_Motor_Stop
;;         i1_MotorOperationTimer_Stop
;;                  i1_Motor_SetStatus
;;                       i1_Motor_Init
;; ---------------------------------------------------------------------------------
;; (7) i1_Motor_Stop                                         0     0      0     511
;;             i1_LED_CloseMotorStatus
;; ---------------------------------------------------------------------------------
;; (7) i1_MotorOperationTimer_Stop                           0     0      0       0
;;              i1_Motor_CheckRunLimit
;; ---------------------------------------------------------------------------------
;; (8) i1_LED_CloseMotorStatus                               0     0      0     511
;;                    i1_GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (6) _ChargeDetect_IntrHandler                             0     0      0     371
;;            i1_GPIO_ReadInputDataBit
;; ---------------------------------------------------------------------------------
;; (6) _DebounceTimer_IntrHandler                            0     0      0     371
;;            i1_GPIO_ReadInputDataBit
;; ---------------------------------------------------------------------------------
;; (6) _KEY_IntrHandler                                      0     0      0       0
;;                          _TIM1_Init
;; ---------------------------------------------------------------------------------
;; (6) i1_GetDeviceMode                                      0     0      0       0
;; ---------------------------------------------------------------------------------
;; (7) i1_MotorOperationTimer_Init                           1     1      0     146
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (8) i1_Motor_CheckRunLimit                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (7) i1_Motor_SetStatus                                    1     1      0      73
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (7) i1_Motor_Init                                         1     1      0     292
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (7) i1_GPIO_ReadInputDataBit                              3     2      1     371
;;                                              0 COMMON     3     2      1
;; ---------------------------------------------------------------------------------
;; (9) i1_GPIO_WriteBit                                      3     1      2     511
;;                                              0 COMMON     3     1      2
;; ---------------------------------------------------------------------------------
;; (7) ___lbmod                                              5     4      1     159
;;                                              0 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (7) _TIM1_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (6) _LEDTimer_IntrHandler                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; (6) _ChargeTimer_IntrHandler                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (6) _SwitchModeTimer_IntrHandler                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 9
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _EEPROM_Init
;;     _EEPROM_Write
;;   _EEPROM_GetFlag
;;     _EEPROM_Read
;;   _EEPROM_RestoreDeviceModeData
;;     _EEPROM_Read
;;   _EEPROM_RestoreMotorData
;;     _EEPROM_Read
;;   _Board_Init
;;   _Driver_Init
;;     _LED_Init
;;       _GPIO_Init
;;       _GPIO_WriteBit
;;         _GPIO_ReadInputDataBit (ARG)
;;     _KEY_Init
;;       _GPIO_Init
;;       _GPIO_INTConfig
;;     _Charge_Init
;;       _ChargeDetect_Init
;;         _GPIO_Init
;;         _GPIO_ReadInputDataBit
;;         _GPIO_INTConfig
;;       _ChargeCtrl_Init
;;         _GPIO_Init
;;         _GPIO_WriteBit
;;           _GPIO_ReadInputDataBit (ARG)
;;     _ADC_Init
;;     _EEPROM_Init
;;       _EEPROM_Write
;;   _Motor_GetStatus
;;   _Motor_HandleStatusChangeEvt
;;     _Motor_CheckRunLimit
;;     _KEY_GetReleaseStatus
;;     _Motor_SetStatus
;;     _Motor_Start
;;       _LED_DisplayMotorStatus
;;         _GPIO_WriteBit
;;           _GPIO_ReadInputDataBit (ARG)
;;       _Motor_Init
;;       _SwitchModeTimer_Cmd
;;       _SwitchModeTimer_INTConfig
;;     _MotorOperationTimer_Stop
;;       _Motor_CheckRunLimit
;;     _MotorOperationTimer_Init
;;     _SwitchModeTimer_GetINTStatus
;;     _Motor_Stop
;;       _LED_CloseMotorStatus
;;         _GPIO_WriteBit
;;           _GPIO_ReadInputDataBit (ARG)
;;     _SwitchModeTimer_Cmd
;;     _SwitchModeTimer_INTConfig
;;     _LEDTimer_GetOperationStatus
;;     _LEDTimer_Cmd
;;     _LEDTimer_INTConfig
;;     _LEDTimer_GetRunLimitINTStatus
;;     _LED_DisplayRunLimit
;;       _GPIO_ReadInputDataBit
;;       _GPIO_WriteBit
;;         _GPIO_ReadInputDataBit (ARG)
;;     _KEY_GetPressStatus
;;     _LED_CloseMotorStatus
;;       _GPIO_WriteBit
;;         _GPIO_ReadInputDataBit (ARG)
;;   _ChargeDetect_GetStatus
;;     _GPIO_ReadInputDataBit
;;   _ChargeTimer_ResetCount
;;   _SetDeviceMode
;;   _Battery_Detect
;;     _ADC_ReadData
;;       _delay_us
;;     ___lwdiv
;;     _GetDeviceMode
;;     _EEPROM_SetFlag
;;       _EEPROM_Write
;;     _EEPROM_StoreModeData
;;       _EEPROM_Write
;;     _EEPROM_StoreMotorData
;;       _EEPROM_Write
;;     _LED_UnderVoltageOutput
;;       _GPIO_WriteBit
;;         _GPIO_ReadInputDataBit (ARG)
;;     _LEDTimer_GetOperationStatus
;;     _LEDTimer_Cmd
;;     _LEDTimer_INTConfig
;;     _LEDTimer_GetINTStatus
;;     _GPIO_ReadInputDataBit
;;     _SetDeviceMode
;;     _GPIO_WriteBit
;;       _GPIO_ReadInputDataBit (ARG)
;;   _LED_Init
;;     _GPIO_Init
;;     _GPIO_WriteBit
;;       _GPIO_ReadInputDataBit (ARG)
;;   _KEY_DeInit
;;     _GPIO_Init
;;   _Motor_Stop
;;     _LED_CloseMotorStatus
;;       _GPIO_WriteBit
;;         _GPIO_ReadInputDataBit (ARG)
;;   _Motor_SetStatus
;;   _MotorOperationTimer_Stop
;;     _Motor_CheckRunLimit
;;   _ChargeCtrl_Output
;;     _GPIO_WriteBit
;;       _GPIO_ReadInputDataBit (ARG)
;;   _LED_VoltageChargeOutput
;;     _GPIO_WriteBit
;;       _GPIO_ReadInputDataBit (ARG)
;;   _ADC_Init
;;   _ChargeTimer_Cmd
;;   _ChargeTimer_INTConfig
;;   _charge_control
;;     _ChargeTimer_GetCount
;;     _Battery_Detect
;;       _ADC_ReadData
;;         _delay_us
;;       ___lwdiv
;;       _GetDeviceMode
;;       _EEPROM_SetFlag
;;         _EEPROM_Write
;;       _EEPROM_StoreModeData
;;         _EEPROM_Write
;;       _EEPROM_StoreMotorData
;;         _EEPROM_Write
;;       _LED_UnderVoltageOutput
;;         _GPIO_WriteBit
;;           _GPIO_ReadInputDataBit (ARG)
;;       _LEDTimer_GetOperationStatus
;;       _LEDTimer_Cmd
;;       _LEDTimer_INTConfig
;;       _LEDTimer_GetINTStatus
;;       _GPIO_ReadInputDataBit
;;       _SetDeviceMode
;;       _GPIO_WriteBit
;;         _GPIO_ReadInputDataBit (ARG)
;;     _LED_VoltageChargeOutput
;;       _GPIO_WriteBit
;;         _GPIO_ReadInputDataBit (ARG)
;;     _GPIO_WriteBit
;;       _GPIO_ReadInputDataBit (ARG)
;;   _GetDeviceMode
;;
;; _ISR (ROOT)
;;   _KEY_IntrHandler
;;     _TIM1_Init
;;   _DebounceTimer_IntrHandler
;;     i1_GPIO_ReadInputDataBit
;;   i1_GetDeviceMode
;;   _SwitchModeTimer_IntrHandler
;;   _ChargeTimer_IntrHandler
;;   _MotorOperTimer_IntrHandler
;;     i1_Motor_CheckRunLimit
;;     ___lbmod
;;     i1_MotorOperationTimer_Init
;;     i1_Motor_Stop
;;       i1_LED_CloseMotorStatus
;;         i1_GPIO_WriteBit
;;     i1_MotorOperationTimer_Stop
;;       i1_Motor_CheckRunLimit
;;     i1_Motor_SetStatus
;;     i1_Motor_Init
;;   _LEDTimer_IntrHandler
;;   _ChargeDetect_IntrHandler
;;     i1_GPIO_ReadInputDataBit
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               50      0       0       7        0.0%
;;BITBANK2            50      0       0       6        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       5        0.0%
;;BITBANK1            50      0       0       4        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      45      10        0.0%
;;ABS                  0      0      37       8        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       E       2        0.0%
;;BANK0               50     12      29       3       51.3%
;;BITBANK0            50      0       0       9        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      9       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 105 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_EEPROM_Init
;;		_EEPROM_GetFlag
;;		_EEPROM_RestoreDeviceModeData
;;		_EEPROM_RestoreMotorData
;;		_Board_Init
;;		_Driver_Init
;;		_Motor_GetStatus
;;		_Motor_HandleStatusChangeEvt
;;		_ChargeDetect_GetStatus
;;		_ChargeTimer_ResetCount
;;		_SetDeviceMode
;;		_Battery_Detect
;;		_LED_Init
;;		_KEY_DeInit
;;		_Motor_Stop
;;		_Motor_SetStatus
;;		_MotorOperationTimer_Stop
;;		_ChargeCtrl_Output
;;		_LED_VoltageChargeOutput
;;		_ADC_Init
;;		_ChargeTimer_Cmd
;;		_ChargeTimer_INTConfig
;;		_charge_control
;;		_GetDeviceMode
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"main.c"
	line	105
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	107
	
l15357:	
;main.c: 107: EEPROM_Init();
	fcall	_EEPROM_Init
	line	110
	
l15359:	
;main.c: 110: if(EEPROM_GetFlag() == 0x01)
	fcall	_EEPROM_GetFlag
	xorlw	01h
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l15403
u2440:
	line	112
	
l15361:	
;main.c: 111: {
;main.c: 112: EEPROM_RestoreDeviceModeData();
	fcall	_EEPROM_RestoreDeviceModeData
	line	113
;main.c: 113: EEPROM_RestoreMotorData();
	fcall	_EEPROM_RestoreMotorData
	goto	l15403
	line	123
	
l15363:	
;main.c: 122: {
;main.c: 123: Board_Init();
	fcall	_Board_Init
	line	124
	
l15365:	
;main.c: 124: Driver_Init();
	fcall	_Driver_Init
	line	128
	
l15367:	
;main.c: 127: {
;main.c: 128: Motor_HandleStatusChangeEvt(Motor_GetStatus());
	fcall	_Motor_GetStatus
	fcall	_Motor_HandleStatusChangeEvt
	line	131
;main.c: 131: if(ChargeDetect_GetStatus())
	fcall	_ChargeDetect_GetStatus
	xorlw	0
	skipnz
	goto	u2451
	goto	u2450
u2451:
	goto	l15373
u2450:
	line	134
	
l15369:	
;main.c: 132: {
;main.c: 134: ChargeTimer_ResetCount();
	fcall	_ChargeTimer_ResetCount
	line	135
	
l15371:	
;main.c: 135: SetDeviceMode(CHARGE_MODE);
	movlw	(01h)
	fcall	_SetDeviceMode
	line	136
;main.c: 136: break;
	goto	l15403
	line	140
	
l15373:	
;main.c: 137: }
;main.c: 140: Battery_Detect();
	fcall	_Battery_Detect
	goto	l15367
	line	147
	
l15375:	
;main.c: 145: {
;main.c: 147: LED_Init();
	fcall	_LED_Init
	line	148
;main.c: 148: KEY_DeInit();
	fcall	_KEY_DeInit
	line	149
	
l15377:	
;main.c: 149: Motor_Stop();
	fcall	_Motor_Stop
	line	150
	
l15379:	
;main.c: 150: Motor_SetStatus(MOTOR_MODE_STOP);
	movlw	(01h)
	fcall	_Motor_SetStatus
	line	151
	
l15381:	
;main.c: 151: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	153
	
l15383:	
;main.c: 153: ChargeCtrl_Output(Bit_SET);
	movlw	(01h)
	fcall	_ChargeCtrl_Output
	line	154
	
l15385:	
;main.c: 154: LED_VoltageChargeOutput(Bit_SET);
	movlw	(01h)
	fcall	_LED_VoltageChargeOutput
	line	157
	
l15387:	
;main.c: 157: ADC_Init((0x06));
	movlw	(06h)
	fcall	_ADC_Init
	line	160
	
l15389:	
;main.c: 160: ChargeTimer_Cmd(ENABLE);
	movlw	(01h)
	fcall	_ChargeTimer_Cmd
	line	161
	
l15391:	
;main.c: 161: ChargeTimer_INTConfig(ENABLE);
	movlw	(01h)
	fcall	_ChargeTimer_INTConfig
	line	163
;main.c: 163: while(1)
	
l1151:	
	line	165
;main.c: 164: {
;main.c: 165: charge_control();
	fcall	_charge_control
	line	168
	
l15393:	
;main.c: 168: if(!ChargeDetect_GetStatus())
	fcall	_ChargeDetect_GetStatus
	iorlw	0
	skipz
	goto	u2461
	goto	u2460
u2461:
	goto	l1151
u2460:
	line	171
	
l15395:	
;main.c: 169: {
;main.c: 171: ChargeTimer_Cmd(DISABLE);
	movlw	(0)
	fcall	_ChargeTimer_Cmd
	line	172
;main.c: 172: ChargeTimer_INTConfig(DISABLE);
	movlw	(0)
	fcall	_ChargeTimer_INTConfig
	line	174
;main.c: 174: SetDeviceMode(RUN_MODE);
	movlw	(0)
	fcall	_SetDeviceMode
	line	175
;main.c: 175: break;
	goto	l15403
	line	184
	
l15397:	
;main.c: 182: {
;main.c: 184: LED_Init();
	fcall	_LED_Init
	line	186
	
l15399:	
# 186 "main.c"
SLEEP ;#
psect	maintext
	line	119
;main.c: 189: break;
	
l15403:	
	fcall	_GetDeviceMode
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           13     7 (fixed)
; jumptable            260     6 (fixed)
; rangetable             7     6 (fixed)
; spacedrange           12     9 (fixed)
; locatedrange           3     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l15363
	xorlw	1^0	; case 1
	skipnz
	goto	l15375
	xorlw	2^1	; case 2
	skipnz
	goto	l15397
	goto	l15403
	opt asmopt_on

	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	197
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Motor_HandleStatusChangeEvt
psect	text1647,local,class=CODE,delta=2
global __ptext1647
__ptext1647:

;; *************** function _Motor_HandleStatusChangeEvt *****************
;; Defined at:
;;		line 368 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     enum E1554
;; Auto vars:     Size  Location     Type
;;  status          1    9[BANK0 ] enum E1554
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Motor_CheckRunLimit
;;		_KEY_GetReleaseStatus
;;		_Motor_SetStatus
;;		_Motor_Start
;;		_MotorOperationTimer_Stop
;;		_MotorOperationTimer_Init
;;		_SwitchModeTimer_GetINTStatus
;;		_Motor_Stop
;;		_SwitchModeTimer_Cmd
;;		_SwitchModeTimer_INTConfig
;;		_LEDTimer_GetOperationStatus
;;		_LEDTimer_Cmd
;;		_LEDTimer_INTConfig
;;		_LEDTimer_GetRunLimitINTStatus
;;		_LED_DisplayRunLimit
;;		_KEY_GetPressStatus
;;		_LED_CloseMotorStatus
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1647
	file	"ms83fxx02_motor.c"
	line	368
	global	__size_of_Motor_HandleStatusChangeEvt
	__size_of_Motor_HandleStatusChangeEvt	equ	__end_of_Motor_HandleStatusChangeEvt-_Motor_HandleStatusChangeEvt
	
_Motor_HandleStatusChangeEvt:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Motor_HandleStatusChangeEvt: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Motor_HandleStatusChangeEvt@status stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Motor_HandleStatusChangeEvt@status)
	line	369
	
l15275:	
;ms83fxx02_motor.c: 369: if(!Motor_CheckRunLimit())
	fcall	_Motor_CheckRunLimit
	iorlw	0
	skipz
	goto	u2291
	goto	u2290
u2291:
	goto	l15329
u2290:
	goto	l15327
	line	375
	
l15279:	
;ms83fxx02_motor.c: 374: {
;ms83fxx02_motor.c: 375: if(KEY_GetReleaseStatus())
	fcall	_KEY_GetReleaseStatus
	xorlw	0
	skipnz
	goto	u2301
	goto	u2300
u2301:
	goto	l15289
u2300:
	line	377
	
l15281:	
;ms83fxx02_motor.c: 376: {
;ms83fxx02_motor.c: 377: Motor_SetStatus(MOTOR_MODE_DUTY_100);
	movlw	(02h)
	fcall	_Motor_SetStatus
	line	378
	
l15283:	
;ms83fxx02_motor.c: 378: Motor_Start(MOTOR_MODE_DUTY_100);
	movlw	(02h)
	fcall	_Motor_Start
	line	381
	
l15285:	
;ms83fxx02_motor.c: 381: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	382
	
l15287:	
;ms83fxx02_motor.c: 382: MotorOperationTimer_Init(MotorOperationTimer_30s);
	movlw	(01h)
	fcall	_MotorOperationTimer_Init
	line	383
;ms83fxx02_motor.c: 383: }
	goto	l8910
	line	386
	
l15289:	
;ms83fxx02_motor.c: 384: else
;ms83fxx02_motor.c: 385: {
;ms83fxx02_motor.c: 386: if(!key_press_flag)
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key_press_flag),f
	skipz	;volatile
	goto	u2311
	goto	u2310
u2311:
	goto	l8889
u2310:
	line	389
	
l15291:	
# 389 "ms83fxx02_motor.c"
SLEEP ;#
psect	text1647
	goto	l8910
	line	396
	
l15293:	
;ms83fxx02_motor.c: 395: {
;ms83fxx02_motor.c: 396: if(KEY_GetReleaseStatus())
	fcall	_KEY_GetReleaseStatus
	xorlw	0
	skipnz
	goto	u2321
	goto	u2320
u2321:
	goto	l8910
u2320:
	line	399
	
l15295:	
;ms83fxx02_motor.c: 397: {
;ms83fxx02_motor.c: 399: if(SwitchModeTimer_GetINTStatus())
	fcall	_SwitchModeTimer_GetINTStatus
	xorlw	0
	skipnz
	goto	u2331
	goto	u2330
u2331:
	goto	l15299
u2330:
	line	401
	
l15297:	
;ms83fxx02_motor.c: 400: {
;ms83fxx02_motor.c: 401: Motor_Stop();
	fcall	_Motor_Stop
	line	402
;ms83fxx02_motor.c: 402: Motor_SetStatus(MOTOR_MODE_STOP);
	movlw	(01h)
	fcall	_Motor_SetStatus
	line	403
;ms83fxx02_motor.c: 403: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	404
;ms83fxx02_motor.c: 404: }
	goto	l8910
	line	408
	
l15299:	
;ms83fxx02_motor.c: 405: else
;ms83fxx02_motor.c: 406: {
;ms83fxx02_motor.c: 408: SwitchModeTimer_Cmd(DISABLE);
	movlw	(0)
	fcall	_SwitchModeTimer_Cmd
	line	409
;ms83fxx02_motor.c: 409: SwitchModeTimer_INTConfig(DISABLE);
	movlw	(0)
	fcall	_SwitchModeTimer_INTConfig
	line	411
;ms83fxx02_motor.c: 411: Motor_SetStatus(MOTOR_MODE_DUTY_90);
	movlw	(03h)
	fcall	_Motor_SetStatus
	line	412
	
l15301:	
;ms83fxx02_motor.c: 412: Motor_Start(MOTOR_MODE_DUTY_90);
	movlw	(03h)
	fcall	_Motor_Start
	line	415
	
l15303:	
;ms83fxx02_motor.c: 415: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	416
	
l15305:	
;ms83fxx02_motor.c: 416: MotorOperationTimer_Init(MotorOperationTimer_30s);
	movlw	(01h)
	fcall	_MotorOperationTimer_Init
	goto	l8910
	line	423
	
l15307:	
;ms83fxx02_motor.c: 422: {
;ms83fxx02_motor.c: 423: if(KEY_GetReleaseStatus())
	fcall	_KEY_GetReleaseStatus
	xorlw	0
	skipnz
	goto	u2341
	goto	u2340
u2341:
	goto	l8910
u2340:
	line	426
	
l15309:	
;ms83fxx02_motor.c: 424: {
;ms83fxx02_motor.c: 426: if(SwitchModeTimer_GetINTStatus())
	fcall	_SwitchModeTimer_GetINTStatus
	xorlw	0
	skipnz
	goto	u2351
	goto	u2350
u2351:
	goto	l15313
u2350:
	line	428
	
l15311:	
;ms83fxx02_motor.c: 427: {
;ms83fxx02_motor.c: 428: Motor_Stop();
	fcall	_Motor_Stop
	line	429
;ms83fxx02_motor.c: 429: Motor_SetStatus(MOTOR_MODE_STOP);
	movlw	(01h)
	fcall	_Motor_SetStatus
	line	430
;ms83fxx02_motor.c: 430: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	431
;ms83fxx02_motor.c: 431: }
	goto	l8910
	line	435
	
l15313:	
;ms83fxx02_motor.c: 432: else
;ms83fxx02_motor.c: 433: {
;ms83fxx02_motor.c: 435: SwitchModeTimer_Cmd(DISABLE);
	movlw	(0)
	fcall	_SwitchModeTimer_Cmd
	line	436
;ms83fxx02_motor.c: 436: SwitchModeTimer_INTConfig(DISABLE);
	movlw	(0)
	fcall	_SwitchModeTimer_INTConfig
	line	438
;ms83fxx02_motor.c: 438: Motor_SetStatus(MOTOR_MODE_DUTY_80);
	movlw	(04h)
	fcall	_Motor_SetStatus
	line	439
	
l15315:	
;ms83fxx02_motor.c: 439: Motor_Start(MOTOR_MODE_DUTY_80);
	movlw	(04h)
	fcall	_Motor_Start
	line	442
	
l15317:	
;ms83fxx02_motor.c: 442: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	443
	
l15319:	
;ms83fxx02_motor.c: 443: MotorOperationTimer_Init(MotorOperationTimer_30s);
	movlw	(01h)
	fcall	_MotorOperationTimer_Init
	goto	l8910
	line	450
	
l15321:	
;ms83fxx02_motor.c: 449: {
;ms83fxx02_motor.c: 450: if(KEY_GetReleaseStatus())
	fcall	_KEY_GetReleaseStatus
	xorlw	0
	skipnz
	goto	u2361
	goto	u2360
u2361:
	goto	l8910
u2360:
	line	452
	
l15323:	
;ms83fxx02_motor.c: 451: {
;ms83fxx02_motor.c: 452: Motor_Stop();
	fcall	_Motor_Stop
	line	453
;ms83fxx02_motor.c: 453: Motor_SetStatus(MOTOR_MODE_STOP);
	movlw	(01h)
	fcall	_Motor_SetStatus
	line	454
;ms83fxx02_motor.c: 454: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	goto	l8910
	line	371
	
l15327:	
	movf	(Motor_HandleStatusChangeEvt@status),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           18    10 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l15279
	xorlw	2^1	; case 2
	skipnz
	goto	l15293
	xorlw	3^2	; case 3
	skipnz
	goto	l15307
	xorlw	4^3	; case 4
	skipnz
	goto	l15321
	goto	l8910
	opt asmopt_on

	line	462
	
l8889:	
	line	463
;ms83fxx02_motor.c: 463: }
	goto	l8910
	line	467
	
l15329:	
;ms83fxx02_motor.c: 464: else
;ms83fxx02_motor.c: 465: {
;ms83fxx02_motor.c: 467: if(LEDTimer_GetOperationStatus() == 0)
	fcall	_LEDTimer_GetOperationStatus
	iorlw	0
	skipz
	goto	u2371
	goto	u2370
u2371:
	goto	l15333
u2370:
	line	470
	
l15331:	
;ms83fxx02_motor.c: 468: {
;ms83fxx02_motor.c: 470: LEDTimer_Cmd(ENABLE);
	movlw	(01h)
	fcall	_LEDTimer_Cmd
	line	471
;ms83fxx02_motor.c: 471: LEDTimer_INTConfig(ENABLE);
	movlw	(01h)
	fcall	_LEDTimer_INTConfig
	line	474
	
l15333:	
;ms83fxx02_motor.c: 472: }
;ms83fxx02_motor.c: 474: if(LEDTimer_GetRunLimitINTStatus())
	fcall	_LEDTimer_GetRunLimitINTStatus
	xorlw	0
	skipnz
	goto	u2381
	goto	u2380
u2381:
	goto	l15339
u2380:
	line	476
	
l15335:	
;ms83fxx02_motor.c: 475: {
;ms83fxx02_motor.c: 476: if(!key_press_time_count)
	movf	(_key_press_time_count),f
	skipz	;volatile
	goto	u2391
	goto	u2390
u2391:
	goto	l15339
u2390:
	line	478
	
l15337:	
;ms83fxx02_motor.c: 477: {
;ms83fxx02_motor.c: 478: LED_DisplayRunLimit();
	fcall	_LED_DisplayRunLimit
	line	483
	
l15339:	
;ms83fxx02_motor.c: 479: }
;ms83fxx02_motor.c: 480: }
;ms83fxx02_motor.c: 483: if(KEY_GetPressStatus())
	fcall	_KEY_GetPressStatus
	xorlw	0
	skipnz
	goto	u2401
	goto	u2400
u2401:
	goto	l15345
u2400:
	line	485
	
l15341:	
;ms83fxx02_motor.c: 484: {
;ms83fxx02_motor.c: 485: key_press_time_count = 0;
	clrf	(_key_press_time_count)	;volatile
	line	487
	
l15343:	
;ms83fxx02_motor.c: 487: MotorOperationTimer_Init(MotorOperationTimer_8s);
	movlw	(03h)
	fcall	_MotorOperationTimer_Init
	line	490
	
l15345:	
;ms83fxx02_motor.c: 488: }
;ms83fxx02_motor.c: 490: if(key_press_time_count)
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key_press_time_count),w	;volatile
	skipz
	goto	u2410
	goto	l15349
u2410:
	line	492
	
l15347:	
;ms83fxx02_motor.c: 491: {
;ms83fxx02_motor.c: 492: LED_CloseMotorStatus();
	fcall	_LED_CloseMotorStatus
	line	495
;ms83fxx02_motor.c: 495: LEDTimer_Cmd(DISABLE);
	movlw	(0)
	fcall	_LEDTimer_Cmd
	line	496
;ms83fxx02_motor.c: 496: LEDTimer_INTConfig(DISABLE);
	movlw	(0)
	fcall	_LEDTimer_INTConfig
	line	499
	
l15349:	
;ms83fxx02_motor.c: 497: }
;ms83fxx02_motor.c: 499: if(KEY_GetReleaseStatus())
	fcall	_KEY_GetReleaseStatus
	xorlw	0
	skipnz
	goto	u2421
	goto	u2420
u2421:
	goto	l8910
u2420:
	line	501
	
l15351:	
;ms83fxx02_motor.c: 500: {
;ms83fxx02_motor.c: 501: if(key_press_time_count)
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key_press_time_count),w	;volatile
	skipz
	goto	u2430
	goto	l15355
u2430:
	line	504
	
l15353:	
;ms83fxx02_motor.c: 502: {
;ms83fxx02_motor.c: 504: motor_oper_record = 0;
	clrf	(_motor_oper_record)	;volatile
	clrf	(_motor_oper_record+1)	;volatile
	line	505
;ms83fxx02_motor.c: 505: key_press_time_count = 0;
	clrf	(_key_press_time_count)	;volatile
	line	506
;ms83fxx02_motor.c: 506: }
	goto	l8910
	line	509
	
l15355:	
;ms83fxx02_motor.c: 507: else
;ms83fxx02_motor.c: 508: {
;ms83fxx02_motor.c: 509: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	513
	
l8910:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_HandleStatusChangeEvt
	__end_of_Motor_HandleStatusChangeEvt:
;; =============== function _Motor_HandleStatusChangeEvt ends ============

	signat	_Motor_HandleStatusChangeEvt,4216
	global	_charge_control
psect	text1648,local,class=CODE,delta=2
global __ptext1648
__ptext1648:

;; *************** function _charge_control *****************
;; Defined at:
;;		line 80 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  charge_count    2   16[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 20/40
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_ChargeTimer_GetCount
;;		_Battery_Detect
;;		_LED_VoltageChargeOutput
;;		_GPIO_WriteBit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1648
	file	"main.c"
	line	80
	global	__size_of_charge_control
	__size_of_charge_control	equ	__end_of_charge_control-_charge_control
	
_charge_control:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _charge_control: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	81
	
l15263:	
;main.c: 81: uint32_t charge_count = ChargeTimer_GetCount();
	fcall	_ChargeTimer_GetCount
	movf	(1+(?_ChargeTimer_GetCount)),w
	movwf	(charge_control@charge_count+1)
	movf	(0+(?_ChargeTimer_GetCount)),w
	movwf	(charge_control@charge_count)
	line	84
	
l15265:	
;main.c: 84: if((charge_count >= 5) && (charge_count < 4500))
	movlw	high(05h)
	subwf	(charge_control@charge_count+1),w
	movlw	low(05h)
	skipnz
	subwf	(charge_control@charge_count),w
	skipc
	goto	u2261
	goto	u2260
u2261:
	goto	l15271
u2260:
	
l15267:	
	movlw	high(01194h)
	subwf	(charge_control@charge_count+1),w
	movlw	low(01194h)
	skipnz
	subwf	(charge_control@charge_count),w
	skipnc
	goto	u2271
	goto	u2270
u2271:
	goto	l15271
u2270:
	line	86
	
l15269:	
;main.c: 85: {
;main.c: 86: Battery_Detect();
	fcall	_Battery_Detect
	line	87
;main.c: 87: }
	goto	l1138
	line	90
	
l15271:	
;main.c: 88: else
;main.c: 89: {
;main.c: 90: if(charge_count >= 4500)
	movlw	high(01194h)
	subwf	(charge_control@charge_count+1),w
	movlw	low(01194h)
	skipnz
	subwf	(charge_control@charge_count),w
	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l1138
u2280:
	line	92
	
l15273:	
;main.c: 91: {
;main.c: 92: LED_VoltageChargeOutput(Bit_RESET);
	movlw	(0)
	fcall	_LED_VoltageChargeOutput
	line	94
;main.c: 94: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), SET);
	clrf	(?_GPIO_WriteBit)
	incf	(?_GPIO_WriteBit),f
	clrf	0+(?_GPIO_WriteBit)+01h
	incf	0+(?_GPIO_WriteBit)+01h,f
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	97
	
l1138:	
	return
	opt stack 0
GLOBAL	__end_of_charge_control
	__end_of_charge_control:
;; =============== function _charge_control ends ============

	signat	_charge_control,88
	global	_Driver_Init
psect	text1649,local,class=CODE,delta=2
global __ptext1649
__ptext1649:

;; *************** function _Driver_Init *****************
;; Defined at:
;;		line 57 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_LED_Init
;;		_KEY_Init
;;		_Charge_Init
;;		_ADC_Init
;;		_EEPROM_Init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1649
	file	"main.c"
	line	57
	global	__size_of_Driver_Init
	__size_of_Driver_Init	equ	__end_of_Driver_Init-_Driver_Init
	
_Driver_Init:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Driver_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	59
	
l15257:	
;main.c: 59: LED_Init();
	fcall	_LED_Init
	line	62
;main.c: 62: KEY_Init();
	fcall	_KEY_Init
	line	65
;main.c: 65: Charge_Init();
	fcall	_Charge_Init
	line	68
	
l15259:	
;main.c: 68: ADC_Init((0x06));
	movlw	(06h)
	fcall	_ADC_Init
	line	71
	
l15261:	
;main.c: 71: EEPROM_Init();
	fcall	_EEPROM_Init
	line	72
	
l1132:	
	return
	opt stack 0
GLOBAL	__end_of_Driver_Init
	__end_of_Driver_Init:
;; =============== function _Driver_Init ends ============

	signat	_Driver_Init,88
	global	_Motor_Start
psect	text1650,local,class=CODE,delta=2
global __ptext1650
__ptext1650:

;; *************** function _Motor_Start *****************
;; Defined at:
;;		line 142 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     enum E1554
;; Auto vars:     Size  Location     Type
;;  status          1    8[BANK0 ] enum E1554
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/40
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_LED_DisplayMotorStatus
;;		_Motor_Init
;;		_SwitchModeTimer_Cmd
;;		_SwitchModeTimer_INTConfig
;; This function is called by:
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1650
	file	"ms83fxx02_motor.c"
	line	142
	global	__size_of_Motor_Start
	__size_of_Motor_Start	equ	__end_of_Motor_Start-_Motor_Start
	
_Motor_Start:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Motor_Start: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Motor_Start@status stored from wreg
	movwf	(Motor_Start@status)
	line	144
	
l15243:	
;ms83fxx02_motor.c: 144: switch(status)
	goto	l15253
	line	148
	
l15245:	
;ms83fxx02_motor.c: 147: {
;ms83fxx02_motor.c: 148: LED_DisplayMotorStatus(GPIOA, ((uint8_t)0x00000004));
	movlw	(04h)
	movwf	(?_LED_DisplayMotorStatus)
	movlw	(0)
	fcall	_LED_DisplayMotorStatus
	line	149
;ms83fxx02_motor.c: 149: break;
	goto	l15255
	line	153
	
l15247:	
;ms83fxx02_motor.c: 152: {
;ms83fxx02_motor.c: 153: LED_DisplayMotorStatus(GPIOA, ((uint8_t)0x00000008));
	movlw	(08h)
	movwf	(?_LED_DisplayMotorStatus)
	movlw	(0)
	fcall	_LED_DisplayMotorStatus
	line	154
;ms83fxx02_motor.c: 154: break;
	goto	l15255
	line	158
	
l15249:	
;ms83fxx02_motor.c: 157: {
;ms83fxx02_motor.c: 158: LED_DisplayMotorStatus(GPIOC, ((uint8_t)0x00000001));
	clrf	(?_LED_DisplayMotorStatus)
	incf	(?_LED_DisplayMotorStatus),f
	movlw	(01h)
	fcall	_LED_DisplayMotorStatus
	line	159
;ms83fxx02_motor.c: 159: break;
	goto	l15255
	line	144
	
l15253:	
	movf	(Motor_Start@status),w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 2 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           16    10 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	2^0	; case 2
	skipnz
	goto	l15245
	xorlw	3^2	; case 3
	skipnz
	goto	l15247
	xorlw	4^3	; case 4
	skipnz
	goto	l15249
	goto	l15255
	opt asmopt_on

	line	167
	
l15255:	
;ms83fxx02_motor.c: 167: Motor_Init(status);
	movf	(Motor_Start@status),w
	fcall	_Motor_Init
	line	170
;ms83fxx02_motor.c: 170: SwitchModeTimer_Cmd(ENABLE);
	movlw	(01h)
	fcall	_SwitchModeTimer_Cmd
	line	171
;ms83fxx02_motor.c: 171: SwitchModeTimer_INTConfig(ENABLE);
	movlw	(01h)
	fcall	_SwitchModeTimer_INTConfig
	line	176
	
l8846:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_Start
	__end_of_Motor_Start:
;; =============== function _Motor_Start ends ============

	signat	_Motor_Start,4216
	global	_Motor_Stop
psect	text1651,local,class=CODE,delta=2
global __ptext1651
__ptext1651:

;; *************** function _Motor_Stop *****************
;; Defined at:
;;		line 184 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_LED_CloseMotorStatus
;; This function is called by:
;;		_main
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1651
	file	"ms83fxx02_motor.c"
	line	184
	global	__size_of_Motor_Stop
	__size_of_Motor_Stop	equ	__end_of_Motor_Stop-_Motor_Stop
	
_Motor_Stop:	
	opt	stack 0
; Regs used in _Motor_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	188
	
l15239:	
;ms83fxx02_motor.c: 188: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	190
;ms83fxx02_motor.c: 190: TMR2ON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(146/8),(146)&7
	line	192
	
l15241:	
;ms83fxx02_motor.c: 192: LED_CloseMotorStatus();
	fcall	_LED_CloseMotorStatus
	line	193
	
l8849:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_Stop
	__end_of_Motor_Stop:
;; =============== function _Motor_Stop ends ============

	signat	_Motor_Stop,88
	global	_Battery_Detect
psect	text1652,local,class=CODE,delta=2
global __ptext1652
__ptext1652:

;; *************** function _Battery_Detect *****************
;; Defined at:
;;		line 130 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  adc_data        2   14[BANK0 ] unsigned int 
;;  i               1   13[BANK0 ] unsigned char 
;;  mode            1   12[BANK0 ] enum E1521
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       4       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_ADC_ReadData
;;		___lwdiv
;;		_GetDeviceMode
;;		_EEPROM_SetFlag
;;		_EEPROM_StoreModeData
;;		_EEPROM_StoreMotorData
;;		_LED_UnderVoltageOutput
;;		_LEDTimer_GetOperationStatus
;;		_LEDTimer_Cmd
;;		_LEDTimer_INTConfig
;;		_LEDTimer_GetINTStatus
;;		_GPIO_ReadInputDataBit
;;		_SetDeviceMode
;;		_GPIO_WriteBit
;; This function is called by:
;;		_charge_control
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1652
	file	"ms83fxx02_pwr.c"
	line	130
	global	__size_of_Battery_Detect
	__size_of_Battery_Detect	equ	__end_of_Battery_Detect-_Battery_Detect
	
_Battery_Detect:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Battery_Detect: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	131
	
l15189:	
	line	132
;ms83fxx02_pwr.c: 132: DEVICE_MODE_Type mode = RUN_MODE;
	clrf	(Battery_Detect@mode)
	line	133
;ms83fxx02_pwr.c: 133: uint32_t adc_data = 0;
	clrf	(Battery_Detect@adc_data)
	clrf	(Battery_Detect@adc_data+1)
	line	135
	
l15191:	
;ms83fxx02_pwr.c: 135: battery_value[battery_sample_count++] = ADC_ReadData((0x06));
	movlw	(06h)
	fcall	_ADC_ReadData
	clrc
	rlf	(_battery_sample_count),w	;volatile
	addlw	_battery_value&0ffh
	movwf	fsr0
	movf	(0+(?_ADC_ReadData)),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	(1+(?_ADC_ReadData)),w
	movwf	indf
	
l15193:	
	incf	(_battery_sample_count),f	;volatile
	line	137
	
l15195:	
;ms83fxx02_pwr.c: 137: if(battery_sample_count < 5)
	movlw	(05h)
	subwf	(_battery_sample_count),w	;volatile
	skipnc
	goto	u2171
	goto	u2170
u2171:
	goto	l15199
u2170:
	goto	l10041
	line	139
	
l15197:	
;ms83fxx02_pwr.c: 138: {
;ms83fxx02_pwr.c: 139: return ;
	goto	l10041
	line	142
	
l15199:	
;ms83fxx02_pwr.c: 140: }
;ms83fxx02_pwr.c: 142: battery_sample_count = 0;
	clrf	(_battery_sample_count)	;volatile
	line	143
;ms83fxx02_pwr.c: 143: for(i=0; i<5; i++)
	clrf	(Battery_Detect@i)
	line	145
	
l15205:	
;ms83fxx02_pwr.c: 144: {
;ms83fxx02_pwr.c: 145: adc_data += battery_value[i];
	clrc
	rlf	(Battery_Detect@i),w
	addlw	_battery_value&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_Battery_Detect+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_Battery_Detect+0)+0+1
	movf	0+(??_Battery_Detect+0)+0,w
	addwf	(Battery_Detect@adc_data),f
	skipnc
	incf	(Battery_Detect@adc_data+1),f
	movf	1+(??_Battery_Detect+0)+0,w
	addwf	(Battery_Detect@adc_data+1),f
	line	143
	
l15207:	
	incf	(Battery_Detect@i),f
	
l15209:	
	movlw	(05h)
	subwf	(Battery_Detect@i),w
	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l15205
u2180:
	line	147
	
l15211:	
;ms83fxx02_pwr.c: 146: }
;ms83fxx02_pwr.c: 147: adc_data = adc_data / 5;
	movlw	05h
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(Battery_Detect@adc_data+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(Battery_Detect@adc_data),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(Battery_Detect@adc_data+1)
	movf	(0+(?___lwdiv)),w
	movwf	(Battery_Detect@adc_data)
	line	149
	
l15213:	
;ms83fxx02_pwr.c: 149: mode = GetDeviceMode();
	fcall	_GetDeviceMode
	movwf	(Battery_Detect@mode)
	line	151
;ms83fxx02_pwr.c: 151: if(mode == RUN_MODE)
	movf	(Battery_Detect@mode),f
	skipz
	goto	u2191
	goto	u2190
u2191:
	goto	l15233
u2190:
	line	153
	
l15215:	
;ms83fxx02_pwr.c: 152: {
;ms83fxx02_pwr.c: 153: if(adc_data < 460)
	movlw	high(01CCh)
	subwf	(Battery_Detect@adc_data+1),w
	movlw	low(01CCh)
	skipnz
	subwf	(Battery_Detect@adc_data),w
	skipnc
	goto	u2201
	goto	u2200
u2201:
	goto	l15221
u2200:
	line	157
	
l15217:	
;ms83fxx02_pwr.c: 154: {
;ms83fxx02_pwr.c: 157: EEPROM_SetFlag();
	fcall	_EEPROM_SetFlag
	line	158
;ms83fxx02_pwr.c: 158: EEPROM_StoreModeData();
	fcall	_EEPROM_StoreModeData
	line	159
;ms83fxx02_pwr.c: 159: EEPROM_StoreMotorData();
	fcall	_EEPROM_StoreMotorData
	line	160
;ms83fxx02_pwr.c: 160: LED_UnderVoltageOutput(Bit_RESET);
	movlw	(0)
	fcall	_LED_UnderVoltageOutput
	line	163
	
l15219:	
# 163 "ms83fxx02_pwr.c"
SLEEP ;#
psect	text1652
	line	164
;ms83fxx02_pwr.c: 164: }
	goto	l10041
	line	165
	
l15221:	
;ms83fxx02_pwr.c: 165: else if(adc_data < 512)
	movlw	high(0200h)
	subwf	(Battery_Detect@adc_data+1),w
	movlw	low(0200h)
	skipnz
	subwf	(Battery_Detect@adc_data),w
	skipnc
	goto	u2211
	goto	u2210
u2211:
	goto	l15231
u2210:
	line	169
	
l15223:	
;ms83fxx02_pwr.c: 166: {
;ms83fxx02_pwr.c: 169: if(LEDTimer_GetOperationStatus() == 0)
	fcall	_LEDTimer_GetOperationStatus
	iorlw	0
	skipz
	goto	u2221
	goto	u2220
u2221:
	goto	l15227
u2220:
	line	172
	
l15225:	
;ms83fxx02_pwr.c: 170: {
;ms83fxx02_pwr.c: 172: LEDTimer_Cmd(ENABLE);
	movlw	(01h)
	fcall	_LEDTimer_Cmd
	line	173
;ms83fxx02_pwr.c: 173: LEDTimer_INTConfig(ENABLE);
	movlw	(01h)
	fcall	_LEDTimer_INTConfig
	line	176
	
l15227:	
;ms83fxx02_pwr.c: 174: }
;ms83fxx02_pwr.c: 176: if(LEDTimer_GetINTStatus())
	fcall	_LEDTimer_GetINTStatus
	xorlw	0
	skipnz
	goto	u2231
	goto	u2230
u2231:
	goto	l15197
u2230:
	line	178
	
l15229:	
;ms83fxx02_pwr.c: 177: {
;ms83fxx02_pwr.c: 178: LED_UnderVoltageOutput((BitAction)(1 - GPIO_ReadInputDataBit(GPIOC, ((uint8_t)0x00000008))));
	movlw	(08h)
	movwf	(?_GPIO_ReadInputDataBit)
	movlw	(01h)
	fcall	_GPIO_ReadInputDataBit
	sublw	01h
	fcall	_LED_UnderVoltageOutput
	goto	l10041
	line	183
	
l15231:	
;ms83fxx02_pwr.c: 181: else
;ms83fxx02_pwr.c: 182: {
;ms83fxx02_pwr.c: 183: LED_UnderVoltageOutput(Bit_RESET);
	movlw	(0)
	fcall	_LED_UnderVoltageOutput
	line	185
;ms83fxx02_pwr.c: 185: LEDTimer_Cmd(DISABLE);
	movlw	(0)
	fcall	_LEDTimer_Cmd
	line	186
;ms83fxx02_pwr.c: 186: LEDTimer_INTConfig(DISABLE);
	movlw	(0)
	fcall	_LEDTimer_INTConfig
	line	187
;ms83fxx02_pwr.c: 187: SetDeviceMode(RUN_MODE);
	movlw	(0)
	fcall	_SetDeviceMode
	goto	l10041
	line	192
	
l15233:	
;ms83fxx02_pwr.c: 190: else
;ms83fxx02_pwr.c: 191: {
;ms83fxx02_pwr.c: 192: if(mode == CHARGE_MODE)
	decf	(Battery_Detect@mode),w
	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l10041
u2240:
	line	195
	
l15235:	
;ms83fxx02_pwr.c: 193: {
;ms83fxx02_pwr.c: 195: if(adc_data > 686)
	movlw	high(02AFh)
	subwf	(Battery_Detect@adc_data+1),w
	movlw	low(02AFh)
	skipnz
	subwf	(Battery_Detect@adc_data),w
	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l10041
u2250:
	line	198
	
l15237:	
;ms83fxx02_pwr.c: 196: {
;ms83fxx02_pwr.c: 198: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), Bit_SET);
	clrf	(?_GPIO_WriteBit)
	incf	(?_GPIO_WriteBit),f
	clrf	0+(?_GPIO_WriteBit)+01h
	incf	0+(?_GPIO_WriteBit)+01h,f
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	202
	
l10041:	
	return
	opt stack 0
GLOBAL	__end_of_Battery_Detect
	__end_of_Battery_Detect:
;; =============== function _Battery_Detect ends ============

	signat	_Battery_Detect,88
	global	_Charge_Init
psect	text1653,local,class=CODE,delta=2
global __ptext1653
__ptext1653:

;; *************** function _Charge_Init *****************
;; Defined at:
;;		line 49 in file "ms83fxx02_charge.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_ChargeDetect_Init
;;		_ChargeCtrl_Init
;; This function is called by:
;;		_Driver_Init
;; This function uses a non-reentrant model
;;
psect	text1653
	file	"ms83fxx02_charge.c"
	line	49
	global	__size_of_Charge_Init
	__size_of_Charge_Init	equ	__end_of_Charge_Init-_Charge_Init
	
_Charge_Init:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Charge_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	50
	
l15187:	
;ms83fxx02_charge.c: 50: ChargeDetect_Init();
	fcall	_ChargeDetect_Init
	line	51
;ms83fxx02_charge.c: 51: ChargeCtrl_Init();
	fcall	_ChargeCtrl_Init
	line	52
	
l2245:	
	return
	opt stack 0
GLOBAL	__end_of_Charge_Init
	__end_of_Charge_Init:
;; =============== function _Charge_Init ends ============

	signat	_Charge_Init,88
	global	_EEPROM_StoreModeData
psect	text1654,local,class=CODE,delta=2
global __ptext1654
__ptext1654:

;; *************** function _EEPROM_StoreModeData *****************
;; Defined at:
;;		line 120 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_EEPROM_Write
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1654
	file	"ms83fxx02_pwr.c"
	line	120
	global	__size_of_EEPROM_StoreModeData
	__size_of_EEPROM_StoreModeData	equ	__end_of_EEPROM_StoreModeData-_EEPROM_StoreModeData
	
_EEPROM_StoreModeData:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _EEPROM_StoreModeData: [wreg+status,2+status,0+pclath+cstack]
	line	121
	
l15185:	
;ms83fxx02_pwr.c: 121: EEPROM_Write(0x11, device_mode);
	bcf	status, 5	;RP0=0, select bank0
	movf	(_device_mode),w	;volatile
	movwf	(?_EEPROM_Write)
	movlw	(011h)
	fcall	_EEPROM_Write
	line	122
	
l10034:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_StoreModeData
	__end_of_EEPROM_StoreModeData:
;; =============== function _EEPROM_StoreModeData ends ============

	signat	_EEPROM_StoreModeData,88
	global	_EEPROM_SetFlag
psect	text1655,local,class=CODE,delta=2
global __ptext1655
__ptext1655:

;; *************** function _EEPROM_SetFlag *****************
;; Defined at:
;;		line 110 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 60/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_EEPROM_Write
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1655
	file	"ms83fxx02_pwr.c"
	line	110
	global	__size_of_EEPROM_SetFlag
	__size_of_EEPROM_SetFlag	equ	__end_of_EEPROM_SetFlag-_EEPROM_SetFlag
	
_EEPROM_SetFlag:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _EEPROM_SetFlag: [wreg+status,2+status,0+pclath+cstack]
	line	111
	
l15183:	
;ms83fxx02_pwr.c: 111: EEPROM_Write(0x16, 0x01);
	clrf	(?_EEPROM_Write)
	incf	(?_EEPROM_Write),f
	movlw	(016h)
	fcall	_EEPROM_Write
	line	112
	
l10028:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_SetFlag
	__end_of_EEPROM_SetFlag:
;; =============== function _EEPROM_SetFlag ends ============

	signat	_EEPROM_SetFlag,88
	global	_ADC_ReadData
psect	text1656,local,class=CODE,delta=2
global __ptext1656
__ptext1656:

;; *************** function _ADC_ReadData *****************
;; Defined at:
;;		line 86 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    7[BANK0 ] unsigned char 
;;  battery_valu    2    8[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_delay_us
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1656
	file	"ms83fxx02_pwr.c"
	line	86
	global	__size_of_ADC_ReadData
	__size_of_ADC_ReadData	equ	__end_of_ADC_ReadData-_ADC_ReadData
	
_ADC_ReadData:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _ADC_ReadData: [wreg+status,2+status,0+pclath+cstack]
;ADC_ReadData@channel stored from wreg
	movwf	(ADC_ReadData@channel)
	line	87
	
l15165:	
	line	89
	
l15167:	
;ms83fxx02_pwr.c: 89: ADCON0 |= (channel << 2);
	movf	(ADC_ReadData@channel),w
	movwf	(??_ADC_ReadData+0)+0
	clrc
	rlf	(??_ADC_ReadData+0)+0,f
	clrc
	rlf	(??_ADC_ReadData+0)+0,w
	iorwf	(31),f	;volatile
	line	92
	
l15169:	
;ms83fxx02_pwr.c: 92: ADCON0 |= 0b10000001;
	movlw	(081h)
	iorwf	(31),f	;volatile
	line	93
	
l15171:	
;ms83fxx02_pwr.c: 93: delay_us(10);
	movlw	0Ah
	movwf	(?_delay_us)
	clrf	(?_delay_us+1)
	fcall	_delay_us
	line	95
	
l15173:	
;ms83fxx02_pwr.c: 95: GO_DONE = 1;
	bsf	(249/8),(249)&7
	line	96
;ms83fxx02_pwr.c: 96: while(GO_DONE == 1){;}
	
l10022:	
	btfsc	(249/8),(249)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l10022
u2160:
	line	98
	
l15175:	
;ms83fxx02_pwr.c: 98: battery_value = ADRESH;
	movf	(30),w	;volatile
	movwf	(ADC_ReadData@battery_value)
	clrf	(ADC_ReadData@battery_value+1)
	line	99
;ms83fxx02_pwr.c: 99: battery_value = (battery_value << 8) | ADRESL;
	movf	(ADC_ReadData@battery_value),w
	movwf	(??_ADC_ReadData+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_ReadData@battery_value)
	movf	(??_ADC_ReadData+0)+0,w
	movwf	(ADC_ReadData@battery_value+1)
	line	101
	
l15177:	
# 101 "ms83fxx02_pwr.c"
nop ;#
psect	text1656
	line	104
	
l15179:	
;ms83fxx02_pwr.c: 104: ADON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(248/8),(248)&7
	line	106
;ms83fxx02_pwr.c: 106: return battery_value;
	movf	(ADC_ReadData@battery_value+1),w
	movwf	(?_ADC_ReadData+1)
	movf	(ADC_ReadData@battery_value),w
	movwf	(?_ADC_ReadData)
	line	107
	
l10025:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_ReadData
	__end_of_ADC_ReadData:
;; =============== function _ADC_ReadData ends ============

	signat	_ADC_ReadData,4218
	global	_EEPROM_StoreMotorData
psect	text1657,local,class=CODE,delta=2
global __ptext1657
__ptext1657:

;; *************** function _EEPROM_StoreMotorData *****************
;; Defined at:
;;		line 516 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_EEPROM_Write
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1657
	file	"ms83fxx02_motor.c"
	line	516
	global	__size_of_EEPROM_StoreMotorData
	__size_of_EEPROM_StoreMotorData	equ	__end_of_EEPROM_StoreMotorData-_EEPROM_StoreMotorData
	
_EEPROM_StoreMotorData:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _EEPROM_StoreMotorData: [wreg+status,2+status,0+pclath+cstack]
	line	517
	
l15163:	
;ms83fxx02_motor.c: 517: EEPROM_Write(0x12, motor_status);
	movf	(_motor_status),w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_EEPROM_Write)
	movlw	(012h)
	fcall	_EEPROM_Write
	line	518
;ms83fxx02_motor.c: 518: EEPROM_Write(0x13, motor_intr_count);
	movf	(_motor_intr_count),w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_EEPROM_Write)
	movlw	(013h)
	fcall	_EEPROM_Write
	line	519
;ms83fxx02_motor.c: 519: EEPROM_Write(0x14, motor_oper_record);
	bcf	status, 5	;RP0=0, select bank0
	movf	(_motor_oper_record),w	;volatile
	movwf	(?_EEPROM_Write)
	movlw	(014h)
	fcall	_EEPROM_Write
	line	520
;ms83fxx02_motor.c: 520: EEPROM_Write(0x15, motor_timing_running_flag);
	bcf	status, 5	;RP0=0, select bank0
	movf	(_motor_timing_running_flag),w
	movwf	(?_EEPROM_Write)
	movlw	(015h)
	fcall	_EEPROM_Write
	line	521
	
l8913:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_StoreMotorData
	__end_of_EEPROM_StoreMotorData:
;; =============== function _EEPROM_StoreMotorData ends ============

	signat	_EEPROM_StoreMotorData,88
	global	_LED_UnderVoltageOutput
psect	text1658,local,class=CODE,delta=2
global __ptext1658
__ptext1658:

;; *************** function _LED_UnderVoltageOutput *****************
;; Defined at:
;;		line 83 in file "ms83fxx02_led.c"
;; Parameters:    Size  Location     Type
;;  BitVal          1    wreg     enum E1499
;; Auto vars:     Size  Location     Type
;;  BitVal          1    6[BANK0 ] enum E1499
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 40/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_GPIO_WriteBit
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1658
	file	"ms83fxx02_led.c"
	line	83
	global	__size_of_LED_UnderVoltageOutput
	__size_of_LED_UnderVoltageOutput	equ	__end_of_LED_UnderVoltageOutput-_LED_UnderVoltageOutput
	
_LED_UnderVoltageOutput:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _LED_UnderVoltageOutput: [wreg+status,2+status,0+pclath+cstack]
;LED_UnderVoltageOutput@BitVal stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(LED_UnderVoltageOutput@BitVal)
	line	84
	
l15161:	
;ms83fxx02_led.c: 84: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000008), BitVal);
	movlw	(08h)
	movwf	(?_GPIO_WriteBit)
	movf	(LED_UnderVoltageOutput@BitVal),w
	movwf	0+(?_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	85
	
l6623:	
	return
	opt stack 0
GLOBAL	__end_of_LED_UnderVoltageOutput
	__end_of_LED_UnderVoltageOutput:
;; =============== function _LED_UnderVoltageOutput ends ============

	signat	_LED_UnderVoltageOutput,4216
	global	_LED_CloseMotorStatus
psect	text1659,local,class=CODE,delta=2
global __ptext1659
__ptext1659:

;; *************** function _LED_CloseMotorStatus *****************
;; Defined at:
;;		line 71 in file "ms83fxx02_led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_GPIO_WriteBit
;; This function is called by:
;;		_Motor_Stop
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1659
	file	"ms83fxx02_led.c"
	line	71
	global	__size_of_LED_CloseMotorStatus
	__size_of_LED_CloseMotorStatus	equ	__end_of_LED_CloseMotorStatus-_LED_CloseMotorStatus
	
_LED_CloseMotorStatus:	
	opt	stack 0
; Regs used in _LED_CloseMotorStatus: [wreg+status,2+status,0+pclath+cstack]
	line	72
	
l15159:	
;ms83fxx02_led.c: 72: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000004), Bit_RESET);
	movlw	(04h)
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	73
;ms83fxx02_led.c: 73: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000008), Bit_RESET);
	movlw	(08h)
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	74
;ms83fxx02_led.c: 74: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), Bit_RESET);
	clrf	(?_GPIO_WriteBit)
	incf	(?_GPIO_WriteBit),f
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	75
	
l6617:	
	return
	opt stack 0
GLOBAL	__end_of_LED_CloseMotorStatus
	__end_of_LED_CloseMotorStatus:
;; =============== function _LED_CloseMotorStatus ends ============

	signat	_LED_CloseMotorStatus,88
	global	_LED_DisplayRunLimit
psect	text1660,local,class=CODE,delta=2
global __ptext1660
__ptext1660:

;; *************** function _LED_DisplayRunLimit *****************
;; Defined at:
;;		line 64 in file "ms83fxx02_led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_GPIO_ReadInputDataBit
;;		_GPIO_WriteBit
;; This function is called by:
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1660
	file	"ms83fxx02_led.c"
	line	64
	global	__size_of_LED_DisplayRunLimit
	__size_of_LED_DisplayRunLimit	equ	__end_of_LED_DisplayRunLimit-_LED_DisplayRunLimit
	
_LED_DisplayRunLimit:	
	opt	stack 0
; Regs used in _LED_DisplayRunLimit: [wreg+status,2+status,0+pclath+cstack]
	line	65
	
l15157:	
;ms83fxx02_led.c: 65: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000004), (BitAction)(1 - GPIO_ReadInputDataBit(GPIOA, ((uint8_t)0x00000004))));
	movlw	(04h)
	movwf	(?_GPIO_WriteBit)
	movlw	(04h)
	movwf	(?_GPIO_ReadInputDataBit)
	movlw	(0)
	fcall	_GPIO_ReadInputDataBit
	sublw	01h
	movwf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	66
;ms83fxx02_led.c: 66: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000008), (BitAction)(1 - GPIO_ReadInputDataBit(GPIOA, ((uint8_t)0x00000008))));
	movlw	(08h)
	movwf	(?_GPIO_WriteBit)
	movlw	(08h)
	movwf	(?_GPIO_ReadInputDataBit)
	movlw	(0)
	fcall	_GPIO_ReadInputDataBit
	sublw	01h
	movwf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	67
;ms83fxx02_led.c: 67: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), (BitAction)(1 - GPIO_ReadInputDataBit(GPIOC, ((uint8_t)0x00000001))));
	clrf	(?_GPIO_WriteBit)
	incf	(?_GPIO_WriteBit),f
	clrf	(?_GPIO_ReadInputDataBit)
	incf	(?_GPIO_ReadInputDataBit),f
	movlw	(01h)
	fcall	_GPIO_ReadInputDataBit
	sublw	01h
	movwf	0+(?_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	68
	
l6614:	
	return
	opt stack 0
GLOBAL	__end_of_LED_DisplayRunLimit
	__end_of_LED_DisplayRunLimit:
;; =============== function _LED_DisplayRunLimit ends ============

	signat	_LED_DisplayRunLimit,88
	global	_LED_DisplayMotorStatus
psect	text1661,local,class=CODE,delta=2
global __ptext1661
__ptext1661:

;; *************** function _LED_DisplayMotorStatus *****************
;; Defined at:
;;		line 56 in file "ms83fxx02_led.c"
;; Parameters:    Size  Location     Type
;;  GPIOx           1    wreg     enum E1491
;;  GPIO_Pin        1    6[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  GPIOx           1    7[BANK0 ] enum E1491
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_GPIO_WriteBit
;; This function is called by:
;;		_Motor_Start
;; This function uses a non-reentrant model
;;
psect	text1661
	file	"ms83fxx02_led.c"
	line	56
	global	__size_of_LED_DisplayMotorStatus
	__size_of_LED_DisplayMotorStatus	equ	__end_of_LED_DisplayMotorStatus-_LED_DisplayMotorStatus
	
_LED_DisplayMotorStatus:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _LED_DisplayMotorStatus: [wreg+status,2+status,0+pclath+cstack]
;LED_DisplayMotorStatus@GPIOx stored from wreg
	movwf	(LED_DisplayMotorStatus@GPIOx)
	line	57
	
l15155:	
;ms83fxx02_led.c: 57: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000004), Bit_RESET);
	movlw	(04h)
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	58
;ms83fxx02_led.c: 58: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000008), Bit_RESET);
	movlw	(08h)
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	59
;ms83fxx02_led.c: 59: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), Bit_RESET);
	clrf	(?_GPIO_WriteBit)
	incf	(?_GPIO_WriteBit),f
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	60
;ms83fxx02_led.c: 60: GPIO_WriteBit(GPIOx, GPIO_Pin, Bit_SET);
	movf	(LED_DisplayMotorStatus@GPIO_Pin),w
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	incf	0+(?_GPIO_WriteBit)+01h,f
	movf	(LED_DisplayMotorStatus@GPIOx),w
	fcall	_GPIO_WriteBit
	line	61
	
l6611:	
	return
	opt stack 0
GLOBAL	__end_of_LED_DisplayMotorStatus
	__end_of_LED_DisplayMotorStatus:
;; =============== function _LED_DisplayMotorStatus ends ============

	signat	_LED_DisplayMotorStatus,8312
	global	_ChargeCtrl_Init
psect	text1662,local,class=CODE,delta=2
global __ptext1662
__ptext1662:

;; *************** function _ChargeCtrl_Init *****************
;; Defined at:
;;		line 39 in file "ms83fxx02_charge.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  GPIO_InitStr    2    6[BANK0 ] struct .
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_GPIO_Init
;;		_GPIO_WriteBit
;; This function is called by:
;;		_Charge_Init
;; This function uses a non-reentrant model
;;
psect	text1662
	file	"ms83fxx02_charge.c"
	line	39
	global	__size_of_ChargeCtrl_Init
	__size_of_ChargeCtrl_Init	equ	__end_of_ChargeCtrl_Init-_ChargeCtrl_Init
	
_ChargeCtrl_Init:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _ChargeCtrl_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	42
	
l15147:	
;ms83fxx02_charge.c: 40: GPIO_InitTypeDef GPIO_InitStruct;
;ms83fxx02_charge.c: 42: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	clrf	0+(ChargeCtrl_Init@GPIO_InitStruct)+01h
	incf	0+(ChargeCtrl_Init@GPIO_InitStruct)+01h,f
	line	43
	
l15149:	
;ms83fxx02_charge.c: 43: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000080);
	movlw	(080h)
	movwf	(ChargeCtrl_Init@GPIO_InitStruct)
	line	44
	
l15151:	
;ms83fxx02_charge.c: 44: GPIO_Init(GPIOA, &GPIO_InitStruct);
	movlw	(ChargeCtrl_Init@GPIO_InitStruct)&0ffh
	movwf	(?_GPIO_Init)
	movlw	(0)
	fcall	_GPIO_Init
	line	45
	
l15153:	
;ms83fxx02_charge.c: 45: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000080), Bit_RESET);
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	46
	
l2242:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeCtrl_Init
	__end_of_ChargeCtrl_Init:
;; =============== function _ChargeCtrl_Init ends ============

	signat	_ChargeCtrl_Init,88
	global	_ChargeDetect_Init
psect	text1663,local,class=CODE,delta=2
global __ptext1663
__ptext1663:

;; *************** function _ChargeDetect_Init *****************
;; Defined at:
;;		line 27 in file "ms83fxx02_charge.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  GPIO_InitStr    2    3[BANK0 ] struct .
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_GPIO_Init
;;		_GPIO_ReadInputDataBit
;;		_GPIO_INTConfig
;; This function is called by:
;;		_Charge_Init
;; This function uses a non-reentrant model
;;
psect	text1663
	file	"ms83fxx02_charge.c"
	line	27
	global	__size_of_ChargeDetect_Init
	__size_of_ChargeDetect_Init	equ	__end_of_ChargeDetect_Init-_ChargeDetect_Init
	
_ChargeDetect_Init:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _ChargeDetect_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	30
	
l15137:	
;ms83fxx02_charge.c: 28: GPIO_InitTypeDef GPIO_InitStruct;
;ms83fxx02_charge.c: 30: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN;
	clrf	0+(ChargeDetect_Init@GPIO_InitStruct)+01h
	line	31
	
l15139:	
;ms83fxx02_charge.c: 31: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000010);
	movlw	(010h)
	movwf	(ChargeDetect_Init@GPIO_InitStruct)
	line	32
	
l15141:	
;ms83fxx02_charge.c: 32: GPIO_Init(GPIOA, &GPIO_InitStruct);
	movlw	(ChargeDetect_Init@GPIO_InitStruct)&0ffh
	movwf	(?_GPIO_Init)
	movlw	(0)
	fcall	_GPIO_Init
	line	34
	
l15143:	
;ms83fxx02_charge.c: 34: GPIO_ReadInputDataBit(GPIOA, ((uint8_t)0x00000010));
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_GPIO_ReadInputDataBit)
	movlw	(0)
	fcall	_GPIO_ReadInputDataBit
	line	35
	
l15145:	
;ms83fxx02_charge.c: 35: GPIO_INTConfig(GPIOA, ((uint8_t)0x00000010), ENABLE);
	movlw	(010h)
	movwf	(?_GPIO_INTConfig)
	clrf	0+(?_GPIO_INTConfig)+01h
	incf	0+(?_GPIO_INTConfig)+01h,f
	movlw	(0)
	fcall	_GPIO_INTConfig
	line	36
	
l2239:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeDetect_Init
	__end_of_ChargeDetect_Init:
;; =============== function _ChargeDetect_Init ends ============

	signat	_ChargeDetect_Init,88
	global	_ChargeCtrl_Output
psect	text1664,local,class=CODE,delta=2
global __ptext1664
__ptext1664:

;; *************** function _ChargeCtrl_Output *****************
;; Defined at:
;;		line 55 in file "ms83fxx02_charge.c"
;; Parameters:    Size  Location     Type
;;  BitVal          1    wreg     enum E1499
;; Auto vars:     Size  Location     Type
;;  BitVal          1    6[BANK0 ] enum E1499
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_GPIO_WriteBit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1664
	file	"ms83fxx02_charge.c"
	line	55
	global	__size_of_ChargeCtrl_Output
	__size_of_ChargeCtrl_Output	equ	__end_of_ChargeCtrl_Output-_ChargeCtrl_Output
	
_ChargeCtrl_Output:	
	opt	stack 1
; Regs used in _ChargeCtrl_Output: [wreg+status,2+status,0+pclath+cstack]
;ChargeCtrl_Output@BitVal stored from wreg
	movwf	(ChargeCtrl_Output@BitVal)
	line	56
	
l15135:	
;ms83fxx02_charge.c: 56: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000080), BitVal);
	movlw	(080h)
	movwf	(?_GPIO_WriteBit)
	movf	(ChargeCtrl_Output@BitVal),w
	movwf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	57
	
l2248:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeCtrl_Output
	__end_of_ChargeCtrl_Output:
;; =============== function _ChargeCtrl_Output ends ============

	signat	_ChargeCtrl_Output,4216
	global	_MotorOperationTimer_Stop
psect	text1665,local,class=CODE,delta=2
global __ptext1665
__ptext1665:

;; *************** function _MotorOperationTimer_Stop *****************
;; Defined at:
;;		line 277 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, pclath, cstack
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Motor_CheckRunLimit
;; This function is called by:
;;		_main
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1665
	file	"ms83fxx02_motor.c"
	line	277
	global	__size_of_MotorOperationTimer_Stop
	__size_of_MotorOperationTimer_Stop	equ	__end_of_MotorOperationTimer_Stop-_MotorOperationTimer_Stop
	
_MotorOperationTimer_Stop:	
	opt	stack 1
; Regs used in _MotorOperationTimer_Stop: [wreg+status,2+pclath+cstack]
	line	279
	
l15127:	
;ms83fxx02_motor.c: 279: TMR4ON = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2226/8)^0100h,(2226)&7
	line	281
;ms83fxx02_motor.c: 281: TMR4IE = 0;
	bcf	(2225/8)^0100h,(2225)&7
	line	283
	
l15129:	
;ms83fxx02_motor.c: 283: if(!Motor_CheckRunLimit())
	fcall	_Motor_CheckRunLimit
	iorlw	0
	skipz
	goto	u2151
	goto	u2150
u2151:
	goto	l8864
u2150:
	line	286
	
l15131:	
;ms83fxx02_motor.c: 284: {
;ms83fxx02_motor.c: 286: motor_timing_running_flag = 1;
	clrf	(_motor_timing_running_flag)
	incf	(_motor_timing_running_flag),f
	line	287
	
l15133:	
;ms83fxx02_motor.c: 287: motor_intr_count = 0;
	clrf	(_motor_intr_count)	;volatile
	line	289
	
l8864:	
	return
	opt stack 0
GLOBAL	__end_of_MotorOperationTimer_Stop
	__end_of_MotorOperationTimer_Stop:
;; =============== function _MotorOperationTimer_Stop ends ============

	signat	_MotorOperationTimer_Stop,88
	global	_KEY_DeInit
psect	text1666,local,class=CODE,delta=2
global __ptext1666
__ptext1666:

;; *************** function _KEY_DeInit *****************
;; Defined at:
;;		line 59 in file "MS83FXX02_KEY.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  GPIO_InitStr    2    2[BANK0 ] struct .
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_GPIO_Init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1666
	file	"MS83FXX02_KEY.C"
	line	59
	global	__size_of_KEY_DeInit
	__size_of_KEY_DeInit	equ	__end_of_KEY_DeInit-_KEY_DeInit
	
_KEY_DeInit:	
	opt	stack 1
; Regs used in _KEY_DeInit: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	61
	
l15111:	
;MS83FXX02_KEY.C: 60: GPIO_InitTypeDef GPIO_InitStruct;
;MS83FXX02_KEY.C: 61: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN;
	clrf	0+(KEY_DeInit@GPIO_InitStruct)+01h
	line	62
	
l15113:	
;MS83FXX02_KEY.C: 62: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000002);
	movlw	(02h)
	movwf	(KEY_DeInit@GPIO_InitStruct)
	line	63
	
l15115:	
;MS83FXX02_KEY.C: 63: GPIO_Init(GPIOC, &GPIO_InitStruct);
	movlw	(KEY_DeInit@GPIO_InitStruct)&0ffh
	movwf	(?_GPIO_Init)
	movlw	(01h)
	fcall	_GPIO_Init
	line	65
	
l15117:	
;MS83FXX02_KEY.C: 65: INTE = 0;
	bcf	(92/8),(92)&7
	line	66
	
l15119:	
;MS83FXX02_KEY.C: 66: key_status = 1;
	clrf	(_key_status)	;volatile
	incf	(_key_status),f	;volatile
	line	67
	
l15121:	
;MS83FXX02_KEY.C: 67: key_press = 0;
	clrf	(_key_press)	;volatile
	line	68
	
l15123:	
;MS83FXX02_KEY.C: 68: key_release = 0;
	clrf	(_key_release)	;volatile
	line	69
	
l15125:	
;MS83FXX02_KEY.C: 69: key_press_flag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_key_press_flag)	;volatile
	line	70
	
l5515:	
	return
	opt stack 0
GLOBAL	__end_of_KEY_DeInit
	__end_of_KEY_DeInit:
;; =============== function _KEY_DeInit ends ============

	signat	_KEY_DeInit,88
	global	_ChargeDetect_GetStatus
psect	text1667,local,class=CODE,delta=2
global __ptext1667
__ptext1667:

;; *************** function _ChargeDetect_GetStatus *****************
;; Defined at:
;;		line 60 in file "ms83fxx02_charge.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    3[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_GPIO_ReadInputDataBit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1667
	file	"ms83fxx02_charge.c"
	line	60
	global	__size_of_ChargeDetect_GetStatus
	__size_of_ChargeDetect_GetStatus	equ	__end_of_ChargeDetect_GetStatus-_ChargeDetect_GetStatus
	
_ChargeDetect_GetStatus:	
	opt	stack 1
; Regs used in _ChargeDetect_GetStatus: [wreg+status,2+status,0+pclath+cstack]
	line	61
	
l15091:	
;ms83fxx02_charge.c: 61: uint32_t i = 50;
	movlw	032h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ChargeDetect_GetStatus@i)
	clrf	(ChargeDetect_GetStatus@i+1)
	line	63
;ms83fxx02_charge.c: 63: while(i--)
	goto	l15105
	line	65
	
l15093:	
;ms83fxx02_charge.c: 64: {
;ms83fxx02_charge.c: 65: if(1 == GPIO_ReadInputDataBit(GPIOA, ((uint8_t)0x00000010)))
	movlw	(010h)
	movwf	(?_GPIO_ReadInputDataBit)
	movlw	(0)
	fcall	_GPIO_ReadInputDataBit
	xorlw	01h
	skipz
	goto	u2121
	goto	u2120
u2121:
	goto	l15105
u2120:
	line	67
	
l15095:	
;ms83fxx02_charge.c: 66: {
;ms83fxx02_charge.c: 67: charge_detect_count++;
	incf	(_charge_detect_count),f
	line	68
	
l15097:	
;ms83fxx02_charge.c: 68: if(charge_detect_count >= 30)
	movlw	(01Eh)
	subwf	(_charge_detect_count),w
	skipc
	goto	u2131
	goto	u2130
u2131:
	goto	l15105
u2130:
	line	70
	
l15099:	
;ms83fxx02_charge.c: 69: {
;ms83fxx02_charge.c: 70: charge_detect_count = 0;
	clrf	(_charge_detect_count)
	line	71
	
l15101:	
;ms83fxx02_charge.c: 71: return 1;
	movlw	(01h)
	goto	l2255
	line	63
	
l15105:	
	movlw	low(01h)
	subwf	(ChargeDetect_GetStatus@i),f
	movlw	high(01h)
	skipc
	decf	(ChargeDetect_GetStatus@i+1),f
	subwf	(ChargeDetect_GetStatus@i+1),f
	incf	((ChargeDetect_GetStatus@i)),w
	skipnz
	incf	((ChargeDetect_GetStatus@i+1)),w

	skipz
	goto	u2141
	goto	u2140
u2141:
	goto	l15093
u2140:
	line	76
	
l15107:	
;ms83fxx02_charge.c: 72: }
;ms83fxx02_charge.c: 73: }
;ms83fxx02_charge.c: 74: }
;ms83fxx02_charge.c: 76: return 0;
	movlw	(0)
	line	77
	
l2255:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeDetect_GetStatus
	__end_of_ChargeDetect_GetStatus:
;; =============== function _ChargeDetect_GetStatus ends ============

	signat	_ChargeDetect_GetStatus,89
	global	_EEPROM_RestoreMotorData
psect	text1668,local,class=CODE,delta=2
global __ptext1668
__ptext1668:

;; *************** function _EEPROM_RestoreMotorData *****************
;; Defined at:
;;		line 524 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_EEPROM_Read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1668
	file	"ms83fxx02_motor.c"
	line	524
	global	__size_of_EEPROM_RestoreMotorData
	__size_of_EEPROM_RestoreMotorData	equ	__end_of_EEPROM_RestoreMotorData-_EEPROM_RestoreMotorData
	
_EEPROM_RestoreMotorData:	
	opt	stack 1
; Regs used in _EEPROM_RestoreMotorData: [wreg+status,2+pclath+cstack]
	line	525
	
l15089:	
;ms83fxx02_motor.c: 525: motor_status = EEPROM_Read(0x12);
	movlw	(012h)
	fcall	_EEPROM_Read
	movwf	(_motor_status)
	line	526
;ms83fxx02_motor.c: 526: motor_intr_count = EEPROM_Read(0x13);
	movlw	(013h)
	fcall	_EEPROM_Read
	movwf	(_motor_intr_count)	;volatile
	line	527
;ms83fxx02_motor.c: 527: motor_oper_record = EEPROM_Read(0x14);
	movlw	(014h)
	fcall	_EEPROM_Read
	movwf	(_motor_oper_record)	;volatile
	clrf	(_motor_oper_record+1)	;volatile
	line	528
;ms83fxx02_motor.c: 528: motor_timing_running_flag = EEPROM_Read(0x15);
	movlw	(015h)
	fcall	_EEPROM_Read
	movwf	(_motor_timing_running_flag)
	line	529
	
l8916:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_RestoreMotorData
	__end_of_EEPROM_RestoreMotorData:
;; =============== function _EEPROM_RestoreMotorData ends ============

	signat	_EEPROM_RestoreMotorData,88
	global	_EEPROM_RestoreDeviceModeData
psect	text1669,local,class=CODE,delta=2
global __ptext1669
__ptext1669:

;; *************** function _EEPROM_RestoreDeviceModeData *****************
;; Defined at:
;;		line 125 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_EEPROM_Read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1669
	file	"ms83fxx02_pwr.c"
	line	125
	global	__size_of_EEPROM_RestoreDeviceModeData
	__size_of_EEPROM_RestoreDeviceModeData	equ	__end_of_EEPROM_RestoreDeviceModeData-_EEPROM_RestoreDeviceModeData
	
_EEPROM_RestoreDeviceModeData:	
	opt	stack 1
; Regs used in _EEPROM_RestoreDeviceModeData: [wreg+status,2+pclath+cstack]
	line	126
	
l15087:	
;ms83fxx02_pwr.c: 126: device_mode = EEPROM_Read(0x11);
	movlw	(011h)
	fcall	_EEPROM_Read
	movwf	(_device_mode)
	line	127
	
l10037:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_RestoreDeviceModeData
	__end_of_EEPROM_RestoreDeviceModeData:
;; =============== function _EEPROM_RestoreDeviceModeData ends ============

	signat	_EEPROM_RestoreDeviceModeData,88
	global	_EEPROM_GetFlag
psect	text1670,local,class=CODE,delta=2
global __ptext1670
__ptext1670:

;; *************** function _EEPROM_GetFlag *****************
;; Defined at:
;;		line 115 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_EEPROM_Read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1670
	file	"ms83fxx02_pwr.c"
	line	115
	global	__size_of_EEPROM_GetFlag
	__size_of_EEPROM_GetFlag	equ	__end_of_EEPROM_GetFlag-_EEPROM_GetFlag
	
_EEPROM_GetFlag:	
	opt	stack 1
; Regs used in _EEPROM_GetFlag: [wreg+status,2+pclath+cstack]
	line	116
	
l15083:	
;ms83fxx02_pwr.c: 116: return EEPROM_Read(0x16);
	movlw	(016h)
	fcall	_EEPROM_Read
	line	117
	
l10031:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_GetFlag
	__end_of_EEPROM_GetFlag:
;; =============== function _EEPROM_GetFlag ends ============

	signat	_EEPROM_GetFlag,89
	global	_LED_VoltageChargeOutput
psect	text1671,local,class=CODE,delta=2
global __ptext1671
__ptext1671:

;; *************** function _LED_VoltageChargeOutput *****************
;; Defined at:
;;		line 78 in file "ms83fxx02_led.c"
;; Parameters:    Size  Location     Type
;;  BitVal          1    wreg     enum E1499
;; Auto vars:     Size  Location     Type
;;  BitVal          1    6[BANK0 ] enum E1499
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_GPIO_WriteBit
;; This function is called by:
;;		_charge_control
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1671
	file	"ms83fxx02_led.c"
	line	78
	global	__size_of_LED_VoltageChargeOutput
	__size_of_LED_VoltageChargeOutput	equ	__end_of_LED_VoltageChargeOutput-_LED_VoltageChargeOutput
	
_LED_VoltageChargeOutput:	
	opt	stack 0
; Regs used in _LED_VoltageChargeOutput: [wreg+status,2+status,0+pclath+cstack]
;LED_VoltageChargeOutput@BitVal stored from wreg
	movwf	(LED_VoltageChargeOutput@BitVal)
	line	79
	
l15081:	
;ms83fxx02_led.c: 79: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000008), BitVal);
	movlw	(08h)
	movwf	(?_GPIO_WriteBit)
	movf	(LED_VoltageChargeOutput@BitVal),w
	movwf	0+(?_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	80
	
l6620:	
	return
	opt stack 0
GLOBAL	__end_of_LED_VoltageChargeOutput
	__end_of_LED_VoltageChargeOutput:
;; =============== function _LED_VoltageChargeOutput ends ============

	signat	_LED_VoltageChargeOutput,4216
	global	_EEPROM_Init
psect	text1672,local,class=CODE,delta=2
global __ptext1672
__ptext1672:

;; *************** function _EEPROM_Init *****************
;; Defined at:
;;		line 23 in file "ms83fxx02_eeprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 140/0
;;		On exit  : 60/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_EEPROM_Write
;; This function is called by:
;;		_Driver_Init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1672
	file	"ms83fxx02_eeprom.c"
	line	23
	global	__size_of_EEPROM_Init
	__size_of_EEPROM_Init	equ	__end_of_EEPROM_Init-_EEPROM_Init
	
_EEPROM_Init:	
	opt	stack 0
; Regs used in _EEPROM_Init: [wreg+status,2+status,0+pclath+cstack]
	line	24
	
l15079:	
;ms83fxx02_eeprom.c: 24: EEPROM_Write(0x55, 0xAA);
	movlw	(0AAh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_EEPROM_Write)
	movlw	(055h)
	fcall	_EEPROM_Write
	line	25
;ms83fxx02_eeprom.c: 25: EEPROM_Write(0x55, 0xAA);
	movlw	(0AAh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_EEPROM_Write)
	movlw	(055h)
	fcall	_EEPROM_Write
	line	26
	
l3327:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_Init
	__end_of_EEPROM_Init:
;; =============== function _EEPROM_Init ends ============

	signat	_EEPROM_Init,88
	global	_KEY_Init
psect	text1673,local,class=CODE,delta=2
global __ptext1673
__ptext1673:

;; *************** function _KEY_Init *****************
;; Defined at:
;;		line 73 in file "MS83FXX02_KEY.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  GPIO_InitStr    2    3[BANK0 ] struct .
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_GPIO_Init
;;		_GPIO_INTConfig
;; This function is called by:
;;		_Driver_Init
;; This function uses a non-reentrant model
;;
psect	text1673
	file	"MS83FXX02_KEY.C"
	line	73
	global	__size_of_KEY_Init
	__size_of_KEY_Init	equ	__end_of_KEY_Init-_KEY_Init
	
_KEY_Init:	
	opt	stack 0
; Regs used in _KEY_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	75
	
l15069:	
;MS83FXX02_KEY.C: 74: GPIO_InitTypeDef GPIO_InitStruct;
;MS83FXX02_KEY.C: 75: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN;
	clrf	0+(KEY_Init@GPIO_InitStruct)+01h
	line	76
	
l15071:	
;MS83FXX02_KEY.C: 76: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000002);
	movlw	(02h)
	movwf	(KEY_Init@GPIO_InitStruct)
	line	77
	
l15073:	
;MS83FXX02_KEY.C: 77: GPIO_Init(GPIOC, &GPIO_InitStruct);
	movlw	(KEY_Init@GPIO_InitStruct)&0ffh
	movwf	(?_GPIO_Init)
	movlw	(01h)
	fcall	_GPIO_Init
	line	80
	
l15075:	
;MS83FXX02_KEY.C: 80: INTEDG = 0;
	bcf	(1038/8)^080h,(1038)&7
	line	81
	
l15077:	
;MS83FXX02_KEY.C: 81: GPIO_INTConfig(GPIOC, ((uint8_t)0x00000002), ENABLE);
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_GPIO_INTConfig)
	clrf	0+(?_GPIO_INTConfig)+01h
	incf	0+(?_GPIO_INTConfig)+01h,f
	movlw	(01h)
	fcall	_GPIO_INTConfig
	line	82
	
l5518:	
	return
	opt stack 0
GLOBAL	__end_of_KEY_Init
	__end_of_KEY_Init:
;; =============== function _KEY_Init ends ============

	signat	_KEY_Init,88
	global	_LED_Init
psect	text1674,local,class=CODE,delta=2
global __ptext1674
__ptext1674:

;; *************** function _LED_Init *****************
;; Defined at:
;;		line 24 in file "ms83fxx02_led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  GPIO_InitStr    2    6[BANK0 ] struct .
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_GPIO_Init
;;		_GPIO_WriteBit
;; This function is called by:
;;		_Driver_Init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1674
	file	"ms83fxx02_led.c"
	line	24
	global	__size_of_LED_Init
	__size_of_LED_Init	equ	__end_of_LED_Init-_LED_Init
	
_LED_Init:	
	opt	stack 1
; Regs used in _LED_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	27
	
l15041:	
;ms83fxx02_led.c: 25: GPIO_InitTypeDef GPIO_InitStruct;
;ms83fxx02_led.c: 27: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	bcf	status, 5	;RP0=0, select bank0
	clrf	0+(LED_Init@GPIO_InitStruct)+01h
	incf	0+(LED_Init@GPIO_InitStruct)+01h,f
	line	28
	
l15043:	
;ms83fxx02_led.c: 28: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000004);
	movlw	(04h)
	movwf	(LED_Init@GPIO_InitStruct)
	line	29
	
l15045:	
;ms83fxx02_led.c: 29: GPIO_Init(GPIOA, &GPIO_InitStruct);
	movlw	(LED_Init@GPIO_InitStruct)&0ffh
	movwf	(?_GPIO_Init)
	movlw	(0)
	fcall	_GPIO_Init
	line	31
	
l15047:	
;ms83fxx02_led.c: 31: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	bcf	status, 5	;RP0=0, select bank0
	clrf	0+(LED_Init@GPIO_InitStruct)+01h
	incf	0+(LED_Init@GPIO_InitStruct)+01h,f
	line	32
	
l15049:	
;ms83fxx02_led.c: 32: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000008);
	movlw	(08h)
	movwf	(LED_Init@GPIO_InitStruct)
	line	33
;ms83fxx02_led.c: 33: GPIO_Init(GPIOA, &GPIO_InitStruct);
	movlw	(LED_Init@GPIO_InitStruct)&0ffh
	movwf	(?_GPIO_Init)
	movlw	(0)
	fcall	_GPIO_Init
	line	35
	
l15051:	
;ms83fxx02_led.c: 35: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	bcf	status, 5	;RP0=0, select bank0
	clrf	0+(LED_Init@GPIO_InitStruct)+01h
	incf	0+(LED_Init@GPIO_InitStruct)+01h,f
	line	36
	
l15053:	
;ms83fxx02_led.c: 36: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000001);
	clrf	(LED_Init@GPIO_InitStruct)
	incf	(LED_Init@GPIO_InitStruct),f
	line	37
;ms83fxx02_led.c: 37: GPIO_Init(GPIOC, &GPIO_InitStruct);
	movlw	(LED_Init@GPIO_InitStruct)&0ffh
	movwf	(?_GPIO_Init)
	movlw	(01h)
	fcall	_GPIO_Init
	line	43
	
l15055:	
;ms83fxx02_led.c: 43: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	bcf	status, 5	;RP0=0, select bank0
	clrf	0+(LED_Init@GPIO_InitStruct)+01h
	incf	0+(LED_Init@GPIO_InitStruct)+01h,f
	line	44
	
l15057:	
;ms83fxx02_led.c: 44: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000008);
	movlw	(08h)
	movwf	(LED_Init@GPIO_InitStruct)
	line	45
	
l15059:	
;ms83fxx02_led.c: 45: GPIO_Init(GPIOC, &GPIO_InitStruct);
	movlw	(LED_Init@GPIO_InitStruct)&0ffh
	movwf	(?_GPIO_Init)
	movlw	(01h)
	fcall	_GPIO_Init
	line	47
	
l15061:	
;ms83fxx02_led.c: 47: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000004), Bit_RESET);
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	48
	
l15063:	
;ms83fxx02_led.c: 48: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000008), Bit_RESET);
	movlw	(08h)
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	49
	
l15065:	
;ms83fxx02_led.c: 49: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), Bit_RESET);
	clrf	(?_GPIO_WriteBit)
	incf	(?_GPIO_WriteBit),f
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	52
	
l15067:	
;ms83fxx02_led.c: 52: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000008), Bit_RESET);
	movlw	(08h)
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	53
	
l6608:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Init
	__end_of_LED_Init:
;; =============== function _LED_Init ends ============

	signat	_LED_Init,88
	global	___lwdiv
psect	text1675,local,class=CODE,delta=2
global __ptext1675
__ptext1675:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[BANK0 ] unsigned int 
;;  counter         1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1675
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 0
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l14873:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l14875:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u1891
	goto	u1890
u1891:
	goto	l14895
u1890:
	line	11
	
l14877:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l14881
	line	13
	
l14879:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l14881:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1901
	goto	u1900
u1901:
	goto	l14879
u1900:
	line	17
	
l14883:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l14885:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1915
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1915:
	skipc
	goto	u1911
	goto	u1910
u1911:
	goto	l14891
u1910:
	line	19
	
l14887:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l14889:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l14891:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l14893:	
	decfsz	(___lwdiv@counter),f
	goto	u1921
	goto	u1920
u1921:
	goto	l14883
u1920:
	line	25
	
l14895:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l12902:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_delay_us
psect	text1676,local,class=CODE,delta=2
global __ptext1676
__ptext1676:

;; *************** function _delay_us *****************
;; Defined at:
;;		line 60 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;  delay_us        2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    2[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ADC_ReadData
;; This function uses a non-reentrant model
;;
psect	text1676
	file	"ms83fxx02_pwr.c"
	line	60
	global	__size_of_delay_us
	__size_of_delay_us	equ	__end_of_delay_us-_delay_us
	
_delay_us:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _delay_us: [wreg+status,2+status,0]
	line	61
	
l14867:	
;ms83fxx02_pwr.c: 61: uint32_t i = 0;
	clrf	(delay_us@i)
	clrf	(delay_us@i+1)
	line	62
;ms83fxx02_pwr.c: 62: for(i= 0; i<delay_us; i++)
	clrf	(delay_us@i)
	clrf	(delay_us@i+1)
	goto	l14871
	line	63
	
l10014:	
	line	64
# 64 "ms83fxx02_pwr.c"
nop ;#
	line	65
# 65 "ms83fxx02_pwr.c"
nop ;#
	line	66
# 66 "ms83fxx02_pwr.c"
nop ;#
	line	67
# 67 "ms83fxx02_pwr.c"
nop ;#
psect	text1676
	line	62
	
l14869:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(delay_us@i),f
	skipnz
	incf	(delay_us@i+1),f
	
l14871:	
	movf	(delay_us@delay_us+1),w
	subwf	(delay_us@i+1),w
	skipz
	goto	u1885
	movf	(delay_us@delay_us),w
	subwf	(delay_us@i),w
u1885:
	skipc
	goto	u1881
	goto	u1880
u1881:
	goto	l10014
u1880:
	line	69
	
l10016:	
	return
	opt stack 0
GLOBAL	__end_of_delay_us
	__end_of_delay_us:
;; =============== function _delay_us ends ============

	signat	_delay_us,4216
	global	_SwitchModeTimer_GetINTStatus
psect	text1677,local,class=CODE,delta=2
global __ptext1677
__ptext1677:

;; *************** function _SwitchModeTimer_GetINTStatus *****************
;; Defined at:
;;		line 100 in file "ms83fxx02_tim.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E1477
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1677
	file	"ms83fxx02_tim.c"
	line	100
	global	__size_of_SwitchModeTimer_GetINTStatus
	__size_of_SwitchModeTimer_GetINTStatus	equ	__end_of_SwitchModeTimer_GetINTStatus-_SwitchModeTimer_GetINTStatus
	
_SwitchModeTimer_GetINTStatus:	
	opt	stack 1
; Regs used in _SwitchModeTimer_GetINTStatus: [wreg+status,2]
	line	101
	
l14853:	
;ms83fxx02_tim.c: 101: if(switch_mode_time_out)
	bcf	status, 6	;RP1=0, select bank0
	movf	(_switch_mode_time_out),w	;volatile
	skipz
	goto	u1870
	goto	l14863
u1870:
	line	103
	
l14855:	
;ms83fxx02_tim.c: 102: {
;ms83fxx02_tim.c: 103: switch_mode_time_out = 0;
	clrf	(_switch_mode_time_out)	;volatile
	line	105
	
l14857:	
;ms83fxx02_tim.c: 105: return SET;
	movlw	(01h)
	goto	l11131
	line	109
	
l14863:	
;ms83fxx02_tim.c: 107: else
;ms83fxx02_tim.c: 108: {
;ms83fxx02_tim.c: 109: return RESET;
	movlw	(0)
	line	111
	
l11131:	
	return
	opt stack 0
GLOBAL	__end_of_SwitchModeTimer_GetINTStatus
	__end_of_SwitchModeTimer_GetINTStatus:
;; =============== function _SwitchModeTimer_GetINTStatus ends ============

	signat	_SwitchModeTimer_GetINTStatus,89
	global	_MotorOperationTimer_Init
psect	text1678,local,class=CODE,delta=2
global __ptext1678
__ptext1678:

;; *************** function _MotorOperationTimer_Init *****************
;; Defined at:
;;		line 215 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  time            1    wreg     enum E1560
;; Auto vars:     Size  Location     Type
;;  time            1    0[BANK0 ] enum E1560
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/40
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1678
	file	"ms83fxx02_motor.c"
	line	215
	global	__size_of_MotorOperationTimer_Init
	__size_of_MotorOperationTimer_Init	equ	__end_of_MotorOperationTimer_Init-_MotorOperationTimer_Init
	
_MotorOperationTimer_Init:	
	opt	stack 1
; Regs used in _MotorOperationTimer_Init: [wreg+status,2]
;MotorOperationTimer_Init@time stored from wreg
	line	217
	movwf	(MotorOperationTimer_Init@time)
	
l14827:	
;ms83fxx02_motor.c: 217: TMR4ON = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2226/8)^0100h,(2226)&7
	line	219
	
l14829:	
;ms83fxx02_motor.c: 219: if(time == MotorOperationTimer_30s)
	bcf	status, 6	;RP1=0, select bank0
	decf	(MotorOperationTimer_Init@time),w
	skipz
	goto	u1851
	goto	u1850
u1851:
	goto	l14833
u1850:
	line	222
	
l14831:	
;ms83fxx02_motor.c: 220: {
;ms83fxx02_motor.c: 222: PWM4CR0 = 0b01110010;
	movlw	(072h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(277)^0100h	;volatile
	line	225
;ms83fxx02_motor.c: 225: PWM4CR1 = 0b00111000;
	movlw	(038h)
	movwf	(278)^0100h	;volatile
	line	230
;ms83fxx02_motor.c: 230: T4CKDIV = 182;
	movlw	(0B6h)
	movwf	(279)^0100h	;volatile
	line	231
;ms83fxx02_motor.c: 231: }
	goto	l8857
	line	232
	
l14833:	
;ms83fxx02_motor.c: 232: else if(time == MotorOperationTimer_0_3s)
	movf	(MotorOperationTimer_Init@time),w
	xorlw	02h
	skipz
	goto	u1861
	goto	u1860
u1861:
	goto	l14837
u1860:
	line	235
	
l14835:	
;ms83fxx02_motor.c: 233: {
;ms83fxx02_motor.c: 235: PWM4CR0 = 0b01100010;
	movlw	(062h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(277)^0100h	;volatile
	line	237
;ms83fxx02_motor.c: 237: PWM4CR1 = 0b00111000;
	movlw	(038h)
	movwf	(278)^0100h	;volatile
	line	241
;ms83fxx02_motor.c: 241: T4CKDIV = 8;
	movlw	(08h)
	movwf	(279)^0100h	;volatile
	line	242
;ms83fxx02_motor.c: 242: }
	goto	l8857
	line	246
	
l14837:	
;ms83fxx02_motor.c: 243: else
;ms83fxx02_motor.c: 244: {
;ms83fxx02_motor.c: 246: PWM4CR0 = 0b01110010;
	movlw	(072h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(277)^0100h	;volatile
	line	249
;ms83fxx02_motor.c: 249: PWM4CR1 = 0b00111000;
	movlw	(038h)
	movwf	(278)^0100h	;volatile
	line	252
;ms83fxx02_motor.c: 252: T4CKDIV = 243;
	movlw	(0F3h)
	movwf	(279)^0100h	;volatile
	line	253
	
l8857:	
	line	255
;ms83fxx02_motor.c: 253: }
;ms83fxx02_motor.c: 255: TMR4H = 0x0F;
	movlw	(0Fh)
	movwf	(275)^0100h	;volatile
	line	256
	
l14839:	
;ms83fxx02_motor.c: 256: TMR4L = 0;
	clrf	(274)^0100h	;volatile
	line	257
	
l14841:	
;ms83fxx02_motor.c: 257: PR4L = 0xFF;
	movlw	(0FFh)
	movwf	(276)^0100h	;volatile
	line	260
	
l14843:	
;ms83fxx02_motor.c: 260: TMR4IF = 0;
	bcf	(2224/8)^0100h,(2224)&7
	line	263
	
l14845:	
;ms83fxx02_motor.c: 263: TMR4ON = 1;
	bsf	(2226/8)^0100h,(2226)&7
	line	266
	
l14847:	
;ms83fxx02_motor.c: 266: TMR4IE = 1;
	bsf	(2225/8)^0100h,(2225)&7
	line	267
	
l14849:	
;ms83fxx02_motor.c: 267: PEIE = 1;
	bsf	(94/8),(94)&7
	line	268
	
l14851:	
;ms83fxx02_motor.c: 268: GIE = 1;
	bsf	(95/8),(95)&7
	line	269
	
l8860:	
	return
	opt stack 0
GLOBAL	__end_of_MotorOperationTimer_Init
	__end_of_MotorOperationTimer_Init:
;; =============== function _MotorOperationTimer_Init ends ============

	signat	_MotorOperationTimer_Init,4216
	global	_Motor_CheckRunLimit
psect	text1679,local,class=CODE,delta=2
global __ptext1679
__ptext1679:

;; *************** function _Motor_CheckRunLimit *****************
;; Defined at:
;;		line 196 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MotorOperationTimer_Stop
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1679
	file	"ms83fxx02_motor.c"
	line	196
	global	__size_of_Motor_CheckRunLimit
	__size_of_Motor_CheckRunLimit	equ	__end_of_Motor_CheckRunLimit-_Motor_CheckRunLimit
	
_Motor_CheckRunLimit:	
	opt	stack 1
; Regs used in _Motor_CheckRunLimit: [wreg]
	line	200
	
l14817:	
;ms83fxx02_motor.c: 200: if(motor_oper_record >= 120)
	movlw	high(078h)
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_motor_oper_record+1),w	;volatile
	movlw	low(078h)
	skipnz
	subwf	(_motor_oper_record),w	;volatile
	skipc
	goto	u1841
	goto	u1840
u1841:
	goto	l14823
u1840:
	line	202
	
l14819:	
;ms83fxx02_motor.c: 201: {
;ms83fxx02_motor.c: 202: return 1;
	movlw	(01h)
	goto	l8853
	line	204
	
l14823:	
;ms83fxx02_motor.c: 203: }
;ms83fxx02_motor.c: 204: return 0;
	movlw	(0)
	line	205
	
l8853:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_CheckRunLimit
	__end_of_Motor_CheckRunLimit:
;; =============== function _Motor_CheckRunLimit ends ============

	signat	_Motor_CheckRunLimit,89
	global	_SwitchModeTimer_INTConfig
psect	text1680,local,class=CODE,delta=2
global __ptext1680
__ptext1680:

;; *************** function _SwitchModeTimer_INTConfig *****************
;; Defined at:
;;		line 79 in file "ms83fxx02_tim.c"
;; Parameters:    Size  Location     Type
;;  NewState        1    wreg     enum E1482
;; Auto vars:     Size  Location     Type
;;  NewState        1    0[BANK0 ] enum E1482
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/40
;;		On exit  : 60/40
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_Start
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1680
	file	"ms83fxx02_tim.c"
	line	79
	global	__size_of_SwitchModeTimer_INTConfig
	__size_of_SwitchModeTimer_INTConfig	equ	__end_of_SwitchModeTimer_INTConfig-_SwitchModeTimer_INTConfig
	
_SwitchModeTimer_INTConfig:	
	opt	stack 1
; Regs used in _SwitchModeTimer_INTConfig: [wreg]
;SwitchModeTimer_INTConfig@NewState stored from wreg
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SwitchModeTimer_INTConfig@NewState)
	line	80
	
l14813:	
;ms83fxx02_tim.c: 80: if(NewState != DISABLE)
	movf	(SwitchModeTimer_INTConfig@NewState),w
	skipz
	goto	u1830
	goto	l11125
u1830:
	line	83
	
l14815:	
;ms83fxx02_tim.c: 81: {
;ms83fxx02_tim.c: 83: TMR5IE = 1;
	bsf	status, 6	;RP1=1, select bank2
	bsf	(2273/8)^0100h,(2273)&7
	line	84
;ms83fxx02_tim.c: 84: PEIE = 1;
	bsf	(94/8),(94)&7
	line	85
;ms83fxx02_tim.c: 85: GIE = 1;
	bsf	(95/8),(95)&7
	line	86
;ms83fxx02_tim.c: 86: }
	goto	l11127
	line	87
	
l11125:	
	line	90
;ms83fxx02_tim.c: 87: else
;ms83fxx02_tim.c: 88: {
;ms83fxx02_tim.c: 90: TMR5IE = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2273/8)^0100h,(2273)&7
	line	92
	
l11127:	
	return
	opt stack 0
GLOBAL	__end_of_SwitchModeTimer_INTConfig
	__end_of_SwitchModeTimer_INTConfig:
;; =============== function _SwitchModeTimer_INTConfig ends ============

	signat	_SwitchModeTimer_INTConfig,4216
	global	_SwitchModeTimer_Cmd
psect	text1681,local,class=CODE,delta=2
global __ptext1681
__ptext1681:

;; *************** function _SwitchModeTimer_Cmd *****************
;; Defined at:
;;		line 39 in file "ms83fxx02_tim.c"
;; Parameters:    Size  Location     Type
;;  NewState        1    wreg     enum E1482
;; Auto vars:     Size  Location     Type
;;  NewState        1    0[BANK0 ] enum E1482
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 60/40
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_Start
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1681
	file	"ms83fxx02_tim.c"
	line	39
	global	__size_of_SwitchModeTimer_Cmd
	__size_of_SwitchModeTimer_Cmd	equ	__end_of_SwitchModeTimer_Cmd-_SwitchModeTimer_Cmd
	
_SwitchModeTimer_Cmd:	
	opt	stack 1
; Regs used in _SwitchModeTimer_Cmd: [wreg+status,2]
;SwitchModeTimer_Cmd@NewState stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(SwitchModeTimer_Cmd@NewState)
	line	40
	
l14797:	
;ms83fxx02_tim.c: 40: switch_mode_time_out = 0;
	clrf	(_switch_mode_time_out)	;volatile
	line	42
	
l14799:	
;ms83fxx02_tim.c: 42: if(NewState != DISABLE)
	movf	(SwitchModeTimer_Cmd@NewState),w
	skipz
	goto	u1820
	goto	l11120
u1820:
	line	45
	
l14801:	
;ms83fxx02_tim.c: 43: {
;ms83fxx02_tim.c: 45: TMR5ON = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2274/8)^0100h,(2274)&7
	line	47
	
l14803:	
;ms83fxx02_tim.c: 47: PWM5CR0 = 0b01110010;
	movlw	(072h)
	movwf	(283)^0100h	;volatile
	line	50
;ms83fxx02_tim.c: 50: PWM5CR1 = 0b00111000;
	movlw	(038h)
	movwf	(284)^0100h	;volatile
	line	53
;ms83fxx02_tim.c: 53: T5CKDIV = 59;
	movlw	(03Bh)
	movwf	(285)^0100h	;volatile
	line	55
;ms83fxx02_tim.c: 55: TMR5H = 0x0F;
	movlw	(0Fh)
	movwf	(281)^0100h	;volatile
	line	56
	
l14805:	
;ms83fxx02_tim.c: 56: TMR5L = 0;
	clrf	(280)^0100h	;volatile
	line	57
	
l14807:	
;ms83fxx02_tim.c: 57: PR5L = 0xFF;
	movlw	(0FFh)
	movwf	(282)^0100h	;volatile
	line	60
	
l14809:	
;ms83fxx02_tim.c: 60: TMR5IF = 0;
	bcf	(2272/8)^0100h,(2272)&7
	line	63
	
l14811:	
;ms83fxx02_tim.c: 63: TMR5ON = 1;
	bsf	(2274/8)^0100h,(2274)&7
	line	64
;ms83fxx02_tim.c: 64: }
	goto	l11122
	line	65
	
l11120:	
	line	68
;ms83fxx02_tim.c: 65: else
;ms83fxx02_tim.c: 66: {
;ms83fxx02_tim.c: 68: TMR5ON = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2274/8)^0100h,(2274)&7
	line	70
	
l11122:	
	return
	opt stack 0
GLOBAL	__end_of_SwitchModeTimer_Cmd
	__end_of_SwitchModeTimer_Cmd:
;; =============== function _SwitchModeTimer_Cmd ends ============

	signat	_SwitchModeTimer_Cmd,4216
	global	_Motor_Init
psect	text1682,local,class=CODE,delta=2
global __ptext1682
__ptext1682:

;; *************** function _Motor_Init *****************
;; Defined at:
;;		line 65 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     enum E1554
;; Auto vars:     Size  Location     Type
;;  status          1    0[BANK0 ] enum E1554
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 40/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_Start
;; This function uses a non-reentrant model
;;
psect	text1682
	file	"ms83fxx02_motor.c"
	line	65
	global	__size_of_Motor_Init
	__size_of_Motor_Init	equ	__end_of_Motor_Init-_Motor_Init
	
_Motor_Init:	
	opt	stack 0
; Regs used in _Motor_Init: [wreg+status,2+status,0]
;Motor_Init@status stored from wreg
	line	67
	movwf	(Motor_Init@status)
	
l14761:	
;ms83fxx02_motor.c: 67: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	70
	
l14763:	
;ms83fxx02_motor.c: 70: CMCON0 |= 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(25),f	;volatile
	line	71
	
l14765:	
;ms83fxx02_motor.c: 71: T2CKSRC = 0;
	bcf	(221/8),(221)&7
	line	74
	
l14767:	
;ms83fxx02_motor.c: 74: TMR2 = 0;
	clrf	(17)	;volatile
	line	76
	
l14769:	
;ms83fxx02_motor.c: 76: T2CON = 0x03;
	movlw	(03h)
	movwf	(18)	;volatile
	line	78
	
l14771:	
;ms83fxx02_motor.c: 78: PR2 = 0x9C;
	movlw	(09Ch)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	79
	
l14773:	
;ms83fxx02_motor.c: 79: if(status == MOTOR_MODE_STOP)
	bcf	status, 5	;RP0=0, select bank0
	decf	(Motor_Init@status),w
	skipz
	goto	u1771
	goto	u1770
u1771:
	goto	l14779
u1770:
	goto	l8822
	line	83
	
l14779:	
;ms83fxx02_motor.c: 83: else if(status == MOTOR_MODE_DUTY_80)
	movf	(Motor_Init@status),w
	xorlw	04h
	skipz
	goto	u1781
	goto	u1780
u1781:
	goto	l14783
u1780:
	line	86
	
l14781:	
;ms83fxx02_motor.c: 84: {
;ms83fxx02_motor.c: 86: CCPR1L = 0x7D;
	movlw	(07Dh)
	movwf	(19)	;volatile
	line	87
;ms83fxx02_motor.c: 87: CCP1CON = 0x8D | (0x00 << 4);
	movlw	(08Dh)
	movwf	(21)	;volatile
	line	88
;ms83fxx02_motor.c: 88: }
	goto	l8823
	line	89
	
l14783:	
;ms83fxx02_motor.c: 89: else if(status == MOTOR_MODE_DUTY_90)
	movf	(Motor_Init@status),w
	xorlw	03h
	skipz
	goto	u1791
	goto	u1790
u1791:
	goto	l14787
u1790:
	line	92
	
l14785:	
;ms83fxx02_motor.c: 90: {
;ms83fxx02_motor.c: 92: CCPR1L = 0x8C;
	movlw	(08Ch)
	movwf	(19)	;volatile
	line	93
;ms83fxx02_motor.c: 93: CCP1CON = 0x8D | (0x00 << 4);
	movlw	(08Dh)
	movwf	(21)	;volatile
	line	94
;ms83fxx02_motor.c: 94: }
	goto	l8823
	line	97
	
l14787:	
;ms83fxx02_motor.c: 95: else
;ms83fxx02_motor.c: 96: {
;ms83fxx02_motor.c: 97: if(status == MOTOR_MODE_DUTY_100)
	movf	(Motor_Init@status),w
	xorlw	02h
	skipz
	goto	u1801
	goto	u1800
u1801:
	goto	l8823
u1800:
	line	99
	
l14789:	
;ms83fxx02_motor.c: 98: {
;ms83fxx02_motor.c: 99: CCP1CON = 0;
	clrf	(21)	;volatile
	line	100
	
l14791:	
;ms83fxx02_motor.c: 100: TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1084/8)^080h,(1084)&7
	line	102
	
l14793:	
;ms83fxx02_motor.c: 102: PC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(60/8),(60)&7
	goto	l8822
	line	106
	
l8823:	
	line	109
;ms83fxx02_motor.c: 105: }
;ms83fxx02_motor.c: 106: }
;ms83fxx02_motor.c: 109: TMR2IF = 0;
	bcf	(97/8),(97)&7
	line	110
;ms83fxx02_motor.c: 110: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	111
;ms83fxx02_motor.c: 111: while(TMR2IF == 0){;}
	
l8829:	
	btfss	(97/8),(97)&7
	goto	u1811
	goto	u1810
u1811:
	goto	l8829
u1810:
	
l8831:	
	line	113
;ms83fxx02_motor.c: 113: TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1084/8)^080h,(1084)&7
	line	114
	
l8822:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_Init
	__end_of_Motor_Init:
;; =============== function _Motor_Init ends ============

	signat	_Motor_Init,4216
	global	_LEDTimer_GetRunLimitINTStatus
psect	text1683,local,class=CODE,delta=2
global __ptext1683
__ptext1683:

;; *************** function _LEDTimer_GetRunLimitINTStatus *****************
;; Defined at:
;;		line 134 in file "ms83fxx02_led_timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E1477
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 60/40
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1683
	file	"ms83fxx02_led_timer.c"
	line	134
	global	__size_of_LEDTimer_GetRunLimitINTStatus
	__size_of_LEDTimer_GetRunLimitINTStatus	equ	__end_of_LEDTimer_GetRunLimitINTStatus-_LEDTimer_GetRunLimitINTStatus
	
_LEDTimer_GetRunLimitINTStatus:	
	opt	stack 1
; Regs used in _LEDTimer_GetRunLimitINTStatus: [wreg+status,2]
	line	135
	
l14747:	
;ms83fxx02_led_timer.c: 135: if(run_limit_int_status)
	bcf	status, 6	;RP1=0, select bank0
	movf	(_run_limit_int_status),w	;volatile
	skipz
	goto	u1760
	goto	l14757
u1760:
	line	137
	
l14749:	
;ms83fxx02_led_timer.c: 136: {
;ms83fxx02_led_timer.c: 137: run_limit_int_status = 0;
	clrf	(_run_limit_int_status)	;volatile
	line	139
	
l14751:	
;ms83fxx02_led_timer.c: 139: return SET;
	movlw	(01h)
	goto	l7711
	line	143
	
l14757:	
;ms83fxx02_led_timer.c: 141: else
;ms83fxx02_led_timer.c: 142: {
;ms83fxx02_led_timer.c: 143: return RESET;
	movlw	(0)
	line	145
	
l7711:	
	return
	opt stack 0
GLOBAL	__end_of_LEDTimer_GetRunLimitINTStatus
	__end_of_LEDTimer_GetRunLimitINTStatus:
;; =============== function _LEDTimer_GetRunLimitINTStatus ends ============

	signat	_LEDTimer_GetRunLimitINTStatus,89
	global	_LEDTimer_GetINTStatus
psect	text1684,local,class=CODE,delta=2
global __ptext1684
__ptext1684:

;; *************** function _LEDTimer_GetINTStatus *****************
;; Defined at:
;;		line 115 in file "ms83fxx02_led_timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E1477
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 160/40
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1684
	file	"ms83fxx02_led_timer.c"
	line	115
	global	__size_of_LEDTimer_GetINTStatus
	__size_of_LEDTimer_GetINTStatus	equ	__end_of_LEDTimer_GetINTStatus-_LEDTimer_GetINTStatus
	
_LEDTimer_GetINTStatus:	
	opt	stack 0
; Regs used in _LEDTimer_GetINTStatus: [wreg+status,2]
	line	116
	
l14733:	
;ms83fxx02_led_timer.c: 116: if(led_timer_int_status)
	bcf	status, 6	;RP1=0, select bank0
	movf	(_led_timer_int_status),w	;volatile
	skipz
	goto	u1750
	goto	l14743
u1750:
	line	118
	
l14735:	
;ms83fxx02_led_timer.c: 117: {
;ms83fxx02_led_timer.c: 118: led_timer_int_status = 0;
	clrf	(_led_timer_int_status)	;volatile
	line	120
	
l14737:	
;ms83fxx02_led_timer.c: 120: return SET;
	movlw	(01h)
	goto	l7706
	line	124
	
l14743:	
;ms83fxx02_led_timer.c: 122: else
;ms83fxx02_led_timer.c: 123: {
;ms83fxx02_led_timer.c: 124: return RESET;
	movlw	(0)
	line	126
	
l7706:	
	return
	opt stack 0
GLOBAL	__end_of_LEDTimer_GetINTStatus
	__end_of_LEDTimer_GetINTStatus:
;; =============== function _LEDTimer_GetINTStatus ends ============

	signat	_LEDTimer_GetINTStatus,89
	global	_LEDTimer_GetOperationStatus
psect	text1685,local,class=CODE,delta=2
global __ptext1685
__ptext1685:

;; *************** function _LEDTimer_GetOperationStatus *****************
;; Defined at:
;;		line 105 in file "ms83fxx02_led_timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/40
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_HandleStatusChangeEvt
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1685
	file	"ms83fxx02_led_timer.c"
	line	105
	global	__size_of_LEDTimer_GetOperationStatus
	__size_of_LEDTimer_GetOperationStatus	equ	__end_of_LEDTimer_GetOperationStatus-_LEDTimer_GetOperationStatus
	
_LEDTimer_GetOperationStatus:	
	opt	stack 0
; Regs used in _LEDTimer_GetOperationStatus: [wreg]
	line	106
	
l14729:	
;ms83fxx02_led_timer.c: 106: return TMR3ON;
	movlw	0
	bsf	status, 6	;RP1=1, select bank2
	btfsc	(2178/8)^0100h,(2178)&7
	movlw	1
	line	107
	
l7702:	
	return
	opt stack 0
GLOBAL	__end_of_LEDTimer_GetOperationStatus
	__end_of_LEDTimer_GetOperationStatus:
;; =============== function _LEDTimer_GetOperationStatus ends ============

	signat	_LEDTimer_GetOperationStatus,89
	global	_LEDTimer_INTConfig
psect	text1686,local,class=CODE,delta=2
global __ptext1686
__ptext1686:

;; *************** function _LEDTimer_INTConfig *****************
;; Defined at:
;;		line 84 in file "ms83fxx02_led_timer.c"
;; Parameters:    Size  Location     Type
;;  NewState        1    wreg     enum E1482
;; Auto vars:     Size  Location     Type
;;  NewState        1    0[BANK0 ] enum E1482
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/40
;;		On exit  : 60/40
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_HandleStatusChangeEvt
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1686
	file	"ms83fxx02_led_timer.c"
	line	84
	global	__size_of_LEDTimer_INTConfig
	__size_of_LEDTimer_INTConfig	equ	__end_of_LEDTimer_INTConfig-_LEDTimer_INTConfig
	
_LEDTimer_INTConfig:	
	opt	stack 0
; Regs used in _LEDTimer_INTConfig: [wreg]
;LEDTimer_INTConfig@NewState stored from wreg
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LEDTimer_INTConfig@NewState)
	line	85
	
l14725:	
;ms83fxx02_led_timer.c: 85: if(NewState != DISABLE)
	movf	(LEDTimer_INTConfig@NewState),w
	skipz
	goto	u1740
	goto	l7697
u1740:
	line	88
	
l14727:	
;ms83fxx02_led_timer.c: 86: {
;ms83fxx02_led_timer.c: 88: TMR3IE = 1;
	bsf	status, 6	;RP1=1, select bank2
	bsf	(2177/8)^0100h,(2177)&7
	line	89
;ms83fxx02_led_timer.c: 89: PEIE = 1;
	bsf	(94/8),(94)&7
	line	90
;ms83fxx02_led_timer.c: 90: GIE = 1;
	bsf	(95/8),(95)&7
	line	91
;ms83fxx02_led_timer.c: 91: }
	goto	l7699
	line	92
	
l7697:	
	line	95
;ms83fxx02_led_timer.c: 92: else
;ms83fxx02_led_timer.c: 93: {
;ms83fxx02_led_timer.c: 95: TMR3IE = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2177/8)^0100h,(2177)&7
	line	97
	
l7699:	
	return
	opt stack 0
GLOBAL	__end_of_LEDTimer_INTConfig
	__end_of_LEDTimer_INTConfig:
;; =============== function _LEDTimer_INTConfig ends ============

	signat	_LEDTimer_INTConfig,4216
	global	_LEDTimer_Cmd
psect	text1687,local,class=CODE,delta=2
global __ptext1687
__ptext1687:

;; *************** function _LEDTimer_Cmd *****************
;; Defined at:
;;		line 42 in file "ms83fxx02_led_timer.c"
;; Parameters:    Size  Location     Type
;;  NewState        1    wreg     enum E1482
;; Auto vars:     Size  Location     Type
;;  NewState        1    0[BANK0 ] enum E1482
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 20/40
;;		On exit  : 60/40
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_HandleStatusChangeEvt
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1687
	file	"ms83fxx02_led_timer.c"
	line	42
	global	__size_of_LEDTimer_Cmd
	__size_of_LEDTimer_Cmd	equ	__end_of_LEDTimer_Cmd-_LEDTimer_Cmd
	
_LEDTimer_Cmd:	
	opt	stack 0
; Regs used in _LEDTimer_Cmd: [wreg+status,2]
;LEDTimer_Cmd@NewState stored from wreg
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LEDTimer_Cmd@NewState)
	line	43
	
l14709:	
;ms83fxx02_led_timer.c: 43: led_timer_int_status = 0;
	clrf	(_led_timer_int_status)	;volatile
	line	44
;ms83fxx02_led_timer.c: 44: run_limit_int_status = 0;
	clrf	(_run_limit_int_status)	;volatile
	line	46
	
l14711:	
;ms83fxx02_led_timer.c: 46: if(NewState != DISABLE)
	movf	(LEDTimer_Cmd@NewState),w
	skipz
	goto	u1730
	goto	l7692
u1730:
	line	49
	
l14713:	
;ms83fxx02_led_timer.c: 47: {
;ms83fxx02_led_timer.c: 49: TMR3ON = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2178/8)^0100h,(2178)&7
	line	52
	
l14715:	
;ms83fxx02_led_timer.c: 52: PWM3CR0 = 0b01100010;
	movlw	(062h)
	movwf	(271)^0100h	;volatile
	line	55
;ms83fxx02_led_timer.c: 55: PWM3CR1 = 0b00111000;
	movlw	(038h)
	movwf	(272)^0100h	;volatile
	line	58
;ms83fxx02_led_timer.c: 58: T3CKDIV = 19;
	movlw	(013h)
	movwf	(273)^0100h	;volatile
	line	60
;ms83fxx02_led_timer.c: 60: TMR3H = 0x0F;
	movlw	(0Fh)
	movwf	(269)^0100h	;volatile
	line	61
	
l14717:	
;ms83fxx02_led_timer.c: 61: TMR3L = 0;
	clrf	(268)^0100h	;volatile
	line	62
	
l14719:	
;ms83fxx02_led_timer.c: 62: PR3L = 0xFF;
	movlw	(0FFh)
	movwf	(270)^0100h	;volatile
	line	65
	
l14721:	
;ms83fxx02_led_timer.c: 65: TMR3IF = 0;
	bcf	(2176/8)^0100h,(2176)&7
	line	68
	
l14723:	
;ms83fxx02_led_timer.c: 68: TMR3ON = 1;
	bsf	(2178/8)^0100h,(2178)&7
	line	69
;ms83fxx02_led_timer.c: 69: }
	goto	l7694
	line	70
	
l7692:	
	line	73
;ms83fxx02_led_timer.c: 70: else
;ms83fxx02_led_timer.c: 71: {
;ms83fxx02_led_timer.c: 73: TMR3ON = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2178/8)^0100h,(2178)&7
	line	75
	
l7694:	
	return
	opt stack 0
GLOBAL	__end_of_LEDTimer_Cmd
	__end_of_LEDTimer_Cmd:
;; =============== function _LEDTimer_Cmd ends ============

	signat	_LEDTimer_Cmd,4216
	global	_KEY_GetPressStatus
psect	text1688,local,class=CODE,delta=2
global __ptext1688
__ptext1688:

;; *************** function _KEY_GetPressStatus *****************
;; Defined at:
;;		line 98 in file "MS83FXX02_KEY.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E1477
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1688
	file	"MS83FXX02_KEY.C"
	line	98
	global	__size_of_KEY_GetPressStatus
	__size_of_KEY_GetPressStatus	equ	__end_of_KEY_GetPressStatus-_KEY_GetPressStatus
	
_KEY_GetPressStatus:	
	opt	stack 1
; Regs used in _KEY_GetPressStatus: [wreg+status,2]
	line	99
	
l14697:	
;MS83FXX02_KEY.C: 99: if(key_press)
	movf	(_key_press),w	;volatile
	skipz
	goto	u1720
	goto	l14705
u1720:
	line	101
	
l14699:	
;MS83FXX02_KEY.C: 100: {
;MS83FXX02_KEY.C: 101: key_press = 0;
	clrf	(_key_press)	;volatile
	line	102
	
l14701:	
;MS83FXX02_KEY.C: 102: return SET;
	movlw	(01h)
	goto	l5526
	line	105
	
l14705:	
;MS83FXX02_KEY.C: 103: }
;MS83FXX02_KEY.C: 105: return RESET;
	movlw	(0)
	line	106
	
l5526:	
	return
	opt stack 0
GLOBAL	__end_of_KEY_GetPressStatus
	__end_of_KEY_GetPressStatus:
;; =============== function _KEY_GetPressStatus ends ============

	signat	_KEY_GetPressStatus,89
	global	_KEY_GetReleaseStatus
psect	text1689,local,class=CODE,delta=2
global __ptext1689
__ptext1689:

;; *************** function _KEY_GetReleaseStatus *****************
;; Defined at:
;;		line 85 in file "MS83FXX02_KEY.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E1477
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 20/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1689
	file	"MS83FXX02_KEY.C"
	line	85
	global	__size_of_KEY_GetReleaseStatus
	__size_of_KEY_GetReleaseStatus	equ	__end_of_KEY_GetReleaseStatus-_KEY_GetReleaseStatus
	
_KEY_GetReleaseStatus:	
	opt	stack 1
; Regs used in _KEY_GetReleaseStatus: [wreg+status,2]
	line	86
	
l14685:	
;MS83FXX02_KEY.C: 86: if(key_release)
	movf	(_key_release),w	;volatile
	skipz
	goto	u1710
	goto	l14693
u1710:
	line	88
	
l14687:	
;MS83FXX02_KEY.C: 87: {
;MS83FXX02_KEY.C: 88: key_press = 0;
	clrf	(_key_press)	;volatile
	line	89
;MS83FXX02_KEY.C: 89: key_release = 0;
	clrf	(_key_release)	;volatile
	line	90
;MS83FXX02_KEY.C: 90: key_press_flag = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_key_press_flag)	;volatile
	line	91
	
l14689:	
;MS83FXX02_KEY.C: 91: return SET;
	movlw	(01h)
	goto	l5522
	line	94
	
l14693:	
;MS83FXX02_KEY.C: 92: }
;MS83FXX02_KEY.C: 94: return RESET;
	movlw	(0)
	line	95
	
l5522:	
	return
	opt stack 0
GLOBAL	__end_of_KEY_GetReleaseStatus
	__end_of_KEY_GetReleaseStatus:
;; =============== function _KEY_GetReleaseStatus ends ============

	signat	_KEY_GetReleaseStatus,89
	global	_EEPROM_Read
psect	text1690,local,class=CODE,delta=2
global __ptext1690
__ptext1690:

;; *************** function _EEPROM_Read *****************
;; Defined at:
;;		line 28 in file "ms83fxx02_eeprom.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    0[BANK0 ] unsigned char 
;;  data            1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_EEPROM_RestoreMotorData
;;		_EEPROM_GetFlag
;;		_EEPROM_RestoreDeviceModeData
;; This function uses a non-reentrant model
;;
psect	text1690
	file	"ms83fxx02_eeprom.c"
	line	28
	global	__size_of_EEPROM_Read
	__size_of_EEPROM_Read	equ	__end_of_EEPROM_Read-_EEPROM_Read
	
_EEPROM_Read:	
	opt	stack 1
; Regs used in _EEPROM_Read: [wreg+status,2]
;EEPROM_Read@addr stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(EEPROM_Read@addr)
	line	29
	
l14655:	
	line	31
	
l14657:	
;ms83fxx02_eeprom.c: 31: EEADR = addr;
	movf	(EEPROM_Read@addr),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	32
	
l14659:	
;ms83fxx02_eeprom.c: 32: RD = 1;
	bsf	(1248/8)^080h,(1248)&7
	line	33
	
l14661:	
;ms83fxx02_eeprom.c: 33: data = EEDAT;
	movf	(154)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(EEPROM_Read@data)
	line	34
	
l14663:	
;ms83fxx02_eeprom.c: 34: RD = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1248/8)^080h,(1248)&7
	line	35
	
l14665:	
;ms83fxx02_eeprom.c: 35: return data;
	bcf	status, 5	;RP0=0, select bank0
	movf	(EEPROM_Read@data),w
	line	36
	
l3330:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_Read
	__end_of_EEPROM_Read:
;; =============== function _EEPROM_Read ends ============

	signat	_EEPROM_Read,4217
	global	_EEPROM_Write
psect	text1691,local,class=CODE,delta=2
global __ptext1691
__ptext1691:

;; *************** function _EEPROM_Write *****************
;; Defined at:
;;		line 39 in file "ms83fxx02_eeprom.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  data            1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_EEPROM_Init
;;		_EEPROM_StoreMotorData
;;		_EEPROM_SetFlag
;;		_EEPROM_StoreModeData
;; This function uses a non-reentrant model
;;
psect	text1691
	file	"ms83fxx02_eeprom.c"
	line	39
	global	__size_of_EEPROM_Write
	__size_of_EEPROM_Write	equ	__end_of_EEPROM_Write-_EEPROM_Write
	
_EEPROM_Write:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _EEPROM_Write: [wreg]
;EEPROM_Write@addr stored from wreg
	movwf	(EEPROM_Write@addr)
	line	40
	
l14643:	
;ms83fxx02_eeprom.c: 40: EEADR = addr;
	movf	(EEPROM_Write@addr),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	41
	
l14645:	
# 41 "ms83fxx02_eeprom.c"
nop ;#
psect	text1691
	line	42
;ms83fxx02_eeprom.c: 42: EEDAT = data;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(EEPROM_Write@data),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(154)^080h	;volatile
	line	43
;ms83fxx02_eeprom.c: 43: EECON1 = 0x34;
	movlw	(034h)
	movwf	(156)^080h	;volatile
	line	44
	
l14647:	
;ms83fxx02_eeprom.c: 44: WR = 1;
	bsf	(1256/8)^080h,(1256)&7
	line	45
	
l14649:	
# 45 "ms83fxx02_eeprom.c"
nop ;#
psect	text1691
	line	46
	
l14651:	
# 46 "ms83fxx02_eeprom.c"
nop ;#
psect	text1691
	line	47
	
l14653:	
# 47 "ms83fxx02_eeprom.c"
nop ;#
psect	text1691
	line	49
;ms83fxx02_eeprom.c: 49: while(WR == 1);
	
l3333:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1256/8)^080h,(1256)&7
	goto	u1701
	goto	u1700
u1701:
	goto	l3333
u1700:
	
l3335:	
	line	50
;ms83fxx02_eeprom.c: 50: WREN1 = 0;
	bcf	(1250/8)^080h,(1250)&7
	line	51
;ms83fxx02_eeprom.c: 51: WREN2 = 0;
	bcf	(1252/8)^080h,(1252)&7
	line	52
;ms83fxx02_eeprom.c: 52: WREN3 = 0;
	bcf	(1253/8)^080h,(1253)&7
	line	53
	
l3336:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_Write
	__end_of_EEPROM_Write:
;; =============== function _EEPROM_Write ends ============

	signat	_EEPROM_Write,8312
	global	_GPIO_INTConfig
psect	text1692,local,class=CODE,delta=2
global __ptext1692
__ptext1692:

;; *************** function _GPIO_INTConfig *****************
;; Defined at:
;;		line 134 in file "ms83fxx02_gpio.c"
;; Parameters:    Size  Location     Type
;;  GPIOx           1    wreg     enum E1491
;;  GPIO_Pin        1    0[BANK0 ] unsigned char 
;;  NewState        1    1[BANK0 ] enum E1482
;; Auto vars:     Size  Location     Type
;;  GPIOx           1    2[BANK0 ] enum E1491
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ChargeDetect_Init
;;		_KEY_Init
;; This function uses a non-reentrant model
;;
psect	text1692
	file	"ms83fxx02_gpio.c"
	line	134
	global	__size_of_GPIO_INTConfig
	__size_of_GPIO_INTConfig	equ	__end_of_GPIO_INTConfig-_GPIO_INTConfig
	
_GPIO_INTConfig:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _GPIO_INTConfig: [wreg+status,2+status,0]
;GPIO_INTConfig@GPIOx stored from wreg
	movwf	(GPIO_INTConfig@GPIOx)
	line	135
	
l14617:	
;ms83fxx02_gpio.c: 135: if(GPIOx == GPIOA)
	movf	(GPIO_INTConfig@GPIOx),f
	skipz
	goto	u1651
	goto	u1650
u1651:
	goto	l14627
u1650:
	line	137
	
l14619:	
;ms83fxx02_gpio.c: 136: {
;ms83fxx02_gpio.c: 137: if (NewState != DISABLE)
	movf	(GPIO_INTConfig@NewState),w
	skipz
	goto	u1660
	goto	l14625
u1660:
	line	140
	
l14621:	
;ms83fxx02_gpio.c: 138: {
;ms83fxx02_gpio.c: 140: PAIE = 1;
	bsf	(91/8),(91)&7
	line	141
;ms83fxx02_gpio.c: 141: GIE = 1;
	bsf	(95/8),(95)&7
	line	142
	
l14623:	
;ms83fxx02_gpio.c: 142: IOCA |= GPIO_Pin;
	movf	(GPIO_INTConfig@GPIO_Pin),w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(150)^080h,f	;volatile
	line	143
;ms83fxx02_gpio.c: 143: }
	goto	l14627
	line	147
	
l14625:	
;ms83fxx02_gpio.c: 144: else
;ms83fxx02_gpio.c: 145: {
;ms83fxx02_gpio.c: 147: IOCA &= ~GPIO_Pin;
	comf	(GPIO_INTConfig@GPIO_Pin),w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(150)^080h,f	;volatile
	line	151
	
l14627:	
;ms83fxx02_gpio.c: 148: }
;ms83fxx02_gpio.c: 149: }
;ms83fxx02_gpio.c: 151: if((GPIOx == GPIOC) && (GPIO_Pin == ((uint8_t)0x00000002)))
	bcf	status, 5	;RP0=0, select bank0
	decf	(GPIO_INTConfig@GPIOx),w
	skipz
	goto	u1671
	goto	u1670
u1671:
	goto	l4433
u1670:
	
l14629:	
	movf	(GPIO_INTConfig@GPIO_Pin),w
	xorlw	02h
	skipz
	goto	u1681
	goto	u1680
u1681:
	goto	l4433
u1680:
	line	154
	
l14631:	
;ms83fxx02_gpio.c: 152: {
;ms83fxx02_gpio.c: 154: if (NewState != DISABLE)
	movf	(GPIO_INTConfig@NewState),w
	skipz
	goto	u1690
	goto	l4431
u1690:
	line	157
	
l14633:	
;ms83fxx02_gpio.c: 155: {
;ms83fxx02_gpio.c: 157: ANSEL5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1165/8)^080h,(1165)&7
	line	158
	
l14635:	
;ms83fxx02_gpio.c: 158: CMCON0 |= 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(25),f	;volatile
	line	160
	
l14637:	
;ms83fxx02_gpio.c: 160: GIE = 1;
	bsf	(95/8),(95)&7
	line	161
	
l14639:	
;ms83fxx02_gpio.c: 161: INTF = 0;
	bcf	(89/8),(89)&7
	line	162
	
l14641:	
;ms83fxx02_gpio.c: 162: INTE = 1;
	bsf	(92/8),(92)&7
	line	163
;ms83fxx02_gpio.c: 163: }
	goto	l4433
	line	164
	
l4431:	
	line	167
;ms83fxx02_gpio.c: 164: else
;ms83fxx02_gpio.c: 165: {
;ms83fxx02_gpio.c: 167: INTE = 0;
	bcf	(92/8),(92)&7
	line	170
	
l4433:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_INTConfig
	__end_of_GPIO_INTConfig:
;; =============== function _GPIO_INTConfig ends ============

	signat	_GPIO_INTConfig,12408
	global	_GPIO_ReadInputDataBit
psect	text1693,local,class=CODE,delta=2
global __ptext1693
__ptext1693:

;; *************** function _GPIO_ReadInputDataBit *****************
;; Defined at:
;;		line 101 in file "ms83fxx02_gpio.c"
;; Parameters:    Size  Location     Type
;;  GPIOx           1    wreg     enum E1491
;;  GPIO_Pin        1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  GPIOx           1    2[BANK0 ] enum E1491
;;  bitstatus       1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ChargeDetect_Init
;;		_ChargeDetect_GetStatus
;;		_LED_DisplayRunLimit
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1693
	file	"ms83fxx02_gpio.c"
	line	101
	global	__size_of_GPIO_ReadInputDataBit
	__size_of_GPIO_ReadInputDataBit	equ	__end_of_GPIO_ReadInputDataBit-_GPIO_ReadInputDataBit
	
_GPIO_ReadInputDataBit:	
	opt	stack 0
; Regs used in _GPIO_ReadInputDataBit: [wreg+status,2+status,0]
;GPIO_ReadInputDataBit@GPIOx stored from wreg
	movwf	(GPIO_ReadInputDataBit@GPIOx)
	line	102
	
l14599:	
;ms83fxx02_gpio.c: 102: uint8_t bitstatus = RESET;
	clrf	(GPIO_ReadInputDataBit@bitstatus)
	line	104
	
l14601:	
;ms83fxx02_gpio.c: 104: if(GPIOx == GPIOA)
	movf	(GPIO_ReadInputDataBit@GPIOx),f
	skipz
	goto	u1611
	goto	u1610
u1611:
	goto	l14607
u1610:
	line	106
	
l14603:	
;ms83fxx02_gpio.c: 105: {
;ms83fxx02_gpio.c: 106: if (PORTA & GPIO_Pin)
	movf	(5),w	;volatile
	andwf	(GPIO_ReadInputDataBit@GPIO_Pin),w
	btfsc	status,2
	goto	u1621
	goto	u1620
u1621:
	goto	l14613
u1620:
	line	108
	
l14605:	
;ms83fxx02_gpio.c: 107: {
;ms83fxx02_gpio.c: 108: bitstatus = (uint8_t)SET;
	clrf	(GPIO_ReadInputDataBit@bitstatus)
	incf	(GPIO_ReadInputDataBit@bitstatus),f
	goto	l14613
	line	113
	
l14607:	
;ms83fxx02_gpio.c: 111: else
;ms83fxx02_gpio.c: 112: {
;ms83fxx02_gpio.c: 113: if(GPIOx == GPIOC)
	decf	(GPIO_ReadInputDataBit@GPIOx),w
	skipz
	goto	u1631
	goto	u1630
u1631:
	goto	l14613
u1630:
	line	115
	
l14609:	
;ms83fxx02_gpio.c: 114: {
;ms83fxx02_gpio.c: 115: if (PORTC & GPIO_Pin)
	movf	(7),w	;volatile
	andwf	(GPIO_ReadInputDataBit@GPIO_Pin),w
	btfsc	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l14613
u1640:
	goto	l14605
	line	122
	
l14613:	
;ms83fxx02_gpio.c: 118: }
;ms83fxx02_gpio.c: 119: }
;ms83fxx02_gpio.c: 120: }
;ms83fxx02_gpio.c: 122: return bitstatus;
	movf	(GPIO_ReadInputDataBit@bitstatus),w
	line	123
	
l4424:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_ReadInputDataBit
	__end_of_GPIO_ReadInputDataBit:
;; =============== function _GPIO_ReadInputDataBit ends ============

	signat	_GPIO_ReadInputDataBit,8313
	global	_GPIO_Init
psect	text1694,local,class=CODE,delta=2
global __ptext1694
__ptext1694:

;; *************** function _GPIO_Init *****************
;; Defined at:
;;		line 27 in file "ms83fxx02_gpio.c"
;; Parameters:    Size  Location     Type
;;  GPIOx           1    wreg     enum E1491
;;  GPIO_InitStr    1    0[BANK0 ] PTR struct .
;;		 -> LED_Init@GPIO_InitStruct(2), KEY_Init@GPIO_InitStruct(2), KEY_DeInit@GPIO_InitStruct(2), ChargeCtrl_Init@GPIO_InitStruct(2), 
;;		 -> ChargeDetect_Init@GPIO_InitStruct(2), 
;; Auto vars:     Size  Location     Type
;;  GPIOx           1    1[BANK0 ] enum E1491
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/20
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ChargeDetect_Init
;;		_ChargeCtrl_Init
;;		_KEY_DeInit
;;		_KEY_Init
;;		_LED_Init
;; This function uses a non-reentrant model
;;
psect	text1694
	file	"ms83fxx02_gpio.c"
	line	27
	global	__size_of_GPIO_Init
	__size_of_GPIO_Init	equ	__end_of_GPIO_Init-_GPIO_Init
	
_GPIO_Init:	
	opt	stack 1
; Regs used in _GPIO_Init: [wreg-fsr0h+status,2+status,0]
;GPIO_Init@GPIOx stored from wreg
	movwf	(GPIO_Init@GPIOx)
	line	28
	
l14585:	
;ms83fxx02_gpio.c: 28: if(GPIOx == GPIOA)
	movf	(GPIO_Init@GPIOx),f
	skipz
	goto	u1581
	goto	u1580
u1581:
	goto	l14593
u1580:
	line	30
	
l14587:	
;ms83fxx02_gpio.c: 29: {
;ms83fxx02_gpio.c: 30: if(GPIO_InitStruct->GPIO_Mode == GPIO_Mode_OUT)
	movf	(GPIO_Init@GPIO_InitStruct),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	decf	indf,w
	skipz
	goto	u1591
	goto	u1590
u1591:
	goto	l14591
u1590:
	line	33
	
l14589:	
;ms83fxx02_gpio.c: 31: {
;ms83fxx02_gpio.c: 33: TRISA &= ~(GPIO_InitStruct->GPIO_Pin);
	movf	(GPIO_Init@GPIO_InitStruct),w
	movwf	fsr0
	comf	indf,w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(133)^080h,f	;volatile
	line	34
;ms83fxx02_gpio.c: 34: }
	goto	l4407
	line	38
	
l14591:	
;ms83fxx02_gpio.c: 35: else
;ms83fxx02_gpio.c: 36: {
;ms83fxx02_gpio.c: 38: TRISA |= GPIO_InitStruct->GPIO_Pin;
	movf	(GPIO_Init@GPIO_InitStruct),w
	movwf	fsr0
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	goto	l4407
	line	43
	
l14593:	
;ms83fxx02_gpio.c: 41: else
;ms83fxx02_gpio.c: 42: {
;ms83fxx02_gpio.c: 43: if(GPIO_InitStruct->GPIO_Mode == GPIO_Mode_OUT)
	movf	(GPIO_Init@GPIO_InitStruct),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	decf	indf,w
	skipz
	goto	u1601
	goto	u1600
u1601:
	goto	l14597
u1600:
	line	46
	
l14595:	
;ms83fxx02_gpio.c: 44: {
;ms83fxx02_gpio.c: 46: TRISC &= ~(GPIO_InitStruct->GPIO_Pin);
	movf	(GPIO_Init@GPIO_InitStruct),w
	movwf	fsr0
	comf	indf,w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(135)^080h,f	;volatile
	line	47
;ms83fxx02_gpio.c: 47: }
	goto	l4407
	line	51
	
l14597:	
;ms83fxx02_gpio.c: 48: else
;ms83fxx02_gpio.c: 49: {
;ms83fxx02_gpio.c: 51: TRISC |= GPIO_InitStruct->GPIO_Pin;
	movf	(GPIO_Init@GPIO_InitStruct),w
	movwf	fsr0
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(135)^080h,f	;volatile
	line	54
	
l4407:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_Init
	__end_of_GPIO_Init:
;; =============== function _GPIO_Init ends ============

	signat	_GPIO_Init,8312
	global	_GetDeviceMode
psect	text1695,local,class=CODE,delta=2
global __ptext1695
__ptext1695:

;; *************** function _GetDeviceMode *****************
;; Defined at:
;;		line 40 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E1586
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1695
	file	"ms83fxx02_pwr.c"
	line	40
	global	__size_of_GetDeviceMode
	__size_of_GetDeviceMode	equ	__end_of_GetDeviceMode-_GetDeviceMode
	
_GetDeviceMode:	
	opt	stack 2
; Regs used in _GetDeviceMode: [wreg]
	line	41
	
l14477:	
;ms83fxx02_pwr.c: 41: return device_mode;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_device_mode),w	;volatile
	line	42
	
l10007:	
	return
	opt stack 0
GLOBAL	__end_of_GetDeviceMode
	__end_of_GetDeviceMode:
;; =============== function _GetDeviceMode ends ============

	signat	_GetDeviceMode,89
	global	_ChargeTimer_INTConfig
psect	text1696,local,class=CODE,delta=2
global __ptext1696
__ptext1696:

;; *************** function _ChargeTimer_INTConfig *****************
;; Defined at:
;;		line 81 in file "ms83fxx02_charge_timer.c"
;; Parameters:    Size  Location     Type
;;  NewState        1    wreg     enum E1482
;; Auto vars:     Size  Location     Type
;;  NewState        1    0[BANK0 ] enum E1482
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/40
;;		On exit  : 60/40
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1696
	file	"ms83fxx02_charge_timer.c"
	line	81
	global	__size_of_ChargeTimer_INTConfig
	__size_of_ChargeTimer_INTConfig	equ	__end_of_ChargeTimer_INTConfig-_ChargeTimer_INTConfig
	
_ChargeTimer_INTConfig:	
	opt	stack 2
; Regs used in _ChargeTimer_INTConfig: [wreg]
;ChargeTimer_INTConfig@NewState stored from wreg
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ChargeTimer_INTConfig@NewState)
	line	82
	
l14473:	
;ms83fxx02_charge_timer.c: 82: if(NewState != DISABLE)
	movf	(ChargeTimer_INTConfig@NewState),w
	skipz
	goto	u1370
	goto	l12208
u1370:
	line	85
	
l14475:	
;ms83fxx02_charge_timer.c: 83: {
;ms83fxx02_charge_timer.c: 85: TMR5IE = 1;
	bsf	status, 6	;RP1=1, select bank2
	bsf	(2273/8)^0100h,(2273)&7
	line	86
;ms83fxx02_charge_timer.c: 86: PEIE = 1;
	bsf	(94/8),(94)&7
	line	87
;ms83fxx02_charge_timer.c: 87: GIE = 1;
	bsf	(95/8),(95)&7
	line	88
;ms83fxx02_charge_timer.c: 88: }
	goto	l12210
	line	89
	
l12208:	
	line	92
;ms83fxx02_charge_timer.c: 89: else
;ms83fxx02_charge_timer.c: 90: {
;ms83fxx02_charge_timer.c: 92: TMR5IE = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2273/8)^0100h,(2273)&7
	line	94
	
l12210:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeTimer_INTConfig
	__end_of_ChargeTimer_INTConfig:
;; =============== function _ChargeTimer_INTConfig ends ============

	signat	_ChargeTimer_INTConfig,4216
	global	_ChargeTimer_Cmd
psect	text1697,local,class=CODE,delta=2
global __ptext1697
__ptext1697:

;; *************** function _ChargeTimer_Cmd *****************
;; Defined at:
;;		line 41 in file "ms83fxx02_charge_timer.c"
;; Parameters:    Size  Location     Type
;;  NewState        1    wreg     enum E1482
;; Auto vars:     Size  Location     Type
;;  NewState        1    0[BANK0 ] enum E1482
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 40/20
;;		On exit  : 60/40
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1697
	file	"ms83fxx02_charge_timer.c"
	line	41
	global	__size_of_ChargeTimer_Cmd
	__size_of_ChargeTimer_Cmd	equ	__end_of_ChargeTimer_Cmd-_ChargeTimer_Cmd
	
_ChargeTimer_Cmd:	
	opt	stack 2
; Regs used in _ChargeTimer_Cmd: [wreg+status,2]
;ChargeTimer_Cmd@NewState stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ChargeTimer_Cmd@NewState)
	line	42
	
l14457:	
;ms83fxx02_charge_timer.c: 42: charge_time_out = 0;
	clrf	(_charge_time_out)	;volatile
	clrf	(_charge_time_out+1)	;volatile
	line	44
	
l14459:	
;ms83fxx02_charge_timer.c: 44: if(NewState != DISABLE)
	movf	(ChargeTimer_Cmd@NewState),w
	skipz
	goto	u1360
	goto	l12203
u1360:
	line	47
	
l14461:	
;ms83fxx02_charge_timer.c: 45: {
;ms83fxx02_charge_timer.c: 47: TMR5ON = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2274/8)^0100h,(2274)&7
	line	49
	
l14463:	
;ms83fxx02_charge_timer.c: 49: PWM5CR0 = 0b01110010;
	movlw	(072h)
	movwf	(283)^0100h	;volatile
	line	52
;ms83fxx02_charge_timer.c: 52: PWM5CR1 = 0b00111000;
	movlw	(038h)
	movwf	(284)^0100h	;volatile
	line	55
;ms83fxx02_charge_timer.c: 55: T5CKDIV = 119;
	movlw	(077h)
	movwf	(285)^0100h	;volatile
	line	57
;ms83fxx02_charge_timer.c: 57: TMR5H = 0x0F;
	movlw	(0Fh)
	movwf	(281)^0100h	;volatile
	line	58
	
l14465:	
;ms83fxx02_charge_timer.c: 58: TMR5L = 0;
	clrf	(280)^0100h	;volatile
	line	59
	
l14467:	
;ms83fxx02_charge_timer.c: 59: PR5L = 0xFF;
	movlw	(0FFh)
	movwf	(282)^0100h	;volatile
	line	62
	
l14469:	
;ms83fxx02_charge_timer.c: 62: TMR5IF = 0;
	bcf	(2272/8)^0100h,(2272)&7
	line	65
	
l14471:	
;ms83fxx02_charge_timer.c: 65: TMR5ON = 1;
	bsf	(2274/8)^0100h,(2274)&7
	line	66
;ms83fxx02_charge_timer.c: 66: }
	goto	l12205
	line	67
	
l12203:	
	line	70
;ms83fxx02_charge_timer.c: 67: else
;ms83fxx02_charge_timer.c: 68: {
;ms83fxx02_charge_timer.c: 70: TMR5ON = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2274/8)^0100h,(2274)&7
	line	72
	
l12205:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeTimer_Cmd
	__end_of_ChargeTimer_Cmd:
;; =============== function _ChargeTimer_Cmd ends ============

	signat	_ChargeTimer_Cmd,4216
	global	_Motor_SetStatus
psect	text1698,local,class=CODE,delta=2
global __ptext1698
__ptext1698:

;; *************** function _Motor_SetStatus *****************
;; Defined at:
;;		line 122 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     enum E1554
;; Auto vars:     Size  Location     Type
;;  status          1    0[BANK0 ] enum E1554
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1698
	file	"ms83fxx02_motor.c"
	line	122
	global	__size_of_Motor_SetStatus
	__size_of_Motor_SetStatus	equ	__end_of_Motor_SetStatus-_Motor_SetStatus
	
_Motor_SetStatus:	
	opt	stack 2
; Regs used in _Motor_SetStatus: [wreg]
;Motor_SetStatus@status stored from wreg
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Motor_SetStatus@status)
	line	123
	
l14455:	
;ms83fxx02_motor.c: 123: motor_status = status;
	movf	(Motor_SetStatus@status),w
	movwf	(_motor_status)	;volatile
	line	124
	
l8834:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_SetStatus
	__end_of_Motor_SetStatus:
;; =============== function _Motor_SetStatus ends ============

	signat	_Motor_SetStatus,4216
	global	_SetDeviceMode
psect	text1699,local,class=CODE,delta=2
global __ptext1699
__ptext1699:

;; *************** function _SetDeviceMode *****************
;; Defined at:
;;		line 50 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;  mode            1    wreg     enum E1521
;; Auto vars:     Size  Location     Type
;;  mode            1    0[BANK0 ] enum E1521
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1699
	file	"ms83fxx02_pwr.c"
	line	50
	global	__size_of_SetDeviceMode
	__size_of_SetDeviceMode	equ	__end_of_SetDeviceMode-_SetDeviceMode
	
_SetDeviceMode:	
	opt	stack 0
; Regs used in _SetDeviceMode: [wreg]
;SetDeviceMode@mode stored from wreg
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SetDeviceMode@mode)
	line	51
	
l14453:	
;ms83fxx02_pwr.c: 51: device_mode = mode;
	movf	(SetDeviceMode@mode),w
	movwf	(_device_mode)	;volatile
	line	52
	
l10010:	
	return
	opt stack 0
GLOBAL	__end_of_SetDeviceMode
	__end_of_SetDeviceMode:
;; =============== function _SetDeviceMode ends ============

	signat	_SetDeviceMode,4216
	global	_ChargeTimer_ResetCount
psect	text1700,local,class=CODE,delta=2
global __ptext1700
__ptext1700:

;; *************** function _ChargeTimer_ResetCount *****************
;; Defined at:
;;		line 102 in file "ms83fxx02_charge_timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1700
	file	"ms83fxx02_charge_timer.c"
	line	102
	global	__size_of_ChargeTimer_ResetCount
	__size_of_ChargeTimer_ResetCount	equ	__end_of_ChargeTimer_ResetCount-_ChargeTimer_ResetCount
	
_ChargeTimer_ResetCount:	
	opt	stack 2
; Regs used in _ChargeTimer_ResetCount: [status,2]
	line	103
	
l14451:	
;ms83fxx02_charge_timer.c: 103: charge_time_out = 0;
	clrf	(_charge_time_out)	;volatile
	clrf	(_charge_time_out+1)	;volatile
	line	104
	
l12213:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeTimer_ResetCount
	__end_of_ChargeTimer_ResetCount:
;; =============== function _ChargeTimer_ResetCount ends ============

	signat	_ChargeTimer_ResetCount,88
	global	_Motor_GetStatus
psect	text1701,local,class=CODE,delta=2
global __ptext1701
__ptext1701:

;; *************** function _Motor_GetStatus *****************
;; Defined at:
;;		line 132 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E1554
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/20
;;		Unchanged: FFFFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1701
	file	"ms83fxx02_motor.c"
	line	132
	global	__size_of_Motor_GetStatus
	__size_of_Motor_GetStatus	equ	__end_of_Motor_GetStatus-_Motor_GetStatus
	
_Motor_GetStatus:	
	opt	stack 2
; Regs used in _Motor_GetStatus: [wreg]
	line	133
	
l14447:	
;ms83fxx02_motor.c: 133: return motor_status;
	movf	(_motor_status),w	;volatile
	line	134
	
l8837:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_GetStatus
	__end_of_Motor_GetStatus:
;; =============== function _Motor_GetStatus ends ============

	signat	_Motor_GetStatus,89
	global	_GPIO_WriteBit
psect	text1702,local,class=CODE,delta=2
global __ptext1702
__ptext1702:

;; *************** function _GPIO_WriteBit *****************
;; Defined at:
;;		line 68 in file "ms83fxx02_gpio.c"
;; Parameters:    Size  Location     Type
;;  GPIOx           1    wreg     enum E1491
;;  GPIO_Pin        1    3[BANK0 ] unsigned char 
;;  BitVal          1    4[BANK0 ] enum E1499
;; Auto vars:     Size  Location     Type
;;  GPIOx           1    5[BANK0 ] enum E1491
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_charge_control
;;		_ChargeCtrl_Init
;;		_ChargeCtrl_Output
;;		_LED_Init
;;		_LED_DisplayMotorStatus
;;		_LED_DisplayRunLimit
;;		_LED_CloseMotorStatus
;;		_LED_VoltageChargeOutput
;;		_LED_UnderVoltageOutput
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1702
	file	"ms83fxx02_gpio.c"
	line	68
	global	__size_of_GPIO_WriteBit
	__size_of_GPIO_WriteBit	equ	__end_of_GPIO_WriteBit-_GPIO_WriteBit
	
_GPIO_WriteBit:	
	opt	stack 1
; Regs used in _GPIO_WriteBit: [wreg+status,2+status,0]
;GPIO_WriteBit@GPIOx stored from wreg
	movwf	(GPIO_WriteBit@GPIOx)
	line	69
	
l14433:	
;ms83fxx02_gpio.c: 69: if(GPIOx == GPIOA)
	movf	(GPIO_WriteBit@GPIOx),f
	skipz
	goto	u1331
	goto	u1330
u1331:
	goto	l14441
u1330:
	line	71
	
l14435:	
;ms83fxx02_gpio.c: 70: {
;ms83fxx02_gpio.c: 71: if (BitVal != Bit_RESET)
	movf	(GPIO_WriteBit@BitVal),w
	skipz
	goto	u1340
	goto	l14439
u1340:
	line	73
	
l14437:	
;ms83fxx02_gpio.c: 72: {
;ms83fxx02_gpio.c: 73: PORTA |= GPIO_Pin;
	movf	(GPIO_WriteBit@GPIO_Pin),w
	iorwf	(5),f	;volatile
	line	74
;ms83fxx02_gpio.c: 74: }
	goto	l4416
	line	77
	
l14439:	
;ms83fxx02_gpio.c: 75: else
;ms83fxx02_gpio.c: 76: {
;ms83fxx02_gpio.c: 77: PORTA &= ~(GPIO_Pin);
	comf	(GPIO_WriteBit@GPIO_Pin),w
	andwf	(5),f	;volatile
	goto	l4416
	line	82
	
l14441:	
;ms83fxx02_gpio.c: 80: else
;ms83fxx02_gpio.c: 81: {
;ms83fxx02_gpio.c: 82: if (BitVal != Bit_RESET)
	movf	(GPIO_WriteBit@BitVal),w
	skipz
	goto	u1350
	goto	l14445
u1350:
	line	84
	
l14443:	
;ms83fxx02_gpio.c: 83: {
;ms83fxx02_gpio.c: 84: PORTC |= GPIO_Pin;
	movf	(GPIO_WriteBit@GPIO_Pin),w
	iorwf	(7),f	;volatile
	line	85
;ms83fxx02_gpio.c: 85: }
	goto	l4416
	line	88
	
l14445:	
;ms83fxx02_gpio.c: 86: else
;ms83fxx02_gpio.c: 87: {
;ms83fxx02_gpio.c: 88: PORTC &= ~(GPIO_Pin);
	comf	(GPIO_WriteBit@GPIO_Pin),w
	andwf	(7),f	;volatile
	line	91
	
l4416:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_WriteBit
	__end_of_GPIO_WriteBit:
;; =============== function _GPIO_WriteBit ends ============

	signat	_GPIO_WriteBit,12408
	global	_ChargeTimer_GetCount
psect	text1703,local,class=CODE,delta=2
global __ptext1703
__ptext1703:

;; *************** function _ChargeTimer_GetCount *****************
;; Defined at:
;;		line 112 in file "ms83fxx02_charge_timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 20/40
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_charge_control
;; This function uses a non-reentrant model
;;
psect	text1703
	file	"ms83fxx02_charge_timer.c"
	line	112
	global	__size_of_ChargeTimer_GetCount
	__size_of_ChargeTimer_GetCount	equ	__end_of_ChargeTimer_GetCount-_ChargeTimer_GetCount
	
_ChargeTimer_GetCount:	
	opt	stack 1
; Regs used in _ChargeTimer_GetCount: [wreg]
	line	113
	
l14429:	
;ms83fxx02_charge_timer.c: 113: return charge_time_out;
	bcf	status, 6	;RP1=0, select bank0
	movf	(_charge_time_out+1),w	;volatile
	movwf	(?_ChargeTimer_GetCount+1)
	movf	(_charge_time_out),w	;volatile
	movwf	(?_ChargeTimer_GetCount)
	line	114
	
l12216:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeTimer_GetCount
	__end_of_ChargeTimer_GetCount:
;; =============== function _ChargeTimer_GetCount ends ============

	signat	_ChargeTimer_GetCount,90
	global	_ADC_Init
psect	text1704,local,class=CODE,delta=2
global __ptext1704
__ptext1704:

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 72 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/20
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Driver_Init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1704
	file	"ms83fxx02_pwr.c"
	line	72
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
	opt	stack 2
; Regs used in _ADC_Init: [wreg+status,2+status,0]
;ADC_Init@channel stored from wreg
	line	74
	movwf	(ADC_Init@channel)
	
l14421:	
;ms83fxx02_pwr.c: 74: ANSEL |= (0x01 << channel);
	movlw	(01h)
	movwf	(??_ADC_Init+0)+0
	incf	(ADC_Init@channel),w
	goto	u1324
u1325:
	clrc
	rlf	(??_ADC_Init+0)+0,f
u1324:
	addlw	-1
	skipz
	goto	u1325
	movf	0+(??_ADC_Init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(145)^080h,f	;volatile
	line	76
	
l14423:	
;ms83fxx02_pwr.c: 76: TRISC |= 0b00000100;
	bsf	(135)^080h+(2/8),(2)&7	;volatile
	line	79
	
l14425:	
;ms83fxx02_pwr.c: 79: ADCON0 = 0b10100000;
	movlw	(0A0h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	82
	
l14427:	
;ms83fxx02_pwr.c: 82: ADCON1 = 0b01010000;
	movlw	(050h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	line	83
	
l10019:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
;; =============== function _ADC_Init ends ============

	signat	_ADC_Init,4216
	global	_Board_Init
psect	text1705,local,class=CODE,delta=2
global __ptext1705
__ptext1705:

;; *************** function _Board_Init *****************
;; Defined at:
;;		line 33 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1705
	file	"main.c"
	line	33
	global	__size_of_Board_Init
	__size_of_Board_Init	equ	__end_of_Board_Init-_Board_Init
	
_Board_Init:	
	opt	stack 2
; Regs used in _Board_Init: [wreg+status,2]
	line	34
	
l14403:	
;main.c: 34: PCON = 0b00000011;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(142)^080h	;volatile
	line	35
;main.c: 35: MSCKCON = 0b00010000;
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(27)	;volatile
	line	37
;main.c: 37: WDTCON = 0b00001110;
	movlw	(0Eh)
	movwf	(24)	;volatile
	line	39
;main.c: 39: OSCCON = 0b01010000;
	movlw	(050h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	40
	
l14405:	
;main.c: 40: INTCON = 0b00000000;
	clrf	(11)	;volatile
	line	41
	
l14407:	
;main.c: 41: PIE1 = 0b00000000;
	clrf	(140)^080h	;volatile
	line	42
	
l14409:	
;main.c: 42: PIE2 = 0b00000000;
	clrf	(141)^080h	;volatile
	line	43
	
l14411:	
;main.c: 43: PIR1 = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(12)	;volatile
	line	44
	
l14413:	
;main.c: 44: PIR2 = 0b00000000;
	clrf	(13)	;volatile
	line	45
	
l14415:	
;main.c: 45: WPD = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	46
;main.c: 46: ANSEL = 0b01000000;
	movlw	(040h)
	movwf	(145)^080h	;volatile
	line	47
	
l14417:	
;main.c: 47: TRISA = 0b00000000;
	clrf	(133)^080h	;volatile
	line	48
	
l14419:	
;main.c: 48: WPUA = 0b00000000;
	clrf	(149)^080h	;volatile
	line	49
	
l1129:	
	return
	opt stack 0
GLOBAL	__end_of_Board_Init
	__end_of_Board_Init:
;; =============== function _Board_Init ends ============

	signat	_Board_Init,88
	global	_ISR
psect	text1706,local,class=CODE,delta=2
global __ptext1706
__ptext1706:

;; *************** function _ISR *****************
;; Defined at:
;;		line 205 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          4       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_KEY_IntrHandler
;;		_DebounceTimer_IntrHandler
;;		i1_GetDeviceMode
;;		_SwitchModeTimer_IntrHandler
;;		_ChargeTimer_IntrHandler
;;		_MotorOperTimer_IntrHandler
;;		_LEDTimer_IntrHandler
;;		_ChargeDetect_IntrHandler
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1706
	file	"main.c"
	line	205
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _ISR: [allreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text1706
	line	206
	
i1l14481:	
;main.c: 206: KEY_IntrHandler();
	fcall	_KEY_IntrHandler
	line	207
	
i1l14483:	
;main.c: 207: DebounceTimer_IntrHandler();
	fcall	_DebounceTimer_IntrHandler
	line	209
	
i1l14485:	
;main.c: 209: if(RUN_MODE == GetDeviceMode())
	fcall	i1_GetDeviceMode
	iorlw	0
	skipz
	goto	u138_21
	goto	u138_20
u138_21:
	goto	i1l14489
u138_20:
	line	211
	
i1l14487:	
;main.c: 210: {
;main.c: 211: SwitchModeTimer_IntrHandler();
	fcall	_SwitchModeTimer_IntrHandler
	line	212
;main.c: 212: }
	goto	i1l14491
	line	215
	
i1l14489:	
;main.c: 213: else
;main.c: 214: {
;main.c: 215: ChargeTimer_IntrHandler();
	fcall	_ChargeTimer_IntrHandler
	line	218
	
i1l14491:	
;main.c: 216: }
;main.c: 218: MotorOperTimer_IntrHandler();
	fcall	_MotorOperTimer_IntrHandler
	line	220
	
i1l14493:	
;main.c: 220: LEDTimer_IntrHandler();
	fcall	_LEDTimer_IntrHandler
	line	221
	
i1l14495:	
;main.c: 221: ChargeDetect_IntrHandler();
	fcall	_ChargeDetect_IntrHandler
	line	222
	
i1l1164:	
	movf	(??_ISR+3),w
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
	global	_MotorOperTimer_IntrHandler
psect	text1707,local,class=CODE,delta=2
global __ptext1707
__ptext1707:

;; *************** function _MotorOperTimer_IntrHandler *****************
;; Defined at:
;;		line 319 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/40
;;		On exit  : 60/40
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		i1_Motor_CheckRunLimit
;;		___lbmod
;;		i1_MotorOperationTimer_Init
;;		i1_Motor_Stop
;;		i1_MotorOperationTimer_Stop
;;		i1_Motor_SetStatus
;;		i1_Motor_Init
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1707
	file	"ms83fxx02_motor.c"
	line	319
	global	__size_of_MotorOperTimer_IntrHandler
	__size_of_MotorOperTimer_IntrHandler	equ	__end_of_MotorOperTimer_IntrHandler-_MotorOperTimer_IntrHandler
	
_MotorOperTimer_IntrHandler:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _MotorOperTimer_IntrHandler: [wreg+status,2+status,0+pclath+cstack]
	line	320
	
i1l14537:	
;ms83fxx02_motor.c: 320: if(TMR4IE && TMR4IF)
	btfss	(2225/8)^0100h,(2225)&7
	goto	u149_21
	goto	u149_20
u149_21:
	goto	i1l8880
u149_20:
	
i1l14539:	
	btfss	(2224/8)^0100h,(2224)&7
	goto	u150_21
	goto	u150_20
u150_21:
	goto	i1l8880
u150_20:
	line	322
	
i1l14541:	
;ms83fxx02_motor.c: 321: {
;ms83fxx02_motor.c: 322: if(!Motor_CheckRunLimit())
	fcall	i1_Motor_CheckRunLimit
	iorlw	0
	skipz
	goto	u151_21
	goto	u151_20
u151_21:
	goto	i1l8873
u151_20:
	line	325
	
i1l14543:	
;ms83fxx02_motor.c: 323: {
;ms83fxx02_motor.c: 325: if(motor_timing_running_flag)
	movf	(_motor_timing_running_flag),w
	skipz
	goto	u152_20
	goto	i1l14553
u152_20:
	line	327
	
i1l14545:	
;ms83fxx02_motor.c: 326: {
;ms83fxx02_motor.c: 327: motor_intr_count++;
	incf	(_motor_intr_count),f	;volatile
	line	328
	
i1l14547:	
;ms83fxx02_motor.c: 328: if((motor_intr_count % 5) == 0)
	movlw	(05h)
	movwf	(?___lbmod)
	movf	(_motor_intr_count),w	;volatile
	fcall	___lbmod
	iorlw	0
	skipz
	goto	u153_21
	goto	u153_20
u153_21:
	goto	i1l14571
u153_20:
	line	330
	
i1l14549:	
;ms83fxx02_motor.c: 329: {
;ms83fxx02_motor.c: 330: motor_timing_running_flag = 0;
	clrf	(_motor_timing_running_flag)
	line	331
	
i1l14551:	
;ms83fxx02_motor.c: 331: MotorOperationTimer_Init(MotorOperationTimer_0_3s);
	movlw	(02h)
	fcall	i1_MotorOperationTimer_Init
	goto	i1l14571
	line	336
	
i1l14553:	
;ms83fxx02_motor.c: 334: else
;ms83fxx02_motor.c: 335: {
;ms83fxx02_motor.c: 336: if(motor_intr_count >= 20)
	movlw	(014h)
	subwf	(_motor_intr_count),w	;volatile
	skipc
	goto	u154_21
	goto	u154_20
u154_21:
	goto	i1l14565
u154_20:
	line	338
	
i1l14555:	
;ms83fxx02_motor.c: 337: {
;ms83fxx02_motor.c: 338: motor_intr_count = 0;
	clrf	(_motor_intr_count)	;volatile
	line	339
	
i1l14557:	
;ms83fxx02_motor.c: 339: motor_oper_record++;
	incf	(_motor_oper_record),f	;volatile
	skipnz
	incf	(_motor_oper_record+1),f	;volatile
	line	340
	
i1l14559:	
;ms83fxx02_motor.c: 340: Motor_Stop();
	fcall	i1_Motor_Stop
	line	341
	
i1l14561:	
;ms83fxx02_motor.c: 341: MotorOperationTimer_Stop();
	fcall	i1_MotorOperationTimer_Stop
	line	342
	
i1l14563:	
;ms83fxx02_motor.c: 342: Motor_SetStatus(MOTOR_MODE_STOP);
	movlw	(01h)
	fcall	i1_Motor_SetStatus
	line	343
;ms83fxx02_motor.c: 343: }
	goto	i1l14567
	line	346
	
i1l14565:	
;ms83fxx02_motor.c: 344: else
;ms83fxx02_motor.c: 345: {
;ms83fxx02_motor.c: 346: Motor_Init(motor_status);
	movf	(_motor_status),w	;volatile
	fcall	i1_Motor_Init
	line	347
;ms83fxx02_motor.c: 347: MotorOperationTimer_Init(MotorOperationTimer_30s);
	movlw	(01h)
	fcall	i1_MotorOperationTimer_Init
	line	350
	
i1l14567:	
;ms83fxx02_motor.c: 348: }
;ms83fxx02_motor.c: 350: motor_timing_running_flag = 1;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_motor_timing_running_flag)
	incf	(_motor_timing_running_flag),f
	goto	i1l14571
	line	353
	
i1l8873:	
	line	355
;ms83fxx02_motor.c: 353: else
;ms83fxx02_motor.c: 354: {
;ms83fxx02_motor.c: 355: key_press_time_count = 1;
	clrf	(_key_press_time_count)	;volatile
	incf	(_key_press_time_count),f	;volatile
	line	356
	
i1l14569:	
;ms83fxx02_motor.c: 356: MotorOperationTimer_Stop();
	fcall	i1_MotorOperationTimer_Stop
	line	358
	
i1l14571:	
;ms83fxx02_motor.c: 357: }
;ms83fxx02_motor.c: 358: TMR4IF = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2224/8)^0100h,(2224)&7
	line	360
	
i1l8880:	
	return
	opt stack 0
GLOBAL	__end_of_MotorOperTimer_IntrHandler
	__end_of_MotorOperTimer_IntrHandler:
;; =============== function _MotorOperTimer_IntrHandler ends ============

	signat	_MotorOperTimer_IntrHandler,88
	global	i1_Motor_Stop
psect	text1708,local,class=CODE,delta=2
global __ptext1708
__ptext1708:

;; *************** function i1_Motor_Stop *****************
;; Defined at:
;;		line 184 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_LED_CloseMotorStatus
;; This function is called by:
;;		_MotorOperTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1708
	file	"ms83fxx02_motor.c"
	line	184
	global	__size_ofi1_Motor_Stop
	__size_ofi1_Motor_Stop	equ	__end_ofi1_Motor_Stop-i1_Motor_Stop
	
i1_Motor_Stop:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_Motor_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	188
	
i1l14989:	
;ms83fxx02_motor.c: 188: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	190
;ms83fxx02_motor.c: 190: TMR2ON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(146/8),(146)&7
	line	192
	
i1l14991:	
;ms83fxx02_motor.c: 192: LED_CloseMotorStatus();
	fcall	i1_LED_CloseMotorStatus
	line	193
	
i1l8849:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Motor_Stop
	__end_ofi1_Motor_Stop:
;; =============== function i1_Motor_Stop ends ============

	signat	i1_Motor_Stop,88
	global	i1_MotorOperationTimer_Stop
psect	text1709,local,class=CODE,delta=2
global __ptext1709
__ptext1709:

;; *************** function i1_MotorOperationTimer_Stop *****************
;; Defined at:
;;		line 277 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_Motor_CheckRunLimit
;; This function is called by:
;;		_MotorOperTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1709
	file	"ms83fxx02_motor.c"
	line	277
	global	__size_ofi1_MotorOperationTimer_Stop
	__size_ofi1_MotorOperationTimer_Stop	equ	__end_ofi1_MotorOperationTimer_Stop-i1_MotorOperationTimer_Stop
	
i1_MotorOperationTimer_Stop:	
	opt	stack 0
; Regs used in i1_MotorOperationTimer_Stop: [wreg+status,2+pclath+cstack]
	line	279
	
i1l15029:	
;ms83fxx02_motor.c: 279: TMR4ON = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2226/8)^0100h,(2226)&7
	line	281
;ms83fxx02_motor.c: 281: TMR4IE = 0;
	bcf	(2225/8)^0100h,(2225)&7
	line	283
	
i1l15031:	
;ms83fxx02_motor.c: 283: if(!Motor_CheckRunLimit())
	fcall	i1_Motor_CheckRunLimit
	iorlw	0
	skipz
	goto	u211_21
	goto	u211_20
u211_21:
	goto	i1l8864
u211_20:
	line	286
	
i1l15033:	
;ms83fxx02_motor.c: 284: {
;ms83fxx02_motor.c: 286: motor_timing_running_flag = 1;
	clrf	(_motor_timing_running_flag)
	incf	(_motor_timing_running_flag),f
	line	287
	
i1l15035:	
;ms83fxx02_motor.c: 287: motor_intr_count = 0;
	clrf	(_motor_intr_count)	;volatile
	line	289
	
i1l8864:	
	return
	opt stack 0
GLOBAL	__end_ofi1_MotorOperationTimer_Stop
	__end_ofi1_MotorOperationTimer_Stop:
;; =============== function i1_MotorOperationTimer_Stop ends ============

	signat	i1_MotorOperationTimer_Stop,88
	global	i1_LED_CloseMotorStatus
psect	text1710,local,class=CODE,delta=2
global __ptext1710
__ptext1710:

;; *************** function i1_LED_CloseMotorStatus *****************
;; Defined at:
;;		line 71 in file "ms83fxx02_led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_GPIO_WriteBit
;; This function is called by:
;;		i1_Motor_Stop
;; This function uses a non-reentrant model
;;
psect	text1710
	file	"ms83fxx02_led.c"
	line	71
	global	__size_ofi1_LED_CloseMotorStatus
	__size_ofi1_LED_CloseMotorStatus	equ	__end_ofi1_LED_CloseMotorStatus-i1_LED_CloseMotorStatus
	
i1_LED_CloseMotorStatus:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_LED_CloseMotorStatus: [wreg+status,2+status,0+pclath+cstack]
	line	72
	
i1l14949:	
;ms83fxx02_led.c: 72: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000004), Bit_RESET);
	movlw	(04h)
	movwf	(?i1_GPIO_WriteBit)
	clrf	0+(?i1_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	i1_GPIO_WriteBit
	line	73
;ms83fxx02_led.c: 73: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000008), Bit_RESET);
	movlw	(08h)
	movwf	(?i1_GPIO_WriteBit)
	clrf	0+(?i1_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	i1_GPIO_WriteBit
	line	74
;ms83fxx02_led.c: 74: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), Bit_RESET);
	clrf	(?i1_GPIO_WriteBit)
	incf	(?i1_GPIO_WriteBit),f
	clrf	0+(?i1_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	i1_GPIO_WriteBit
	line	75
	
i1l6617:	
	return
	opt stack 0
GLOBAL	__end_ofi1_LED_CloseMotorStatus
	__end_ofi1_LED_CloseMotorStatus:
;; =============== function i1_LED_CloseMotorStatus ends ============

	signat	i1_LED_CloseMotorStatus,88
	global	_ChargeDetect_IntrHandler
psect	text1711,local,class=CODE,delta=2
global __ptext1711
__ptext1711:

;; *************** function _ChargeDetect_IntrHandler *****************
;; Defined at:
;;		line 80 in file "ms83fxx02_charge.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 20/40
;;		On exit  : 20/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_GPIO_ReadInputDataBit
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1711
	file	"ms83fxx02_charge.c"
	line	80
	global	__size_of_ChargeDetect_IntrHandler
	__size_of_ChargeDetect_IntrHandler	equ	__end_of_ChargeDetect_IntrHandler-_ChargeDetect_IntrHandler
	
_ChargeDetect_IntrHandler:	
	opt	stack 1
; Regs used in _ChargeDetect_IntrHandler: [wreg+status,2+status,0+pclath+cstack]
	line	81
	
i1l14579:	
;ms83fxx02_charge.c: 81: if(PAIE & PAIF)
	movlw	1
	btfss	(91/8),(91)&7
	andlw	0
	btfss	(88/8),(88)&7
	andlw	0
	iorlw	0
	skipnz
	goto	u157_21
	goto	u157_20
u157_21:
	goto	i1l2260
u157_20:
	line	83
	
i1l14581:	
;ms83fxx02_charge.c: 82: {
;ms83fxx02_charge.c: 83: GPIO_ReadInputDataBit(GPIOA, ((uint8_t)0x00000010));
	movlw	(010h)
	movwf	(?i1_GPIO_ReadInputDataBit)
	movlw	(0)
	fcall	i1_GPIO_ReadInputDataBit
	line	85
	
i1l14583:	
;ms83fxx02_charge.c: 85: PAIF = 0;
	bcf	(88/8),(88)&7
	line	87
	
i1l2260:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeDetect_IntrHandler
	__end_of_ChargeDetect_IntrHandler:
;; =============== function _ChargeDetect_IntrHandler ends ============

	signat	_ChargeDetect_IntrHandler,88
	global	_DebounceTimer_IntrHandler
psect	text1712,local,class=CODE,delta=2
global __ptext1712
__ptext1712:

;; *************** function _DebounceTimer_IntrHandler *****************
;; Defined at:
;;		line 132 in file "MS83FXX02_KEY.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 0/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_GPIO_ReadInputDataBit
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1712
	file	"MS83FXX02_KEY.C"
	line	132
	global	__size_of_DebounceTimer_IntrHandler
	__size_of_DebounceTimer_IntrHandler	equ	__end_of_DebounceTimer_IntrHandler-_DebounceTimer_IntrHandler
	
_DebounceTimer_IntrHandler:	
	opt	stack 1
; Regs used in _DebounceTimer_IntrHandler: [wreg+status,2+status,0+pclath+cstack]
	line	133
	
i1l14509:	
;MS83FXX02_KEY.C: 133: if(TMR1IE && TMR1IF)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1120/8)^080h,(1120)&7
	goto	u141_21
	goto	u141_20
u141_21:
	goto	i1l5535
u141_20:
	
i1l14511:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(96/8),(96)&7
	goto	u142_21
	goto	u142_20
u142_21:
	goto	i1l5535
u142_20:
	line	135
	
i1l14513:	
;MS83FXX02_KEY.C: 134: {
;MS83FXX02_KEY.C: 135: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	136
;MS83FXX02_KEY.C: 136: TMR1IE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1120/8)^080h,(1120)&7
	line	137
;MS83FXX02_KEY.C: 137: TMR1ON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(128/8),(128)&7
	line	139
	
i1l14515:	
;MS83FXX02_KEY.C: 139: if(key_status != GPIO_ReadInputDataBit(GPIOC, ((uint8_t)0x00000002)))
	movlw	(02h)
	movwf	(?i1_GPIO_ReadInputDataBit)
	movlw	(01h)
	fcall	i1_GPIO_ReadInputDataBit
	xorwf	(_key_status),w	;volatile
	skipnz
	goto	u143_21
	goto	u143_20
u143_21:
	goto	i1l14519
u143_20:
	line	142
	
i1l14517:	
;MS83FXX02_KEY.C: 140: {
;MS83FXX02_KEY.C: 142: INTF = 0;
	bcf	(89/8),(89)&7
	line	143
;MS83FXX02_KEY.C: 143: INTE = 1;
	bsf	(92/8),(92)&7
	line	144
;MS83FXX02_KEY.C: 144: return ;
	goto	i1l5535
	line	147
	
i1l14519:	
;MS83FXX02_KEY.C: 145: }
;MS83FXX02_KEY.C: 147: if(!key_status)
	movf	(_key_status),f
	skipz	;volatile
	goto	u144_21
	goto	u144_20
u144_21:
	goto	i1l5536
u144_20:
	line	150
	
i1l14521:	
;MS83FXX02_KEY.C: 148: {
;MS83FXX02_KEY.C: 150: key_press = 1;
	clrf	(_key_press)	;volatile
	incf	(_key_press),f	;volatile
	line	153
;MS83FXX02_KEY.C: 153: INTEDG = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1038/8)^080h,(1038)&7
	line	154
;MS83FXX02_KEY.C: 154: }
	goto	i1l14517
	line	155
	
i1l5536:	
	line	158
;MS83FXX02_KEY.C: 155: else
;MS83FXX02_KEY.C: 156: {
;MS83FXX02_KEY.C: 158: key_release = 1;
	clrf	(_key_release)	;volatile
	incf	(_key_release),f	;volatile
	line	161
;MS83FXX02_KEY.C: 161: INTEDG = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1038/8)^080h,(1038)&7
	goto	i1l14517
	line	168
	
i1l5535:	
	return
	opt stack 0
GLOBAL	__end_of_DebounceTimer_IntrHandler
	__end_of_DebounceTimer_IntrHandler:
;; =============== function _DebounceTimer_IntrHandler ends ============

	signat	_DebounceTimer_IntrHandler,88
	global	_KEY_IntrHandler
psect	text1713,local,class=CODE,delta=2
global __ptext1713
__ptext1713:

;; *************** function _KEY_IntrHandler *****************
;; Defined at:
;;		line 114 in file "MS83FXX02_KEY.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 40/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_TIM1_Init
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1713
	file	"MS83FXX02_KEY.C"
	line	114
	global	__size_of_KEY_IntrHandler
	__size_of_KEY_IntrHandler	equ	__end_of_KEY_IntrHandler-_KEY_IntrHandler
	
_KEY_IntrHandler:	
	opt	stack 1
; Regs used in _KEY_IntrHandler: [wreg+status,2+status,0+pclath+cstack]
	line	115
	
i1l14497:	
;MS83FXX02_KEY.C: 115: if(INTE && INTF)
	btfss	(92/8),(92)&7
	goto	u139_21
	goto	u139_20
u139_21:
	goto	i1l5530
u139_20:
	
i1l14499:	
	btfss	(89/8),(89)&7
	goto	u140_21
	goto	u140_20
u140_21:
	goto	i1l5530
u140_20:
	line	118
	
i1l14501:	
;MS83FXX02_KEY.C: 116: {
;MS83FXX02_KEY.C: 118: INTF = 0;
	bcf	(89/8),(89)&7
	line	119
;MS83FXX02_KEY.C: 119: INTE = 0;
	bcf	(92/8),(92)&7
	line	120
	
i1l14503:	
;MS83FXX02_KEY.C: 120: key_status = INTEDG;
	movlw	0
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1038/8)^080h,(1038)&7
	movlw	1
	movwf	(_key_status)	;volatile
	line	121
	
i1l14505:	
;MS83FXX02_KEY.C: 121: key_press_flag= 1;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_key_press_flag)	;volatile
	incf	(_key_press_flag),f	;volatile
	line	122
	
i1l14507:	
;MS83FXX02_KEY.C: 122: TIM1_Init();
	fcall	_TIM1_Init
	line	124
	
i1l5530:	
	return
	opt stack 0
GLOBAL	__end_of_KEY_IntrHandler
	__end_of_KEY_IntrHandler:
;; =============== function _KEY_IntrHandler ends ============

	signat	_KEY_IntrHandler,88
	global	i1_GetDeviceMode
psect	text1714,local,class=CODE,delta=2
global __ptext1714
__ptext1714:

;; *************** function i1_GetDeviceMode *****************
;; Defined at:
;;		line 40 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E1586
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1714
	file	"ms83fxx02_pwr.c"
	line	40
	global	__size_ofi1_GetDeviceMode
	__size_ofi1_GetDeviceMode	equ	__end_ofi1_GetDeviceMode-i1_GetDeviceMode
	
i1_GetDeviceMode:	
	opt	stack 2
; Regs used in i1_GetDeviceMode: [wreg]
	line	41
	
i1l15037:	
;ms83fxx02_pwr.c: 41: return device_mode;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_device_mode),w	;volatile
	line	42
	
i1l10007:	
	return
	opt stack 0
GLOBAL	__end_ofi1_GetDeviceMode
	__end_ofi1_GetDeviceMode:
;; =============== function i1_GetDeviceMode ends ============

	signat	i1_GetDeviceMode,89
	global	i1_MotorOperationTimer_Init
psect	text1715,local,class=CODE,delta=2
global __ptext1715
__ptext1715:

;; *************** function i1_MotorOperationTimer_Init *****************
;; Defined at:
;;		line 215 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  MotorOperati    1    wreg     enum E1560
;; Auto vars:     Size  Location     Type
;;  MotorOperati    1    0[COMMON] enum E1560
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 60/40
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MotorOperTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1715
	file	"ms83fxx02_motor.c"
	line	215
	global	__size_ofi1_MotorOperationTimer_Init
	__size_ofi1_MotorOperationTimer_Init	equ	__end_ofi1_MotorOperationTimer_Init-i1_MotorOperationTimer_Init
	
i1_MotorOperationTimer_Init:	
	opt	stack 1
; Regs used in i1_MotorOperationTimer_Init: [wreg+status,2]
;i1MotorOperationTimer_Init@time stored from wreg
	line	217
	movwf	(i1MotorOperationTimer_Init@time)
	
i1l15003:	
;ms83fxx02_motor.c: 217: TMR4ON = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2226/8)^0100h,(2226)&7
	line	219
	
i1l15005:	
;ms83fxx02_motor.c: 219: if(time == MotorOperationTimer_30s)
	decf	(i1MotorOperationTimer_Init@time),w
	skipz
	goto	u209_21
	goto	u209_20
u209_21:
	goto	i1l15009
u209_20:
	line	222
	
i1l15007:	
;ms83fxx02_motor.c: 220: {
;ms83fxx02_motor.c: 222: PWM4CR0 = 0b01110010;
	movlw	(072h)
	movwf	(277)^0100h	;volatile
	line	225
;ms83fxx02_motor.c: 225: PWM4CR1 = 0b00111000;
	movlw	(038h)
	movwf	(278)^0100h	;volatile
	line	230
;ms83fxx02_motor.c: 230: T4CKDIV = 182;
	movlw	(0B6h)
	movwf	(279)^0100h	;volatile
	line	231
;ms83fxx02_motor.c: 231: }
	goto	i1l8857
	line	232
	
i1l15009:	
;ms83fxx02_motor.c: 232: else if(time == MotorOperationTimer_0_3s)
	movf	(i1MotorOperationTimer_Init@time),w
	xorlw	02h
	skipz
	goto	u210_21
	goto	u210_20
u210_21:
	goto	i1l15013
u210_20:
	line	235
	
i1l15011:	
;ms83fxx02_motor.c: 233: {
;ms83fxx02_motor.c: 235: PWM4CR0 = 0b01100010;
	movlw	(062h)
	movwf	(277)^0100h	;volatile
	line	237
;ms83fxx02_motor.c: 237: PWM4CR1 = 0b00111000;
	movlw	(038h)
	movwf	(278)^0100h	;volatile
	line	241
;ms83fxx02_motor.c: 241: T4CKDIV = 8;
	movlw	(08h)
	movwf	(279)^0100h	;volatile
	line	242
;ms83fxx02_motor.c: 242: }
	goto	i1l8857
	line	246
	
i1l15013:	
;ms83fxx02_motor.c: 243: else
;ms83fxx02_motor.c: 244: {
;ms83fxx02_motor.c: 246: PWM4CR0 = 0b01110010;
	movlw	(072h)
	movwf	(277)^0100h	;volatile
	line	249
;ms83fxx02_motor.c: 249: PWM4CR1 = 0b00111000;
	movlw	(038h)
	movwf	(278)^0100h	;volatile
	line	252
;ms83fxx02_motor.c: 252: T4CKDIV = 243;
	movlw	(0F3h)
	movwf	(279)^0100h	;volatile
	line	253
	
i1l8857:	
	line	255
;ms83fxx02_motor.c: 253: }
;ms83fxx02_motor.c: 255: TMR4H = 0x0F;
	movlw	(0Fh)
	movwf	(275)^0100h	;volatile
	line	256
	
i1l15015:	
;ms83fxx02_motor.c: 256: TMR4L = 0;
	clrf	(274)^0100h	;volatile
	line	257
	
i1l15017:	
;ms83fxx02_motor.c: 257: PR4L = 0xFF;
	movlw	(0FFh)
	movwf	(276)^0100h	;volatile
	line	260
	
i1l15019:	
;ms83fxx02_motor.c: 260: TMR4IF = 0;
	bcf	(2224/8)^0100h,(2224)&7
	line	263
	
i1l15021:	
;ms83fxx02_motor.c: 263: TMR4ON = 1;
	bsf	(2226/8)^0100h,(2226)&7
	line	266
	
i1l15023:	
;ms83fxx02_motor.c: 266: TMR4IE = 1;
	bsf	(2225/8)^0100h,(2225)&7
	line	267
	
i1l15025:	
;ms83fxx02_motor.c: 267: PEIE = 1;
	bsf	(94/8),(94)&7
	line	268
	
i1l15027:	
;ms83fxx02_motor.c: 268: GIE = 1;
	bsf	(95/8),(95)&7
	line	269
	
i1l8860:	
	return
	opt stack 0
GLOBAL	__end_ofi1_MotorOperationTimer_Init
	__end_ofi1_MotorOperationTimer_Init:
;; =============== function i1_MotorOperationTimer_Init ends ============

	signat	i1_MotorOperationTimer_Init,88
	global	i1_Motor_CheckRunLimit
psect	text1716,local,class=CODE,delta=2
global __ptext1716
__ptext1716:

;; *************** function i1_Motor_CheckRunLimit *****************
;; Defined at:
;;		line 196 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/40
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MotorOperTimer_IntrHandler
;;		i1_MotorOperationTimer_Stop
;; This function uses a non-reentrant model
;;
psect	text1716
	file	"ms83fxx02_motor.c"
	line	196
	global	__size_ofi1_Motor_CheckRunLimit
	__size_ofi1_Motor_CheckRunLimit	equ	__end_ofi1_Motor_CheckRunLimit-i1_Motor_CheckRunLimit
	
i1_Motor_CheckRunLimit:	
	opt	stack 0
; Regs used in i1_Motor_CheckRunLimit: [wreg]
	line	200
	
i1l14993:	
;ms83fxx02_motor.c: 200: if(motor_oper_record >= 120)
	movlw	high(078h)
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_motor_oper_record+1),w	;volatile
	movlw	low(078h)
	skipnz
	subwf	(_motor_oper_record),w	;volatile
	skipc
	goto	u208_21
	goto	u208_20
u208_21:
	goto	i1l14999
u208_20:
	line	202
	
i1l14995:	
;ms83fxx02_motor.c: 201: {
;ms83fxx02_motor.c: 202: return 1;
	movlw	(01h)
	goto	i1l8853
	line	204
	
i1l14999:	
;ms83fxx02_motor.c: 203: }
;ms83fxx02_motor.c: 204: return 0;
	movlw	(0)
	line	205
	
i1l8853:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Motor_CheckRunLimit
	__end_ofi1_Motor_CheckRunLimit:
;; =============== function i1_Motor_CheckRunLimit ends ============

	signat	i1_Motor_CheckRunLimit,89
	global	i1_Motor_SetStatus
psect	text1717,local,class=CODE,delta=2
global __ptext1717
__ptext1717:

;; *************** function i1_Motor_SetStatus *****************
;; Defined at:
;;		line 122 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  Motor_SetSta    1    wreg     enum E1554
;; Auto vars:     Size  Location     Type
;;  Motor_SetSta    1    0[COMMON] enum E1554
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MotorOperTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1717
	file	"ms83fxx02_motor.c"
	line	122
	global	__size_ofi1_Motor_SetStatus
	__size_ofi1_Motor_SetStatus	equ	__end_ofi1_Motor_SetStatus-i1_Motor_SetStatus
	
i1_Motor_SetStatus:	
	opt	stack 1
; Regs used in i1_Motor_SetStatus: [wreg]
;i1Motor_SetStatus@status stored from wreg
	movwf	(i1Motor_SetStatus@status)
	line	123
	
i1l14987:	
;ms83fxx02_motor.c: 123: motor_status = status;
	movf	(i1Motor_SetStatus@status),w
	movwf	(_motor_status)	;volatile
	line	124
	
i1l8834:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Motor_SetStatus
	__end_ofi1_Motor_SetStatus:
;; =============== function i1_Motor_SetStatus ends ============

	signat	i1_Motor_SetStatus,88
	global	i1_Motor_Init
psect	text1718,local,class=CODE,delta=2
global __ptext1718
__ptext1718:

;; *************** function i1_Motor_Init *****************
;; Defined at:
;;		line 65 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  Motor_Init      1    wreg     enum E1554
;; Auto vars:     Size  Location     Type
;;  Motor_Init      1    0[COMMON] enum E1554
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 40/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MotorOperTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1718
	file	"ms83fxx02_motor.c"
	line	65
	global	__size_ofi1_Motor_Init
	__size_ofi1_Motor_Init	equ	__end_ofi1_Motor_Init-i1_Motor_Init
	
i1_Motor_Init:	
	opt	stack 1
; Regs used in i1_Motor_Init: [wreg+status,2+status,0]
;i1Motor_Init@status stored from wreg
	line	67
	movwf	(i1Motor_Init@status)
	
i1l14951:	
;ms83fxx02_motor.c: 67: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	70
	
i1l14953:	
;ms83fxx02_motor.c: 70: CMCON0 |= 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(25),f	;volatile
	line	71
	
i1l14955:	
;ms83fxx02_motor.c: 71: T2CKSRC = 0;
	bcf	(221/8),(221)&7
	line	74
	
i1l14957:	
;ms83fxx02_motor.c: 74: TMR2 = 0;
	clrf	(17)	;volatile
	line	76
	
i1l14959:	
;ms83fxx02_motor.c: 76: T2CON = 0x03;
	movlw	(03h)
	movwf	(18)	;volatile
	line	78
	
i1l14961:	
;ms83fxx02_motor.c: 78: PR2 = 0x9C;
	movlw	(09Ch)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	79
	
i1l14963:	
;ms83fxx02_motor.c: 79: if(status == MOTOR_MODE_STOP)
	decf	(i1Motor_Init@status),w
	skipz
	goto	u203_21
	goto	u203_20
u203_21:
	goto	i1l14969
u203_20:
	goto	i1l8822
	line	83
	
i1l14969:	
;ms83fxx02_motor.c: 83: else if(status == MOTOR_MODE_DUTY_80)
	movf	(i1Motor_Init@status),w
	xorlw	04h
	skipz
	goto	u204_21
	goto	u204_20
u204_21:
	goto	i1l14973
u204_20:
	line	86
	
i1l14971:	
;ms83fxx02_motor.c: 84: {
;ms83fxx02_motor.c: 86: CCPR1L = 0x7D;
	movlw	(07Dh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(19)	;volatile
	line	87
;ms83fxx02_motor.c: 87: CCP1CON = 0x8D | (0x00 << 4);
	movlw	(08Dh)
	movwf	(21)	;volatile
	line	88
;ms83fxx02_motor.c: 88: }
	goto	i1l8823
	line	89
	
i1l14973:	
;ms83fxx02_motor.c: 89: else if(status == MOTOR_MODE_DUTY_90)
	movf	(i1Motor_Init@status),w
	xorlw	03h
	skipz
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l14977
u205_20:
	line	92
	
i1l14975:	
;ms83fxx02_motor.c: 90: {
;ms83fxx02_motor.c: 92: CCPR1L = 0x8C;
	movlw	(08Ch)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(19)	;volatile
	line	93
;ms83fxx02_motor.c: 93: CCP1CON = 0x8D | (0x00 << 4);
	movlw	(08Dh)
	movwf	(21)	;volatile
	line	94
;ms83fxx02_motor.c: 94: }
	goto	i1l8823
	line	97
	
i1l14977:	
;ms83fxx02_motor.c: 95: else
;ms83fxx02_motor.c: 96: {
;ms83fxx02_motor.c: 97: if(status == MOTOR_MODE_DUTY_100)
	movf	(i1Motor_Init@status),w
	xorlw	02h
	skipz
	goto	u206_21
	goto	u206_20
u206_21:
	goto	i1l8823
u206_20:
	line	99
	
i1l14979:	
;ms83fxx02_motor.c: 98: {
;ms83fxx02_motor.c: 99: CCP1CON = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	100
	
i1l14981:	
;ms83fxx02_motor.c: 100: TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1084/8)^080h,(1084)&7
	line	102
	
i1l14983:	
;ms83fxx02_motor.c: 102: PC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(60/8),(60)&7
	goto	i1l8822
	line	106
	
i1l8823:	
	line	109
;ms83fxx02_motor.c: 105: }
;ms83fxx02_motor.c: 106: }
;ms83fxx02_motor.c: 109: TMR2IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(97/8),(97)&7
	line	110
;ms83fxx02_motor.c: 110: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	111
;ms83fxx02_motor.c: 111: while(TMR2IF == 0){;}
	
i1l8829:	
	btfss	(97/8),(97)&7
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l8829
u207_20:
	
i1l8831:	
	line	113
;ms83fxx02_motor.c: 113: TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1084/8)^080h,(1084)&7
	line	114
	
i1l8822:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Motor_Init
	__end_ofi1_Motor_Init:
;; =============== function i1_Motor_Init ends ============

	signat	i1_Motor_Init,88
	global	i1_GPIO_ReadInputDataBit
psect	text1719,local,class=CODE,delta=2
global __ptext1719
__ptext1719:

;; *************** function i1_GPIO_ReadInputDataBit *****************
;; Defined at:
;;		line 101 in file "ms83fxx02_gpio.c"
;; Parameters:    Size  Location     Type
;;  GPIO_ReadInp    1    wreg     enum E1491
;;  GPIO_ReadInp    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  GPIO_ReadInp    1    2[COMMON] enum E1491
;;  GPIO_ReadInp    1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 20/40
;;		On exit  : 20/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ChargeDetect_IntrHandler
;;		_DebounceTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1719
	file	"ms83fxx02_gpio.c"
	line	101
	global	__size_ofi1_GPIO_ReadInputDataBit
	__size_ofi1_GPIO_ReadInputDataBit	equ	__end_ofi1_GPIO_ReadInputDataBit-i1_GPIO_ReadInputDataBit
	
i1_GPIO_ReadInputDataBit:	
	opt	stack 1
; Regs used in i1_GPIO_ReadInputDataBit: [wreg+status,2+status,0]
;i1GPIO_ReadInputDataBit@GPIOx stored from wreg
	movwf	(i1GPIO_ReadInputDataBit@GPIOx)
	line	102
	
i1l14931:	
;ms83fxx02_gpio.c: 102: uint8_t bitstatus = RESET;
	clrf	(i1GPIO_ReadInputDataBit@bitstatus)
	line	104
	
i1l14933:	
;ms83fxx02_gpio.c: 104: if(GPIOx == GPIOA)
	movf	(i1GPIO_ReadInputDataBit@GPIOx),f
	skipz
	goto	u199_21
	goto	u199_20
u199_21:
	goto	i1l14939
u199_20:
	line	106
	
i1l14935:	
;ms83fxx02_gpio.c: 105: {
;ms83fxx02_gpio.c: 106: if (PORTA & GPIO_Pin)
	bcf	status, 6	;RP1=0, select bank0
	movf	(5),w	;volatile
	andwf	(i1GPIO_ReadInputDataBit@GPIO_Pin),w
	btfsc	status,2
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l14945
u200_20:
	line	108
	
i1l14937:	
;ms83fxx02_gpio.c: 107: {
;ms83fxx02_gpio.c: 108: bitstatus = (uint8_t)SET;
	clrf	(i1GPIO_ReadInputDataBit@bitstatus)
	incf	(i1GPIO_ReadInputDataBit@bitstatus),f
	goto	i1l14945
	line	113
	
i1l14939:	
;ms83fxx02_gpio.c: 111: else
;ms83fxx02_gpio.c: 112: {
;ms83fxx02_gpio.c: 113: if(GPIOx == GPIOC)
	decf	(i1GPIO_ReadInputDataBit@GPIOx),w
	skipz
	goto	u201_21
	goto	u201_20
u201_21:
	goto	i1l14945
u201_20:
	line	115
	
i1l14941:	
;ms83fxx02_gpio.c: 114: {
;ms83fxx02_gpio.c: 115: if (PORTC & GPIO_Pin)
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w	;volatile
	andwf	(i1GPIO_ReadInputDataBit@GPIO_Pin),w
	btfsc	status,2
	goto	u202_21
	goto	u202_20
u202_21:
	goto	i1l14945
u202_20:
	goto	i1l14937
	line	122
	
i1l14945:	
;ms83fxx02_gpio.c: 118: }
;ms83fxx02_gpio.c: 119: }
;ms83fxx02_gpio.c: 120: }
;ms83fxx02_gpio.c: 122: return bitstatus;
	movf	(i1GPIO_ReadInputDataBit@bitstatus),w
	line	123
	
i1l4424:	
	return
	opt stack 0
GLOBAL	__end_ofi1_GPIO_ReadInputDataBit
	__end_ofi1_GPIO_ReadInputDataBit:
;; =============== function i1_GPIO_ReadInputDataBit ends ============

	signat	i1_GPIO_ReadInputDataBit,89
	global	i1_GPIO_WriteBit
psect	text1720,local,class=CODE,delta=2
global __ptext1720
__ptext1720:

;; *************** function i1_GPIO_WriteBit *****************
;; Defined at:
;;		line 68 in file "ms83fxx02_gpio.c"
;; Parameters:    Size  Location     Type
;;  GPIO_WriteBi    1    wreg     enum E1491
;;  GPIO_WriteBi    1    0[COMMON] unsigned char 
;;  GPIO_WriteBi    1    1[COMMON] enum E1499
;; Auto vars:     Size  Location     Type
;;  GPIO_WriteBi    1    2[COMMON] enum E1491
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_LED_CloseMotorStatus
;; This function uses a non-reentrant model
;;
psect	text1720
	file	"ms83fxx02_gpio.c"
	line	68
	global	__size_ofi1_GPIO_WriteBit
	__size_ofi1_GPIO_WriteBit	equ	__end_ofi1_GPIO_WriteBit-i1_GPIO_WriteBit
	
i1_GPIO_WriteBit:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_GPIO_WriteBit: [wreg+status,2+status,0]
;i1GPIO_WriteBit@GPIOx stored from wreg
	movwf	(i1GPIO_WriteBit@GPIOx)
	line	69
	
i1l14917:	
;ms83fxx02_gpio.c: 69: if(GPIOx == GPIOA)
	movf	(i1GPIO_WriteBit@GPIOx),f
	skipz
	goto	u196_21
	goto	u196_20
u196_21:
	goto	i1l14925
u196_20:
	line	71
	
i1l14919:	
;ms83fxx02_gpio.c: 70: {
;ms83fxx02_gpio.c: 71: if (BitVal != Bit_RESET)
	movf	(i1GPIO_WriteBit@BitVal),w
	skipz
	goto	u197_20
	goto	i1l14923
u197_20:
	line	73
	
i1l14921:	
;ms83fxx02_gpio.c: 72: {
;ms83fxx02_gpio.c: 73: PORTA |= GPIO_Pin;
	movf	(i1GPIO_WriteBit@GPIO_Pin),w
	iorwf	(5),f	;volatile
	line	74
;ms83fxx02_gpio.c: 74: }
	goto	i1l4416
	line	77
	
i1l14923:	
;ms83fxx02_gpio.c: 75: else
;ms83fxx02_gpio.c: 76: {
;ms83fxx02_gpio.c: 77: PORTA &= ~(GPIO_Pin);
	comf	(i1GPIO_WriteBit@GPIO_Pin),w
	andwf	(5),f	;volatile
	goto	i1l4416
	line	82
	
i1l14925:	
;ms83fxx02_gpio.c: 80: else
;ms83fxx02_gpio.c: 81: {
;ms83fxx02_gpio.c: 82: if (BitVal != Bit_RESET)
	movf	(i1GPIO_WriteBit@BitVal),w
	skipz
	goto	u198_20
	goto	i1l14929
u198_20:
	line	84
	
i1l14927:	
;ms83fxx02_gpio.c: 83: {
;ms83fxx02_gpio.c: 84: PORTC |= GPIO_Pin;
	movf	(i1GPIO_WriteBit@GPIO_Pin),w
	iorwf	(7),f	;volatile
	line	85
;ms83fxx02_gpio.c: 85: }
	goto	i1l4416
	line	88
	
i1l14929:	
;ms83fxx02_gpio.c: 86: else
;ms83fxx02_gpio.c: 87: {
;ms83fxx02_gpio.c: 88: PORTC &= ~(GPIO_Pin);
	comf	(i1GPIO_WriteBit@GPIO_Pin),w
	andwf	(7),f	;volatile
	line	91
	
i1l4416:	
	return
	opt stack 0
GLOBAL	__end_ofi1_GPIO_WriteBit
	__end_ofi1_GPIO_WriteBit:
;; =============== function i1_GPIO_WriteBit ends ============

	signat	i1_GPIO_WriteBit,88
	global	___lbmod
psect	text1721,local,class=CODE,delta=2
global __ptext1721
__ptext1721:

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    2[COMMON] unsigned char 
;;  rem             1    4[COMMON] unsigned char 
;;  counter         1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MotorOperTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1721
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbmod.c"
	line	5
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
	opt	stack 1
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	line	9
	movwf	(___lbmod@dividend)
	
i1l14899:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
i1l14901:	
	clrf	(___lbmod@rem)
	line	12
	
i1l14903:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u193_25:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u193_25
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
i1l14905:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
i1l14907:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u194_21
	goto	u194_20
u194_21:
	goto	i1l14911
u194_20:
	line	15
	
i1l14909:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
i1l14911:	
	decfsz	(___lbmod@counter),f
	goto	u195_21
	goto	u195_20
u195_21:
	goto	i1l14903
u195_20:
	line	17
	
i1l14913:	
	movf	(___lbmod@rem),w
	line	18
	
i1l12928:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	_TIM1_Init
psect	text1722,local,class=CODE,delta=2
global __ptext1722
__ptext1722:

;; *************** function _TIM1_Init *****************
;; Defined at:
;;		line 38 in file "MS83FXX02_KEY.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_KEY_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1722
	file	"MS83FXX02_KEY.C"
	line	38
	global	__size_of_TIM1_Init
	__size_of_TIM1_Init	equ	__end_of_TIM1_Init-_TIM1_Init
	
_TIM1_Init:	
	opt	stack 1
; Regs used in _TIM1_Init: [wreg+status,2]
	line	39
	
i1l14669:	
;MS83FXX02_KEY.C: 39: TMR1ON = 0;
	bcf	(128/8),(128)&7
	line	44
	
i1l14671:	
;MS83FXX02_KEY.C: 44: TMR1L = 0xF0;
	movlw	(0F0h)
	movwf	(14)	;volatile
	line	45
;MS83FXX02_KEY.C: 45: TMR1H = 0xD8;
	movlw	(0D8h)
	movwf	(15)	;volatile
	line	48
	
i1l14673:	
;MS83FXX02_KEY.C: 48: T1CON = 0b00000000;
	clrf	(16)	;volatile
	line	49
	
i1l14675:	
;MS83FXX02_KEY.C: 49: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	51
	
i1l14677:	
;MS83FXX02_KEY.C: 51: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	53
	
i1l14679:	
;MS83FXX02_KEY.C: 53: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	54
	
i1l14681:	
;MS83FXX02_KEY.C: 54: PEIE = 1;
	bsf	(94/8),(94)&7
	line	55
	
i1l14683:	
;MS83FXX02_KEY.C: 55: GIE = 1;
	bsf	(95/8),(95)&7
	line	56
	
i1l5512:	
	return
	opt stack 0
GLOBAL	__end_of_TIM1_Init
	__end_of_TIM1_Init:
;; =============== function _TIM1_Init ends ============

	signat	_TIM1_Init,88
	global	_LEDTimer_IntrHandler
psect	text1723,local,class=CODE,delta=2
global __ptext1723
__ptext1723:

;; *************** function _LEDTimer_IntrHandler *****************
;; Defined at:
;;		line 154 in file "ms83fxx02_led_timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 60/40
;;		On exit  : 20/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1723
	file	"ms83fxx02_led_timer.c"
	line	154
	global	__size_of_LEDTimer_IntrHandler
	__size_of_LEDTimer_IntrHandler	equ	__end_of_LEDTimer_IntrHandler-_LEDTimer_IntrHandler
	
_LEDTimer_IntrHandler:	
	opt	stack 2
; Regs used in _LEDTimer_IntrHandler: []
	line	155
	
i1l14573:	
;ms83fxx02_led_timer.c: 155: if(TMR3IE && TMR3IF)
	btfss	(2177/8)^0100h,(2177)&7
	goto	u155_21
	goto	u155_20
u155_21:
	goto	i1l7716
u155_20:
	
i1l14575:	
	btfss	(2176/8)^0100h,(2176)&7
	goto	u156_21
	goto	u156_20
u156_21:
	goto	i1l7716
u156_20:
	line	157
	
i1l14577:	
;ms83fxx02_led_timer.c: 156: {
;ms83fxx02_led_timer.c: 157: TMR3IF = 0;
	bcf	(2176/8)^0100h,(2176)&7
	line	158
;ms83fxx02_led_timer.c: 158: led_timer_int_status = 1;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_led_timer_int_status)	;volatile
	incf	(_led_timer_int_status),f	;volatile
	line	159
;ms83fxx02_led_timer.c: 159: run_limit_int_status = 1;
	clrf	(_run_limit_int_status)	;volatile
	incf	(_run_limit_int_status),f	;volatile
	line	166
	
i1l7716:	
	return
	opt stack 0
GLOBAL	__end_of_LEDTimer_IntrHandler
	__end_of_LEDTimer_IntrHandler:
;; =============== function _LEDTimer_IntrHandler ends ============

	signat	_LEDTimer_IntrHandler,88
	global	_ChargeTimer_IntrHandler
psect	text1724,local,class=CODE,delta=2
global __ptext1724
__ptext1724:

;; *************** function _ChargeTimer_IntrHandler *****************
;; Defined at:
;;		line 122 in file "ms83fxx02_charge_timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/40
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1724
	file	"ms83fxx02_charge_timer.c"
	line	122
	global	__size_of_ChargeTimer_IntrHandler
	__size_of_ChargeTimer_IntrHandler	equ	__end_of_ChargeTimer_IntrHandler-_ChargeTimer_IntrHandler
	
_ChargeTimer_IntrHandler:	
	opt	stack 2
; Regs used in _ChargeTimer_IntrHandler: [status]
	line	123
	
i1l14529:	
;ms83fxx02_charge_timer.c: 123: if(TMR5IE && TMR5IF)
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2273/8)^0100h,(2273)&7
	goto	u147_21
	goto	u147_20
u147_21:
	goto	i1l12220
u147_20:
	
i1l14531:	
	btfss	(2272/8)^0100h,(2272)&7
	goto	u148_21
	goto	u148_20
u148_21:
	goto	i1l12220
u148_20:
	line	126
	
i1l14533:	
;ms83fxx02_charge_timer.c: 124: {
;ms83fxx02_charge_timer.c: 126: charge_time_out++;
	bcf	status, 6	;RP1=0, select bank0
	incf	(_charge_time_out),f	;volatile
	skipnz
	incf	(_charge_time_out+1),f	;volatile
	line	127
	
i1l14535:	
;ms83fxx02_charge_timer.c: 127: TMR5IF = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2272/8)^0100h,(2272)&7
	line	134
	
i1l12220:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeTimer_IntrHandler
	__end_of_ChargeTimer_IntrHandler:
;; =============== function _ChargeTimer_IntrHandler ends ============

	signat	_ChargeTimer_IntrHandler,88
	global	_SwitchModeTimer_IntrHandler
psect	text1725,local,class=CODE,delta=2
global __ptext1725
__ptext1725:

;; *************** function _SwitchModeTimer_IntrHandler *****************
;; Defined at:
;;		line 119 in file "ms83fxx02_tim.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/40
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1725
	file	"ms83fxx02_tim.c"
	line	119
	global	__size_of_SwitchModeTimer_IntrHandler
	__size_of_SwitchModeTimer_IntrHandler	equ	__end_of_SwitchModeTimer_IntrHandler-_SwitchModeTimer_IntrHandler
	
_SwitchModeTimer_IntrHandler:	
	opt	stack 2
; Regs used in _SwitchModeTimer_IntrHandler: []
	line	120
	
i1l14523:	
;ms83fxx02_tim.c: 120: if(TMR5IE && TMR5IF)
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2273/8)^0100h,(2273)&7
	goto	u145_21
	goto	u145_20
u145_21:
	goto	i1l11136
u145_20:
	
i1l14525:	
	btfss	(2272/8)^0100h,(2272)&7
	goto	u146_21
	goto	u146_20
u146_21:
	goto	i1l11136
u146_20:
	line	123
	
i1l14527:	
;ms83fxx02_tim.c: 121: {
;ms83fxx02_tim.c: 123: switch_mode_time_out = 1;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_switch_mode_time_out)	;volatile
	incf	(_switch_mode_time_out),f	;volatile
	line	124
;ms83fxx02_tim.c: 124: TMR5IF = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2272/8)^0100h,(2272)&7
	line	127
;ms83fxx02_tim.c: 127: TMR5ON = 0;
	bcf	(2274/8)^0100h,(2274)&7
	line	129
;ms83fxx02_tim.c: 129: TMR5IE = 0;
	bcf	(2273/8)^0100h,(2273)&7
	line	131
	
i1l11136:	
	return
	opt stack 0
GLOBAL	__end_of_SwitchModeTimer_IntrHandler
	__end_of_SwitchModeTimer_IntrHandler:
;; =============== function _SwitchModeTimer_IntrHandler ends ============

	signat	_SwitchModeTimer_IntrHandler,88
psect	text1726,local,class=CODE,delta=2
global __ptext1726
__ptext1726:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end

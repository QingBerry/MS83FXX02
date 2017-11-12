opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

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
	FNCALL	_main,_Board_Init
	FNCALL	_main,_Driver_Init
	FNCALL	_main,_Motor_GetStatus
	FNCALL	_main,_Motor_HandleStatusChangeEvt
	FNCALL	_main,_LED_Init
	FNCALL	_main,_KEY_DeInit
	FNCALL	_main,_Motor_Stop
	FNCALL	_main,_Motor_SetStatus
	FNCALL	_main,_MotorOperationTimer_Stop
	FNCALL	_main,_LEDTimer_DispRunLimitCmd
	FNCALL	_main,_LEDTimer_Cmd
	FNCALL	_main,_LEDTimer_INTConfig
	FNCALL	_main,_ChargeCtrl_Output
	FNCALL	_main,_LED_VoltageChargeOutput
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_ChargeTimer_Cmd
	FNCALL	_main,_ChargeTimer_INTConfig
	FNCALL	_main,_SleepLedTimer_Init
	FNCALL	_main,_charge_control
	FNCALL	_main,_ChargeDetect_GetStatus
	FNCALL	_main,_SetDeviceMode
	FNCALL	_main,_GetDeviceMode
	FNCALL	_Motor_HandleStatusChangeEvt,_Motor_CheckRunLimit
	FNCALL	_Motor_HandleStatusChangeEvt,_KEY_GetReleaseStatus
	FNCALL	_Motor_HandleStatusChangeEvt,_Motor_SetStatus
	FNCALL	_Motor_HandleStatusChangeEvt,_Motor_Start
	FNCALL	_Motor_HandleStatusChangeEvt,_MotorOperationTimer_Stop
	FNCALL	_Motor_HandleStatusChangeEvt,_MotorOperationTimer_Init
	FNCALL	_Motor_HandleStatusChangeEvt,_SwitchModeTimer_GetINTStatus
	FNCALL	_Motor_HandleStatusChangeEvt,_Motor_Stop
	FNCALL	_Motor_HandleStatusChangeEvt,_SwitchModeTimer_INTConfig
	FNCALL	_Motor_HandleStatusChangeEvt,_SwitchModeTimer_Cmd
	FNCALL	_Motor_HandleStatusChangeEvt,_LEDTimer_DispRunLimitCmd
	FNCALL	_Motor_HandleStatusChangeEvt,_KEY_GetPressStatus
	FNCALL	_Motor_HandleStatusChangeEvt,_GPIO_WriteBit
	FNCALL	_charge_control,_ChargeTimer_GetCount
	FNCALL	_charge_control,_Battery_Detect
	FNCALL	_charge_control,_LED_VoltageChargeOutput
	FNCALL	_charge_control,_GPIO_WriteBit
	FNCALL	_Driver_Init,_LED_Init
	FNCALL	_Driver_Init,_KEY_Init
	FNCALL	_Driver_Init,_Charge_Init
	FNCALL	_Driver_Init,_ADC_Init
	FNCALL	_Driver_Init,_LEDTimer_Cmd
	FNCALL	_Driver_Init,_LEDTimer_INTConfig
	FNCALL	_Driver_Init,_EEPROM_Init
	FNCALL	_Motor_Start,_LED_DisplayMotorStatus
	FNCALL	_Motor_Start,_Motor_Init
	FNCALL	_Motor_Start,_SwitchModeTimer_Cmd
	FNCALL	_Motor_Start,_SwitchModeTimer_INTConfig
	FNCALL	_Battery_Detect,_Battery_HandleData
	FNCALL	_Battery_Detect,_GetDeviceMode
	FNCALL	_Battery_Detect,___lwtoft
	FNCALL	_Battery_Detect,___ftge
	FNCALL	_Battery_Detect,_EEPROM_SetFlag
	FNCALL	_Battery_Detect,_EEPROM_StoreModeData
	FNCALL	_Battery_Detect,_EEPROM_StoreMotorData
	FNCALL	_Battery_Detect,_LED_UnderVoltageOutput
	FNCALL	_Battery_Detect,_LED_Init
	FNCALL	_Battery_Detect,_KEY_DeInit
	FNCALL	_Battery_Detect,_Motor_Stop
	FNCALL	_Battery_Detect,_Motor_SetStatus
	FNCALL	_Battery_Detect,_MotorOperationTimer_Stop
	FNCALL	_Battery_Detect,_LEDTimer_DispUnderVoltCmd
	FNCALL	_Battery_Detect,_GPIO_WriteBit
	FNCALL	_Charge_Init,_ChargeDetect_Init
	FNCALL	_Charge_Init,_ChargeCtrl_Init
	FNCALL	___lwtoft,___ftpack
	FNCALL	_EEPROM_StoreModeData,_EEPROM_Write
	FNCALL	_EEPROM_SetFlag,_EEPROM_Write
	FNCALL	_EEPROM_StoreMotorData,_EEPROM_Write
	FNCALL	_LED_UnderVoltageOutput,_GPIO_WriteBit
	FNCALL	_LED_DisplayMotorStatus,_GPIO_WriteBit
	FNCALL	_ChargeCtrl_Init,_GPIO_Init
	FNCALL	_ChargeCtrl_Init,_GPIO_WriteBit
	FNCALL	_ChargeDetect_Init,_GPIO_Init
	FNCALL	_ChargeDetect_Init,_GPIO_ReadInputDataBit
	FNCALL	_ChargeDetect_Init,_GPIO_INTConfig
	FNCALL	_ChargeDetect_GetStatus,_GPIO_ReadInputDataBit
	FNCALL	_SleepLedTimer_Init,_SleepLed_Init
	FNCALL	_ChargeCtrl_Output,_GPIO_WriteBit
	FNCALL	_MotorOperationTimer_Stop,_Motor_CheckRunLimit
	FNCALL	_Motor_Stop,_GPIO_WriteBit
	FNCALL	_KEY_DeInit,_GPIO_Init
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
	FNCALL	_ISR,_LEDTimer_IntrHandler
	FNCALL	_ISR,_ChargeTimer_IntrHandler
	FNCALL	_ISR,_SleepLedTimer_IntrHandler
	FNCALL	_ISR,_MotorOperTimer_IntrHandler
	FNCALL	_ISR,_ChargeDetect_IntrHandler
	FNCALL	_ISR,_ADC_IntrHandler
	FNCALL	_MotorOperTimer_IntrHandler,i1_Motor_CheckRunLimit
	FNCALL	_MotorOperTimer_IntrHandler,___awmod
	FNCALL	_MotorOperTimer_IntrHandler,i1_MotorOperationTimer_Init
	FNCALL	_MotorOperTimer_IntrHandler,i1_Motor_Stop
	FNCALL	_MotorOperTimer_IntrHandler,i1_MotorOperationTimer_Stop
	FNCALL	_MotorOperTimer_IntrHandler,i1_Motor_SetStatus
	FNCALL	_MotorOperTimer_IntrHandler,i1_Motor_Init
	FNCALL	_LEDTimer_IntrHandler,i1_GPIO_ReadInputDataBit
	FNCALL	_LEDTimer_IntrHandler,i1_LED_UnderVoltageOutput
	FNCALL	_LEDTimer_IntrHandler,_LED_DisplayRunLimit
	FNCALL	_LEDTimer_IntrHandler,_ADC_Enable
	FNCALL	i1_MotorOperationTimer_Stop,i1_Motor_CheckRunLimit
	FNCALL	i1_Motor_Stop,i1_GPIO_WriteBit
	FNCALL	i1_LED_UnderVoltageOutput,i1_GPIO_WriteBit
	FNCALL	_LED_DisplayRunLimit,i1_GPIO_ReadInputDataBit
	FNCALL	_LED_DisplayRunLimit,i1_GPIO_WriteBit
	FNCALL	_ADC_IntrHandler,_ADC_ReadData
	FNCALL	_ChargeDetect_IntrHandler,i1_GPIO_ReadInputDataBit
	FNCALL	_SleepLedTimer_IntrHandler,_SleepLed_ChangeDuty
	FNCALL	_DebounceTimer_IntrHandler,i1_GPIO_ReadInputDataBit
	FNCALL	_KEY_IntrHandler,_TIM1_Init
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_current_period_type
	global	_motor_timing_running_flag
	global	_key_status
	global	_motor_status
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"ms83fxx02_led_timer.c"
	line	34

;initializer for _current_period_type
	retlw	01h
	file	"ms83fxx02_motor.c"
	line	54

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
	line	45

;initializer for _motor_status
	retlw	01h
	global	_battery_value
	global	_charge_time_out
	global	_motor_oper_record
	global	_sleep_led_duty
	global	_battery_handle_flag
	global	_battery_sample_count
	global	_charge_detect_count
	global	_detect_under_voltage
	global	_device_mode
	global	_key_press
	global	_key_press_flag
	global	_key_press_time_count
	global	_key_release
	global	_run_limit_display_en
	global	_sleep_led_dir
	global	_switch_mode_time_out
	global	_under_volt_display_En
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
	global	_PWM1CON
_PWM1CON	set	22
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
	global	_ADIF
_ADIF	set	105
	global	_ADON
_ADON	set	248
	global	_CARRY
_CARRY	set	24
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
	global	_EECON2
_EECON2	set	157
	global	_EEDAT
_EEDAT	set	154
	global	_EEDATA
_EEDATA	set	154
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
	global	_ADIE
_ADIE	set	1129
	global	_ANSEL5
_ANSEL5	set	1165
	global	_INTEDG
_INTEDG	set	1038
	global	_RD
_RD	set	1248
	global	_TMR1IE
_TMR1IE	set	1120
	global	_TRISC3
_TRISC3	set	1083
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
	global	_WREN
_WREN	set	3170
	file	"ms83fxx02_motorctrl.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
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
	line	45
_motor_status:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_battery_value:
       ds      20

_charge_time_out:
       ds      2

_motor_oper_record:
       ds      2

_sleep_led_duty:
       ds      2

_battery_handle_flag:
       ds      1

_battery_sample_count:
       ds      1

_charge_detect_count:
       ds      1

_detect_under_voltage:
       ds      1

_device_mode:
       ds      1

_key_press:
       ds      1

_key_press_flag:
       ds      1

_key_press_time_count:
       ds      1

_key_release:
       ds      1

_run_limit_display_en:
       ds      1

_sleep_led_dir:
       ds      1

_switch_mode_time_out:
       ds      1

_under_volt_display_En:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"ms83fxx02_led_timer.c"
	line	34
_current_period_type:
       ds      1

psect	dataBANK0
	file	"ms83fxx02_motor.c"
	line	54
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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+027h)
	fcall	clear_ram
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
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
	global	?_LEDTimer_INTConfig
?_LEDTimer_INTConfig:	; 0 bytes @ 0x0
	global	?_EEPROM_Init
?_EEPROM_Init:	; 0 bytes @ 0x0
	global	?_Battery_Detect
?_Battery_Detect:	; 0 bytes @ 0x0
	global	?_LED_VoltageChargeOutput
?_LED_VoltageChargeOutput:	; 0 bytes @ 0x0
	global	?_Motor_HandleStatusChangeEvt
?_Motor_HandleStatusChangeEvt:	; 0 bytes @ 0x0
	global	?_KEY_DeInit
?_KEY_DeInit:	; 0 bytes @ 0x0
	global	?_Motor_Stop
?_Motor_Stop:	; 0 bytes @ 0x0
	global	?_Motor_SetStatus
?_Motor_SetStatus:	; 0 bytes @ 0x0
	global	?_MotorOperationTimer_Stop
?_MotorOperationTimer_Stop:	; 0 bytes @ 0x0
	global	?_LEDTimer_DispRunLimitCmd
?_LEDTimer_DispRunLimitCmd:	; 0 bytes @ 0x0
	global	?_ChargeCtrl_Output
?_ChargeCtrl_Output:	; 0 bytes @ 0x0
	global	?_ChargeTimer_Cmd
?_ChargeTimer_Cmd:	; 0 bytes @ 0x0
	global	?_ChargeTimer_INTConfig
?_ChargeTimer_INTConfig:	; 0 bytes @ 0x0
	global	?_SleepLedTimer_Init
?_SleepLedTimer_Init:	; 0 bytes @ 0x0
	global	?_SetDeviceMode
?_SetDeviceMode:	; 0 bytes @ 0x0
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
	global	?_LEDTimer_IntrHandler
?_LEDTimer_IntrHandler:	; 0 bytes @ 0x0
	global	?_ChargeTimer_IntrHandler
?_ChargeTimer_IntrHandler:	; 0 bytes @ 0x0
	global	??_ChargeTimer_IntrHandler
??_ChargeTimer_IntrHandler:	; 0 bytes @ 0x0
	global	?_SleepLedTimer_IntrHandler
?_SleepLedTimer_IntrHandler:	; 0 bytes @ 0x0
	global	??_SleepLedTimer_IntrHandler
??_SleepLedTimer_IntrHandler:	; 0 bytes @ 0x0
	global	?_MotorOperTimer_IntrHandler
?_MotorOperTimer_IntrHandler:	; 0 bytes @ 0x0
	global	?_ChargeDetect_IntrHandler
?_ChargeDetect_IntrHandler:	; 0 bytes @ 0x0
	global	?_ADC_IntrHandler
?_ADC_IntrHandler:	; 0 bytes @ 0x0
	global	?_ADC_Enable
?_ADC_Enable:	; 0 bytes @ 0x0
	global	??_ADC_Enable
??_ADC_Enable:	; 0 bytes @ 0x0
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
	global	?_LED_UnderVoltageOutput
?_LED_UnderVoltageOutput:	; 0 bytes @ 0x0
	global	?_LEDTimer_DispUnderVoltCmd
?_LEDTimer_DispUnderVoltCmd:	; 0 bytes @ 0x0
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
	global	?_SleepLed_ChangeDuty
?_SleepLed_ChangeDuty:	; 0 bytes @ 0x0
	global	??_SleepLed_ChangeDuty
??_SleepLed_ChangeDuty:	; 0 bytes @ 0x0
	global	?i1_LED_UnderVoltageOutput
?i1_LED_UnderVoltageOutput:	; 0 bytes @ 0x0
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
	global	?_Motor_GetStatus
?_Motor_GetStatus:	; 1 bytes @ 0x0
	global	?_ChargeDetect_GetStatus
?_ChargeDetect_GetStatus:	; 1 bytes @ 0x0
	global	?_GetDeviceMode
?_GetDeviceMode:	; 1 bytes @ 0x0
	global	?_SwitchModeTimer_GetINTStatus
?_SwitchModeTimer_GetINTStatus:	; 1 bytes @ 0x0
	global	?_KEY_GetReleaseStatus
?_KEY_GetReleaseStatus:	; 1 bytes @ 0x0
	global	?_KEY_GetPressStatus
?_KEY_GetPressStatus:	; 1 bytes @ 0x0
	global	?_Motor_CheckRunLimit
?_Motor_CheckRunLimit:	; 1 bytes @ 0x0
	global	?i1_GPIO_ReadInputDataBit
?i1_GPIO_ReadInputDataBit:	; 1 bytes @ 0x0
	global	?i1_Motor_CheckRunLimit
?i1_Motor_CheckRunLimit:	; 1 bytes @ 0x0
	global	?i1_GetDeviceMode
?i1_GetDeviceMode:	; 1 bytes @ 0x0
	global	?_ADC_ReadData
?_ADC_ReadData:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	i1GPIO_ReadInputDataBit@GPIO_Pin
i1GPIO_ReadInputDataBit@GPIO_Pin:	; 1 bytes @ 0x0
	global	i1MotorOperationTimer_Init@time
i1MotorOperationTimer_Init@time:	; 1 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??i1_GPIO_ReadInputDataBit
??i1_GPIO_ReadInputDataBit:	; 0 bytes @ 0x1
	global	i1GPIO_ReadInputDataBit@bitstatus
i1GPIO_ReadInputDataBit@bitstatus:	; 1 bytes @ 0x1
	global	i1Motor_Init@status
i1Motor_Init@status:	; 1 bytes @ 0x1
	global	i1Motor_SetStatus@status
i1Motor_SetStatus@status:	; 1 bytes @ 0x1
	ds	1
	global	??_ADC_ReadData
??_ADC_ReadData:	; 0 bytes @ 0x2
	global	ADC_Enable@channel
ADC_Enable@channel:	; 1 bytes @ 0x2
	global	i1GPIO_ReadInputDataBit@GPIOx
i1GPIO_ReadInputDataBit@GPIOx:	; 1 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_DebounceTimer_IntrHandler
??_DebounceTimer_IntrHandler:	; 0 bytes @ 0x3
	global	??_ChargeDetect_IntrHandler
??_ChargeDetect_IntrHandler:	; 0 bytes @ 0x3
	global	?i1_GPIO_WriteBit
?i1_GPIO_WriteBit:	; 0 bytes @ 0x3
	global	i1GPIO_WriteBit@GPIO_Pin
i1GPIO_WriteBit@GPIO_Pin:	; 1 bytes @ 0x3
	ds	1
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	i1GPIO_WriteBit@BitVal
i1GPIO_WriteBit@BitVal:	; 1 bytes @ 0x4
	ds	1
	global	??i1_GPIO_WriteBit
??i1_GPIO_WriteBit:	; 0 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	i1GPIO_WriteBit@GPIOx
i1GPIO_WriteBit@GPIOx:	; 1 bytes @ 0x6
	global	ADC_ReadData@battery_value
ADC_ReadData@battery_value:	; 2 bytes @ 0x6
	ds	1
	global	??_LED_DisplayRunLimit
??_LED_DisplayRunLimit:	; 0 bytes @ 0x7
	global	??i1_LED_UnderVoltageOutput
??i1_LED_UnderVoltageOutput:	; 0 bytes @ 0x7
	global	??i1_Motor_Stop
??i1_Motor_Stop:	; 0 bytes @ 0x7
	ds	1
	global	??_MotorOperTimer_IntrHandler
??_MotorOperTimer_IntrHandler:	; 0 bytes @ 0x8
	global	??_ADC_IntrHandler
??_ADC_IntrHandler:	; 0 bytes @ 0x8
	ds	1
	global	i1LED_UnderVoltageOutput@BitVal
i1LED_UnderVoltageOutput@BitVal:	; 1 bytes @ 0x9
	ds	1
	global	??_LEDTimer_IntrHandler
??_LEDTimer_IntrHandler:	; 0 bytes @ 0xA
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	ds	4
	global	??_ADC_Init
??_ADC_Init:	; 0 bytes @ 0x4
	global	?_LEDTimer_Cmd
?_LEDTimer_Cmd:	; 0 bytes @ 0x4
	global	??_LEDTimer_INTConfig
??_LEDTimer_INTConfig:	; 0 bytes @ 0x4
	global	?_GPIO_WriteBit
?_GPIO_WriteBit:	; 0 bytes @ 0x4
	global	??_Motor_GetStatus
??_Motor_GetStatus:	; 0 bytes @ 0x4
	global	??_Motor_SetStatus
??_Motor_SetStatus:	; 0 bytes @ 0x4
	global	??_MotorOperationTimer_Stop
??_MotorOperationTimer_Stop:	; 0 bytes @ 0x4
	global	??_LEDTimer_DispRunLimitCmd
??_LEDTimer_DispRunLimitCmd:	; 0 bytes @ 0x4
	global	??_ChargeTimer_Cmd
??_ChargeTimer_Cmd:	; 0 bytes @ 0x4
	global	??_ChargeTimer_INTConfig
??_ChargeTimer_INTConfig:	; 0 bytes @ 0x4
	global	??_SetDeviceMode
??_SetDeviceMode:	; 0 bytes @ 0x4
	global	??_GetDeviceMode
??_GetDeviceMode:	; 0 bytes @ 0x4
	global	?_GPIO_Init
?_GPIO_Init:	; 0 bytes @ 0x4
	global	?_GPIO_INTConfig
?_GPIO_INTConfig:	; 0 bytes @ 0x4
	global	?_EEPROM_Write
?_EEPROM_Write:	; 0 bytes @ 0x4
	global	??_SwitchModeTimer_Cmd
??_SwitchModeTimer_Cmd:	; 0 bytes @ 0x4
	global	??_SwitchModeTimer_INTConfig
??_SwitchModeTimer_INTConfig:	; 0 bytes @ 0x4
	global	??_SwitchModeTimer_GetINTStatus
??_SwitchModeTimer_GetINTStatus:	; 0 bytes @ 0x4
	global	??_Board_Init
??_Board_Init:	; 0 bytes @ 0x4
	global	??_KEY_GetReleaseStatus
??_KEY_GetReleaseStatus:	; 0 bytes @ 0x4
	global	??_KEY_GetPressStatus
??_KEY_GetPressStatus:	; 0 bytes @ 0x4
	global	??_LEDTimer_DispUnderVoltCmd
??_LEDTimer_DispUnderVoltCmd:	; 0 bytes @ 0x4
	global	??_Motor_Init
??_Motor_Init:	; 0 bytes @ 0x4
	global	??_Motor_CheckRunLimit
??_Motor_CheckRunLimit:	; 0 bytes @ 0x4
	global	??_MotorOperationTimer_Init
??_MotorOperationTimer_Init:	; 0 bytes @ 0x4
	global	?_SleepLed_Init
?_SleepLed_Init:	; 0 bytes @ 0x4
	global	?_GPIO_ReadInputDataBit
?_GPIO_ReadInputDataBit:	; 1 bytes @ 0x4
	global	?_ChargeTimer_GetCount
?_ChargeTimer_GetCount:	; 2 bytes @ 0x4
	global	?_Battery_HandleData
?_Battery_HandleData:	; 2 bytes @ 0x4
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x4
	global	EEPROM_Write@data
EEPROM_Write@data:	; 1 bytes @ 0x4
	global	GPIO_Init@GPIO_InitStruct
GPIO_Init@GPIO_InitStruct:	; 1 bytes @ 0x4
	global	GPIO_WriteBit@GPIO_Pin
GPIO_WriteBit@GPIO_Pin:	; 1 bytes @ 0x4
	global	GPIO_ReadInputDataBit@GPIO_Pin
GPIO_ReadInputDataBit@GPIO_Pin:	; 1 bytes @ 0x4
	global	GPIO_INTConfig@GPIO_Pin
GPIO_INTConfig@GPIO_Pin:	; 1 bytes @ 0x4
	global	LEDTimer_Cmd@NewState
LEDTimer_Cmd@NewState:	; 1 bytes @ 0x4
	global	LEDTimer_INTConfig@NewState
LEDTimer_INTConfig@NewState:	; 1 bytes @ 0x4
	global	LEDTimer_DispUnderVoltCmd@NewState
LEDTimer_DispUnderVoltCmd@NewState:	; 1 bytes @ 0x4
	global	LEDTimer_DispRunLimitCmd@NewState
LEDTimer_DispRunLimitCmd@NewState:	; 1 bytes @ 0x4
	global	MotorOperationTimer_Init@time
MotorOperationTimer_Init@time:	; 1 bytes @ 0x4
	global	SwitchModeTimer_Cmd@NewState
SwitchModeTimer_Cmd@NewState:	; 1 bytes @ 0x4
	global	SwitchModeTimer_INTConfig@NewState
SwitchModeTimer_INTConfig@NewState:	; 1 bytes @ 0x4
	global	ChargeTimer_Cmd@NewState
ChargeTimer_Cmd@NewState:	; 1 bytes @ 0x4
	global	ChargeTimer_INTConfig@NewState
ChargeTimer_INTConfig@NewState:	; 1 bytes @ 0x4
	global	SleepLed_Init@duty
SleepLed_Init@duty:	; 2 bytes @ 0x4
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x4
	ds	1
	global	??_LEDTimer_Cmd
??_LEDTimer_Cmd:	; 0 bytes @ 0x5
	global	??_GPIO_Init
??_GPIO_Init:	; 0 bytes @ 0x5
	global	??_GPIO_ReadInputDataBit
??_GPIO_ReadInputDataBit:	; 0 bytes @ 0x5
	global	??_EEPROM_Write
??_EEPROM_Write:	; 0 bytes @ 0x5
	global	EEPROM_Write@addr
EEPROM_Write@addr:	; 1 bytes @ 0x5
	global	GPIO_WriteBit@BitVal
GPIO_WriteBit@BitVal:	; 1 bytes @ 0x5
	global	GPIO_ReadInputDataBit@bitstatus
GPIO_ReadInputDataBit@bitstatus:	; 1 bytes @ 0x5
	global	GPIO_INTConfig@NewState
GPIO_INTConfig@NewState:	; 1 bytes @ 0x5
	global	Motor_Init@status
Motor_Init@status:	; 1 bytes @ 0x5
	global	Motor_SetStatus@status
Motor_SetStatus@status:	; 1 bytes @ 0x5
	global	SetDeviceMode@mode
SetDeviceMode@mode:	; 1 bytes @ 0x5
	ds	1
	global	??_EEPROM_Init
??_EEPROM_Init:	; 0 bytes @ 0x6
	global	??_ChargeTimer_GetCount
??_ChargeTimer_GetCount:	; 0 bytes @ 0x6
	global	??_GPIO_WriteBit
??_GPIO_WriteBit:	; 0 bytes @ 0x6
	global	??_SleepLedTimer_Init
??_SleepLedTimer_Init:	; 0 bytes @ 0x6
	global	??_GPIO_INTConfig
??_GPIO_INTConfig:	; 0 bytes @ 0x6
	global	??_EEPROM_StoreMotorData
??_EEPROM_StoreMotorData:	; 0 bytes @ 0x6
	global	??_EEPROM_SetFlag
??_EEPROM_SetFlag:	; 0 bytes @ 0x6
	global	??_EEPROM_StoreModeData
??_EEPROM_StoreModeData:	; 0 bytes @ 0x6
	global	??_Battery_HandleData
??_Battery_HandleData:	; 0 bytes @ 0x6
	global	??_SleepLed_Init
??_SleepLed_Init:	; 0 bytes @ 0x6
	global	GPIO_Init@GPIOx
GPIO_Init@GPIOx:	; 1 bytes @ 0x6
	global	GPIO_ReadInputDataBit@GPIOx
GPIO_ReadInputDataBit@GPIOx:	; 1 bytes @ 0x6
	global	LEDTimer_Cmd@period_type
LEDTimer_Cmd@period_type:	; 1 bytes @ 0x6
	global	ADC_Init@channel
ADC_Init@channel:	; 1 bytes @ 0x6
	ds	1
	global	??_KEY_DeInit
??_KEY_DeInit:	; 0 bytes @ 0x7
	global	??_ChargeDetect_GetStatus
??_ChargeDetect_GetStatus:	; 0 bytes @ 0x7
	global	GPIO_WriteBit@GPIOx
GPIO_WriteBit@GPIOx:	; 1 bytes @ 0x7
	global	GPIO_INTConfig@GPIOx
GPIO_INTConfig@GPIOx:	; 1 bytes @ 0x7
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x7
	ds	1
	global	??_LED_Init
??_LED_Init:	; 0 bytes @ 0x8
	global	??_KEY_Init
??_KEY_Init:	; 0 bytes @ 0x8
	global	??_LED_VoltageChargeOutput
??_LED_VoltageChargeOutput:	; 0 bytes @ 0x8
	global	??_Motor_Stop
??_Motor_Stop:	; 0 bytes @ 0x8
	global	??_ChargeCtrl_Output
??_ChargeCtrl_Output:	; 0 bytes @ 0x8
	global	??_ChargeDetect_Init
??_ChargeDetect_Init:	; 0 bytes @ 0x8
	global	??_ChargeCtrl_Init
??_ChargeCtrl_Init:	; 0 bytes @ 0x8
	global	?_LED_DisplayMotorStatus
?_LED_DisplayMotorStatus:	; 0 bytes @ 0x8
	global	??_LED_UnderVoltageOutput
??_LED_UnderVoltageOutput:	; 0 bytes @ 0x8
	global	LED_DisplayMotorStatus@GPIO_Pin
LED_DisplayMotorStatus@GPIO_Pin:	; 1 bytes @ 0x8
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x8
	global	ChargeDetect_GetStatus@i
ChargeDetect_GetStatus@i:	; 2 bytes @ 0x8
	global	KEY_DeInit@GPIO_InitStruct
KEY_DeInit@GPIO_InitStruct:	; 2 bytes @ 0x8
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x9
	global	??_LED_DisplayMotorStatus
??_LED_DisplayMotorStatus:	; 0 bytes @ 0x9
	global	ChargeDetect_Init@GPIO_InitStruct
ChargeDetect_Init@GPIO_InitStruct:	; 2 bytes @ 0x9
	global	ChargeCtrl_Init@GPIO_InitStruct
ChargeCtrl_Init@GPIO_InitStruct:	; 2 bytes @ 0x9
	global	KEY_Init@GPIO_InitStruct
KEY_Init@GPIO_InitStruct:	; 2 bytes @ 0x9
	global	LED_Init@GPIO_InitStruct
LED_Init@GPIO_InitStruct:	; 2 bytes @ 0x9
	ds	1
	global	ChargeCtrl_Output@BitVal
ChargeCtrl_Output@BitVal:	; 1 bytes @ 0xA
	global	LED_DisplayMotorStatus@GPIOx
LED_DisplayMotorStatus@GPIOx:	; 1 bytes @ 0xA
	global	LED_VoltageChargeOutput@BitVal
LED_VoltageChargeOutput@BitVal:	; 1 bytes @ 0xA
	global	LED_UnderVoltageOutput@BitVal
LED_UnderVoltageOutput@BitVal:	; 1 bytes @ 0xA
	global	Battery_HandleData@temp2
Battery_HandleData@temp2:	; 2 bytes @ 0xA
	ds	1
	global	??_Charge_Init
??_Charge_Init:	; 0 bytes @ 0xB
	global	??_Driver_Init
??_Driver_Init:	; 0 bytes @ 0xB
	global	??_Motor_Start
??_Motor_Start:	; 0 bytes @ 0xB
	ds	1
	global	?___ftge
?___ftge:	; 1 bit 
	global	Motor_Start@status
Motor_Start@status:	; 1 bytes @ 0xC
	global	Battery_HandleData@average_data
Battery_HandleData@average_data:	; 2 bytes @ 0xC
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0xC
	ds	1
	global	??_Motor_HandleStatusChangeEvt
??_Motor_HandleStatusChangeEvt:	; 0 bytes @ 0xD
	ds	1
	global	Motor_HandleStatusChangeEvt@status
Motor_HandleStatusChangeEvt@status:	; 1 bytes @ 0xE
	global	Battery_HandleData@temp1
Battery_HandleData@temp1:	; 2 bytes @ 0xE
	ds	1
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0xF
	ds	1
	global	Battery_HandleData@i
Battery_HandleData@i:	; 1 bytes @ 0x10
	ds	2
	global	??___ftge
??___ftge:	; 0 bytes @ 0x12
	ds	6
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x18
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x18
	ds	3
	global	??___lwtoft
??___lwtoft:	; 0 bytes @ 0x1B
	ds	1
	global	??_Battery_Detect
??_Battery_Detect:	; 0 bytes @ 0x1C
	ds	1
	global	Battery_Detect@mode
Battery_Detect@mode:	; 1 bytes @ 0x1D
	ds	1
	global	Battery_Detect@adc_data
Battery_Detect@adc_data:	; 2 bytes @ 0x1E
	ds	2
	global	??_charge_control
??_charge_control:	; 0 bytes @ 0x20
	global	charge_control@charge_count
charge_control@charge_count:	; 2 bytes @ 0x20
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x22
;;Data sizes: Strings 0, constant 0, data 4, bss 40, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      14
;; BANK0           80     34      75
;; BANK1           80      0       0
;; BANK2           80      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?_ChargeTimer_GetCount	unsigned int  size(1) Largest target is 0
;;
;; ?___lwtoft	float  size(1) Largest target is 0
;;
;; ?_Battery_HandleData	unsigned int  size(1) Largest target is 0
;;
;; ?_ADC_ReadData	unsigned short  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
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
;;   _ISR->_LEDTimer_IntrHandler
;;   _MotorOperTimer_IntrHandler->i1_Motor_Stop
;;   _LEDTimer_IntrHandler->i1_LED_UnderVoltageOutput
;;   _LEDTimer_IntrHandler->_LED_DisplayRunLimit
;;   i1_Motor_Stop->i1_GPIO_WriteBit
;;   i1_LED_UnderVoltageOutput->i1_GPIO_WriteBit
;;   _LED_DisplayRunLimit->i1_GPIO_WriteBit
;;   _ADC_IntrHandler->_ADC_ReadData
;;   _ChargeDetect_IntrHandler->i1_GPIO_ReadInputDataBit
;;   _DebounceTimer_IntrHandler->i1_GPIO_ReadInputDataBit
;;   i1_GPIO_WriteBit->i1_GPIO_ReadInputDataBit
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_charge_control
;;   _Motor_HandleStatusChangeEvt->_Motor_Start
;;   _charge_control->_Battery_Detect
;;   _Driver_Init->_LED_Init
;;   _Driver_Init->_KEY_Init
;;   _Motor_Start->_LED_DisplayMotorStatus
;;   _Battery_Detect->___lwtoft
;;   _Charge_Init->_ChargeDetect_Init
;;   _Charge_Init->_ChargeCtrl_Init
;;   ___lwtoft->___ftge
;;   _EEPROM_StoreModeData->_EEPROM_Write
;;   _EEPROM_SetFlag->_EEPROM_Write
;;   _EEPROM_StoreMotorData->_EEPROM_Write
;;   _LED_UnderVoltageOutput->_GPIO_WriteBit
;;   _LED_DisplayMotorStatus->_GPIO_WriteBit
;;   _ChargeCtrl_Init->_GPIO_WriteBit
;;   _ChargeDetect_Init->_GPIO_INTConfig
;;   _ChargeDetect_GetStatus->_GPIO_ReadInputDataBit
;;   _SleepLedTimer_Init->_SleepLed_Init
;;   _ChargeCtrl_Output->_GPIO_WriteBit
;;   _Motor_Stop->_GPIO_WriteBit
;;   _KEY_DeInit->_GPIO_Init
;;   _LED_VoltageChargeOutput->_GPIO_WriteBit
;;   _EEPROM_Init->_EEPROM_Write
;;   _KEY_Init->_GPIO_INTConfig
;;   _LED_Init->_GPIO_WriteBit
;;   ___ftge->___ftpack
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
;; (0) _main                                                 0     0      0    6758
;;                         _Board_Init
;;                        _Driver_Init
;;                    _Motor_GetStatus
;;        _Motor_HandleStatusChangeEvt
;;                           _LED_Init
;;                         _KEY_DeInit
;;                         _Motor_Stop
;;                    _Motor_SetStatus
;;           _MotorOperationTimer_Stop
;;           _LEDTimer_DispRunLimitCmd
;;                       _LEDTimer_Cmd
;;                 _LEDTimer_INTConfig
;;                  _ChargeCtrl_Output
;;            _LED_VoltageChargeOutput
;;                           _ADC_Init
;;                    _ChargeTimer_Cmd
;;              _ChargeTimer_INTConfig
;;                 _SleepLedTimer_Init
;;                     _charge_control
;;             _ChargeDetect_GetStatus
;;                      _SetDeviceMode
;;                      _GetDeviceMode
;; ---------------------------------------------------------------------------------
;; (1) _Motor_HandleStatusChangeEvt                          2     2      0     814
;;                                             13 BANK0      2     2      0
;;                _Motor_CheckRunLimit
;;               _KEY_GetReleaseStatus
;;                    _Motor_SetStatus
;;                        _Motor_Start
;;           _MotorOperationTimer_Stop
;;           _MotorOperationTimer_Init
;;       _SwitchModeTimer_GetINTStatus
;;                         _Motor_Stop
;;          _SwitchModeTimer_INTConfig
;;                _SwitchModeTimer_Cmd
;;           _LEDTimer_DispRunLimitCmd
;;                 _KEY_GetPressStatus
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (1) _charge_control                                       2     2      0    2521
;;                                             32 BANK0      2     2      0
;;               _ChargeTimer_GetCount
;;                     _Battery_Detect
;;            _LED_VoltageChargeOutput
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (1) _Driver_Init                                          0     0      0    1830
;;                           _LED_Init
;;                           _KEY_Init
;;                        _Charge_Init
;;                           _ADC_Init
;;                       _LEDTimer_Cmd
;;                 _LEDTimer_INTConfig
;;                        _EEPROM_Init
;; ---------------------------------------------------------------------------------
;; (2) _Motor_Start                                          2     2      0     352
;;                                             11 BANK0      2     2      0
;;             _LED_DisplayMotorStatus
;;                         _Motor_Init
;;                _SwitchModeTimer_Cmd
;;          _SwitchModeTimer_INTConfig
;; ---------------------------------------------------------------------------------
;; (2) _Battery_Detect                                       4     4      0    2124
;;                                             28 BANK0      4     4      0
;;                 _Battery_HandleData
;;                      _GetDeviceMode
;;                           ___lwtoft
;;                             ___ftge
;;                     _EEPROM_SetFlag
;;               _EEPROM_StoreModeData
;;              _EEPROM_StoreMotorData
;;             _LED_UnderVoltageOutput
;;                           _LED_Init
;;                         _KEY_DeInit
;;                         _Motor_Stop
;;                    _Motor_SetStatus
;;           _MotorOperationTimer_Stop
;;          _LEDTimer_DispUnderVoltCmd
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (2) _Charge_Init                                          0     0      0     835
;;                  _ChargeDetect_Init
;;                    _ChargeCtrl_Init
;; ---------------------------------------------------------------------------------
;; (3) ___lwtoft                                             4     1      3     231
;;                                             24 BANK0      4     1      3
;;                           ___ftpack
;;                             ___ftge (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _EEPROM_StoreModeData                                 1     1      0      44
;;                                              6 BANK0      1     1      0
;;                       _EEPROM_Write
;; ---------------------------------------------------------------------------------
;; (3) _EEPROM_SetFlag                                       0     0      0      44
;;                       _EEPROM_Write
;; ---------------------------------------------------------------------------------
;; (3) _EEPROM_StoreMotorData                                1     1      0      44
;;                                              6 BANK0      1     1      0
;;                       _EEPROM_Write
;; ---------------------------------------------------------------------------------
;; (3) _LED_UnderVoltageOutput                               3     3      0     176
;;                                              8 BANK0      3     3      0
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (3) _LED_DisplayMotorStatus                               3     2      1     198
;;                                              8 BANK0      3     2      1
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (3) _ChargeCtrl_Init                                      3     3      0     361
;;                                              8 BANK0      3     3      0
;;                          _GPIO_Init
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (3) _ChargeDetect_Init                                    3     3      0     474
;;                                              8 BANK0      3     3      0
;;                          _GPIO_Init
;;              _GPIO_ReadInputDataBit
;;                     _GPIO_INTConfig
;; ---------------------------------------------------------------------------------
;; (1) _ChargeDetect_GetStatus                               3     3      0     136
;;                                              7 BANK0      3     3      0
;;              _GPIO_ReadInputDataBit
;; ---------------------------------------------------------------------------------
;; (1) _SleepLedTimer_Init                                   0     0      0      44
;;                      _SleepLed_Init
;; ---------------------------------------------------------------------------------
;; (1) _ChargeCtrl_Output                                    3     3      0     176
;;                                              8 BANK0      3     3      0
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (3) _MotorOperationTimer_Stop                             0     0      0       0
;;                _Motor_CheckRunLimit
;; ---------------------------------------------------------------------------------
;; (3) _Motor_Stop                                           1     1      0     154
;;                                              8 BANK0      1     1      0
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (3) _KEY_DeInit                                           3     3      0     207
;;                                              7 BANK0      3     3      0
;;                          _GPIO_Init
;; ---------------------------------------------------------------------------------
;; (2) _LED_VoltageChargeOutput                              3     3      0     176
;;                                              8 BANK0      3     3      0
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (2) _EEPROM_Init                                          1     1      0      44
;;                                              6 BANK0      1     1      0
;;                       _EEPROM_Write
;; ---------------------------------------------------------------------------------
;; (2) _KEY_Init                                             3     3      0     361
;;                                              8 BANK0      3     3      0
;;                          _GPIO_Init
;;                     _GPIO_INTConfig
;; ---------------------------------------------------------------------------------
;; (3) _LED_Init                                             3     3      0     502
;;                                              8 BANK0      3     3      0
;;                          _GPIO_Init
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (3) ___ftge                                              12     6      6     136
;;                                             12 BANK0     12     6      6
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftpack                                             8     3      5     209
;;                                              4 BANK0      8     3      5
;; ---------------------------------------------------------------------------------
;; (2) _SleepLed_Init                                        2     0      2      44
;;                                              4 BANK0      2     0      2
;; ---------------------------------------------------------------------------------
;; (3) _Battery_HandleData                                  13    11      2     252
;;                                              4 BANK0     13    11      2
;; ---------------------------------------------------------------------------------
;; (2) _SwitchModeTimer_GetINTStatus                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _MotorOperationTimer_Init                             1     1      0      44
;;                                              4 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (4) _Motor_CheckRunLimit                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _SwitchModeTimer_INTConfig                            1     1      0      22
;;                                              4 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _SwitchModeTimer_Cmd                                  1     1      0      22
;;                                              4 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _Motor_Init                                           2     2      0      66
;;                                              4 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _LEDTimer_DispUnderVoltCmd                            1     1      0      22
;;                                              4 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _KEY_GetPressStatus                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _KEY_GetReleaseStatus                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _EEPROM_Write                                         2     1      1      44
;;                                              4 BANK0      2     1      1
;; ---------------------------------------------------------------------------------
;; (4) _GPIO_INTConfig                                       4     2      2     154
;;                                              4 BANK0      4     2      2
;; ---------------------------------------------------------------------------------
;; (2) _GPIO_ReadInputDataBit                                3     2      1     113
;;                                              4 BANK0      3     2      1
;; ---------------------------------------------------------------------------------
;; (4) _GPIO_Init                                            3     2      1     154
;;                                              4 BANK0      3     2      1
;; ---------------------------------------------------------------------------------
;; (1) _GetDeviceMode                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _SetDeviceMode                                        2     2      0      22
;;                                              4 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _ChargeTimer_INTConfig                                1     1      0      22
;;                                              4 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _ChargeTimer_Cmd                                      1     1      0      22
;;                                              4 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _LEDTimer_DispRunLimitCmd                             1     1      0      22
;;                                              4 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _Motor_SetStatus                                      2     2      0      22
;;                                              4 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Motor_GetStatus                                      0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _GPIO_WriteBit                                        4     2      2     154
;;                                              4 BANK0      4     2      2
;; ---------------------------------------------------------------------------------
;; (2) _ChargeTimer_GetCount                                 2     0      2       0
;;                                              4 BANK0      2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _LEDTimer_INTConfig                                   1     1      0      22
;;                                              4 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _LEDTimer_Cmd                                         3     2      1      44
;;                                              4 BANK0      3     2      1
;; ---------------------------------------------------------------------------------
;; (1) _ADC_Init                                             3     3      0      22
;;                                              4 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _Board_Init                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (5) _ISR                                                  4     4      0    3893
;;                                              0 BANK0      4     4      0
;;                    _KEY_IntrHandler
;;          _DebounceTimer_IntrHandler
;;                    i1_GetDeviceMode
;;        _SwitchModeTimer_IntrHandler
;;               _LEDTimer_IntrHandler
;;            _ChargeTimer_IntrHandler
;;          _SleepLedTimer_IntrHandler
;;         _MotorOperTimer_IntrHandler
;;           _ChargeDetect_IntrHandler
;;                    _ADC_IntrHandler
;; ---------------------------------------------------------------------------------
;; (6) _MotorOperTimer_IntrHandler                           2     2      0    1245
;;                                              8 COMMON     2     2      0
;;              i1_Motor_CheckRunLimit
;;                            ___awmod
;;         i1_MotorOperationTimer_Init
;;                       i1_Motor_Stop
;;         i1_MotorOperationTimer_Stop
;;                  i1_Motor_SetStatus
;;                       i1_Motor_Init
;; ---------------------------------------------------------------------------------
;; (6) _LEDTimer_IntrHandler                                 1     1      0    1859
;;                                             10 COMMON     1     1      0
;;            i1_GPIO_ReadInputDataBit
;;           i1_LED_UnderVoltageOutput
;;                _LED_DisplayRunLimit
;;                         _ADC_Enable
;; ---------------------------------------------------------------------------------
;; (7) i1_MotorOperationTimer_Stop                           0     0      0       0
;;              i1_Motor_CheckRunLimit
;; ---------------------------------------------------------------------------------
;; (7) i1_Motor_Stop                                         1     1      0     511
;;                                              7 COMMON     1     1      0
;;                    i1_GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (7) i1_LED_UnderVoltageOutput                             3     3      0     584
;;                                              7 COMMON     3     3      0
;;                    i1_GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (7) _LED_DisplayRunLimit                                  3     3      0     882
;;                                              7 COMMON     3     3      0
;;            i1_GPIO_ReadInputDataBit
;;                    i1_GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (6) _ADC_IntrHandler                                      1     1      0      47
;;                                              8 COMMON     1     1      0
;;                       _ADC_ReadData
;; ---------------------------------------------------------------------------------
;; (6) _ChargeDetect_IntrHandler                             1     1      0     371
;;                                              3 COMMON     1     1      0
;;            i1_GPIO_ReadInputDataBit
;; ---------------------------------------------------------------------------------
;; (6) _SleepLedTimer_IntrHandler                            0     0      0       0
;;                _SleepLed_ChangeDuty
;; ---------------------------------------------------------------------------------
;; (6) _DebounceTimer_IntrHandler                            1     1      0     371
;;                                              3 COMMON     1     1      0
;;            i1_GPIO_ReadInputDataBit
;; ---------------------------------------------------------------------------------
;; (6) _KEY_IntrHandler                                      1     1      0       0
;;                                              0 COMMON     1     1      0
;;                          _TIM1_Init
;; ---------------------------------------------------------------------------------
;; (6) i1_GetDeviceMode                                      0     0      0       0
;; ---------------------------------------------------------------------------------
;; (7) i1_MotorOperationTimer_Init                           1     1      0     146
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (8) i1_Motor_CheckRunLimit                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (7) i1_Motor_SetStatus                                    2     2      0      73
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (7) i1_Motor_Init                                         2     2      0     219
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (7) i1_GPIO_ReadInputDataBit                              3     2      1     371
;;                                              0 COMMON     3     2      1
;; ---------------------------------------------------------------------------------
;; (8) i1_GPIO_WriteBit                                      4     2      2     511
;;                                              3 COMMON     4     2      2
;;            i1_GPIO_ReadInputDataBit (ARG)
;; ---------------------------------------------------------------------------------
;; (7) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (7) _SleepLed_ChangeDuty                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; (7) _ADC_ReadData                                         8     6      2      47
;;                                              0 COMMON     8     6      2
;; ---------------------------------------------------------------------------------
;; (7) _ADC_Enable                                           3     3      0      22
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (7) _TIM1_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (6) _ChargeTimer_IntrHandler                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (6) _SwitchModeTimer_IntrHandler                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 8
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Board_Init
;;   _Driver_Init
;;     _LED_Init
;;       _GPIO_Init
;;       _GPIO_WriteBit
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
;;     _ADC_Init
;;     _LEDTimer_Cmd
;;     _LEDTimer_INTConfig
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
;;       _Motor_Init
;;       _SwitchModeTimer_Cmd
;;       _SwitchModeTimer_INTConfig
;;     _MotorOperationTimer_Stop
;;       _Motor_CheckRunLimit
;;     _MotorOperationTimer_Init
;;     _SwitchModeTimer_GetINTStatus
;;     _Motor_Stop
;;       _GPIO_WriteBit
;;     _SwitchModeTimer_INTConfig
;;     _SwitchModeTimer_Cmd
;;     _LEDTimer_DispRunLimitCmd
;;     _KEY_GetPressStatus
;;     _GPIO_WriteBit
;;   _LED_Init
;;     _GPIO_Init
;;     _GPIO_WriteBit
;;   _KEY_DeInit
;;     _GPIO_Init
;;   _Motor_Stop
;;     _GPIO_WriteBit
;;   _Motor_SetStatus
;;   _MotorOperationTimer_Stop
;;     _Motor_CheckRunLimit
;;   _LEDTimer_DispRunLimitCmd
;;   _LEDTimer_Cmd
;;   _LEDTimer_INTConfig
;;   _ChargeCtrl_Output
;;     _GPIO_WriteBit
;;   _LED_VoltageChargeOutput
;;     _GPIO_WriteBit
;;   _ADC_Init
;;   _ChargeTimer_Cmd
;;   _ChargeTimer_INTConfig
;;   _SleepLedTimer_Init
;;     _SleepLed_Init
;;   _charge_control
;;     _ChargeTimer_GetCount
;;     _Battery_Detect
;;       _Battery_HandleData
;;       _GetDeviceMode
;;       ___lwtoft
;;         ___ftpack
;;         ___ftge (ARG)
;;           ___ftpack (ARG)
;;       ___ftge
;;         ___ftpack (ARG)
;;       _EEPROM_SetFlag
;;         _EEPROM_Write
;;       _EEPROM_StoreModeData
;;         _EEPROM_Write
;;       _EEPROM_StoreMotorData
;;         _EEPROM_Write
;;       _LED_UnderVoltageOutput
;;         _GPIO_WriteBit
;;       _LED_Init
;;         _GPIO_Init
;;         _GPIO_WriteBit
;;       _KEY_DeInit
;;         _GPIO_Init
;;       _Motor_Stop
;;         _GPIO_WriteBit
;;       _Motor_SetStatus
;;       _MotorOperationTimer_Stop
;;         _Motor_CheckRunLimit
;;       _LEDTimer_DispUnderVoltCmd
;;       _GPIO_WriteBit
;;     _LED_VoltageChargeOutput
;;       _GPIO_WriteBit
;;     _GPIO_WriteBit
;;   _ChargeDetect_GetStatus
;;     _GPIO_ReadInputDataBit
;;   _SetDeviceMode
;;   _GetDeviceMode
;;
;; _ISR (ROOT)
;;   _KEY_IntrHandler
;;     _TIM1_Init
;;   _DebounceTimer_IntrHandler
;;     i1_GPIO_ReadInputDataBit
;;   i1_GetDeviceMode
;;   _SwitchModeTimer_IntrHandler
;;   _LEDTimer_IntrHandler
;;     i1_GPIO_ReadInputDataBit
;;     i1_LED_UnderVoltageOutput
;;       i1_GPIO_WriteBit
;;         i1_GPIO_ReadInputDataBit (ARG)
;;     _LED_DisplayRunLimit
;;       i1_GPIO_ReadInputDataBit
;;       i1_GPIO_WriteBit
;;         i1_GPIO_ReadInputDataBit (ARG)
;;     _ADC_Enable
;;   _ChargeTimer_IntrHandler
;;   _SleepLedTimer_IntrHandler
;;     _SleepLed_ChangeDuty
;;   _MotorOperTimer_IntrHandler
;;     i1_Motor_CheckRunLimit
;;     ___awmod
;;     i1_MotorOperationTimer_Init
;;     i1_Motor_Stop
;;       i1_GPIO_WriteBit
;;         i1_GPIO_ReadInputDataBit (ARG)
;;     i1_MotorOperationTimer_Stop
;;       i1_Motor_CheckRunLimit
;;     i1_Motor_SetStatus
;;     i1_Motor_Init
;;   _ChargeDetect_IntrHandler
;;     i1_GPIO_ReadInputDataBit
;;   _ADC_IntrHandler
;;     _ADC_ReadData
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
;;DATA                 0      0      65      10        0.0%
;;ABS                  0      0      59       8        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       C       2        0.0%
;;BANK0               50     22      4B       3       93.8%
;;BITBANK0            50      0       0       9        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      B       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 109 in file "main.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Board_Init
;;		_Driver_Init
;;		_Motor_GetStatus
;;		_Motor_HandleStatusChangeEvt
;;		_LED_Init
;;		_KEY_DeInit
;;		_Motor_Stop
;;		_Motor_SetStatus
;;		_MotorOperationTimer_Stop
;;		_LEDTimer_DispRunLimitCmd
;;		_LEDTimer_Cmd
;;		_LEDTimer_INTConfig
;;		_ChargeCtrl_Output
;;		_LED_VoltageChargeOutput
;;		_ADC_Init
;;		_ChargeTimer_Cmd
;;		_ChargeTimer_INTConfig
;;		_SleepLedTimer_Init
;;		_charge_control
;;		_ChargeDetect_GetStatus
;;		_SetDeviceMode
;;		_GetDeviceMode
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"main.c"
	line	109
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	122
;main.c: 122: while(1)
	
l1145:	
	line	124
;main.c: 123: {
;main.c: 124: switch(GetDeviceMode())
	goto	l17963
	line	126
;main.c: 125: {
;main.c: 126: case RUN_MODE:
	
l1147:	
	line	128
	
l17919:	
;main.c: 127: {
;main.c: 128: Board_Init();
	fcall	_Board_Init
	line	129
	
l17921:	
;main.c: 129: Driver_Init();
	fcall	_Driver_Init
	goto	l17923
	line	131
;main.c: 131: while(1)
	
l1148:	
	line	133
	
l17923:	
;main.c: 132: {
;main.c: 133: Motor_HandleStatusChangeEvt(Motor_GetStatus());
	fcall	_Motor_GetStatus
	fcall	_Motor_HandleStatusChangeEvt
	goto	l17923
	line	146
	
l1149:	
	line	131
	goto	l17923
	
l1150:	
	line	147
;main.c: 146: }
;main.c: 147: break;
	goto	l1145
	line	149
;main.c: 148: }
;main.c: 149: case CHARGE_MODE:
	
l1152:	
	line	152
	
l17925:	
;main.c: 150: {
;main.c: 152: LED_Init();
	fcall	_LED_Init
	line	153
;main.c: 153: KEY_DeInit();
	fcall	_KEY_DeInit
	line	154
	
l17927:	
;main.c: 154: Motor_Stop();
	fcall	_Motor_Stop
	line	155
	
l17929:	
;main.c: 155: Motor_SetStatus(MOTOR_MODE_STOP);
	movlw	(01h)
	fcall	_Motor_SetStatus
	line	156
	
l17931:	
;main.c: 156: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	157
	
l17933:	
;main.c: 157: LEDTimer_DispRunLimitCmd(DISABLE);
	movlw	(0)
	fcall	_LEDTimer_DispRunLimitCmd
	line	159
	
l17935:	
;main.c: 159: LEDTimer_Cmd(TIM_PERIOD_0_33ms, DISABLE);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_LEDTimer_Cmd)
	movlw	(02h)
	fcall	_LEDTimer_Cmd
	line	160
	
l17937:	
;main.c: 160: LEDTimer_INTConfig(DISABLE);
	movlw	(0)
	fcall	_LEDTimer_INTConfig
	line	162
	
l17939:	
;main.c: 162: ChargeCtrl_Output(Bit_SET);
	movlw	(01h)
	fcall	_ChargeCtrl_Output
	line	163
	
l17941:	
;main.c: 163: LED_VoltageChargeOutput(Bit_SET);
	movlw	(01h)
	fcall	_LED_VoltageChargeOutput
	line	165
	
l17943:	
;main.c: 165: ADC_Init((0x06));
	movlw	(06h)
	fcall	_ADC_Init
	line	167
	
l17945:	
;main.c: 167: ChargeTimer_Cmd(ENABLE);
	movlw	(01h)
	fcall	_ChargeTimer_Cmd
	line	168
	
l17947:	
;main.c: 168: ChargeTimer_INTConfig(ENABLE);
	movlw	(01h)
	fcall	_ChargeTimer_INTConfig
	line	170
	
l17949:	
;main.c: 170: SleepLedTimer_Init();
	fcall	_SleepLedTimer_Init
	goto	l1154
	line	171
;main.c: 171: while(1);
	
l1153:	
	
l1154:	
	goto	l1154
	
l1155:	
	goto	l17951
	line	173
;main.c: 173: while(1)
	
l1156:	
	line	175
	
l17951:	
;main.c: 174: {
;main.c: 175: charge_control();
	fcall	_charge_control
	line	178
	
l17953:	
;main.c: 178: if(!ChargeDetect_GetStatus())
	fcall	_ChargeDetect_GetStatus
	iorlw	0
	skipz
	goto	u5491
	goto	u5490
u5491:
	goto	l17951
u5490:
	line	181
	
l17955:	
;main.c: 179: {
;main.c: 181: ChargeTimer_Cmd(DISABLE);
	movlw	(0)
	fcall	_ChargeTimer_Cmd
	line	182
;main.c: 182: ChargeTimer_INTConfig(DISABLE);
	movlw	(0)
	fcall	_ChargeTimer_INTConfig
	line	184
;main.c: 184: SetDeviceMode(RUN_MODE);
	movlw	(0)
	fcall	_SetDeviceMode
	line	185
;main.c: 185: break;
	goto	l1145
	line	186
	
l1157:	
	goto	l17951
	line	187
	
l1159:	
	line	173
	goto	l17951
	
l1158:	
	line	189
;main.c: 186: }
;main.c: 187: }
;main.c: 189: break;
	goto	l1145
	line	191
;main.c: 190: }
;main.c: 191: case SLEEP_MODE:
	
l1160:	
	line	194
	
l17957:	
;main.c: 192: {
;main.c: 194: LED_Init();
	fcall	_LED_Init
	line	195
	
l17959:	
# 195 "main.c"
SLEEP ;#
psect	maintext
	line	197
;main.c: 197: break;
	goto	l1145
	line	199
;main.c: 198: }
;main.c: 199: default:
	
l1161:	
	line	201
;main.c: 200: {
;main.c: 201: break;
	goto	l1145
	line	203
	
l17961:	
;main.c: 202: }
;main.c: 203: }
	goto	l1145
	line	124
	
l1146:	
	
l17963:	
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
	goto	l17919
	xorlw	1^0	; case 1
	skipnz
	goto	l17925
	xorlw	2^1	; case 2
	skipnz
	goto	l17957
	goto	l1145
	opt asmopt_on

	line	203
	
l1151:	
	goto	l1145
	line	204
	
l1162:	
	line	122
	goto	l1145
	
l1163:	
	line	205
	
l1164:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Motor_HandleStatusChangeEvt
psect	text1776,local,class=CODE,delta=2
global __ptext1776
__ptext1776:

;; *************** function _Motor_HandleStatusChangeEvt *****************
;; Defined at:
;;		line 373 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     enum E1552
;; Auto vars:     Size  Location     Type
;;  status          1   14[BANK0 ] enum E1552
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Motor_CheckRunLimit
;;		_KEY_GetReleaseStatus
;;		_Motor_SetStatus
;;		_Motor_Start
;;		_MotorOperationTimer_Stop
;;		_MotorOperationTimer_Init
;;		_SwitchModeTimer_GetINTStatus
;;		_Motor_Stop
;;		_SwitchModeTimer_INTConfig
;;		_SwitchModeTimer_Cmd
;;		_LEDTimer_DispRunLimitCmd
;;		_KEY_GetPressStatus
;;		_GPIO_WriteBit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1776
	file	"ms83fxx02_motor.c"
	line	373
	global	__size_of_Motor_HandleStatusChangeEvt
	__size_of_Motor_HandleStatusChangeEvt	equ	__end_of_Motor_HandleStatusChangeEvt-_Motor_HandleStatusChangeEvt
	
_Motor_HandleStatusChangeEvt:	
	opt	stack 0
; Regs used in _Motor_HandleStatusChangeEvt: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Motor_HandleStatusChangeEvt@status stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Motor_HandleStatusChangeEvt@status)
	line	374
	
l17843:	
;ms83fxx02_motor.c: 374: if(!Motor_CheckRunLimit())
	fcall	_Motor_CheckRunLimit
	iorlw	0
	skipz
	goto	u5371
	goto	u5370
u5371:
	goto	l17897
u5370:
	goto	l17895
	line	376
	
l17845:	
;ms83fxx02_motor.c: 375: {
;ms83fxx02_motor.c: 376: switch(status)
	goto	l17895
	line	378
;ms83fxx02_motor.c: 377: {
;ms83fxx02_motor.c: 378: case MOTOR_MODE_STOP:
	
l8889:	
	line	380
	
l17847:	
;ms83fxx02_motor.c: 379: {
;ms83fxx02_motor.c: 380: if(KEY_GetReleaseStatus())
	fcall	_KEY_GetReleaseStatus
	xorlw	0
	skipnz
	goto	u5381
	goto	u5380
u5381:
	goto	l17857
u5380:
	line	382
	
l17849:	
;ms83fxx02_motor.c: 381: {
;ms83fxx02_motor.c: 382: Motor_SetStatus(MOTOR_MODE_1);
	movlw	(02h)
	fcall	_Motor_SetStatus
	line	383
	
l17851:	
;ms83fxx02_motor.c: 383: Motor_Start(MOTOR_MODE_1);
	movlw	(02h)
	fcall	_Motor_Start
	line	386
	
l17853:	
;ms83fxx02_motor.c: 386: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	387
	
l17855:	
;ms83fxx02_motor.c: 387: MotorOperationTimer_Init(MotorOperationTimer_30s);
	movlw	(01h)
	fcall	_MotorOperationTimer_Init
	line	388
;ms83fxx02_motor.c: 388: }
	goto	l8911
	line	389
	
l8890:	
	line	391
	
l17857:	
;ms83fxx02_motor.c: 389: else
;ms83fxx02_motor.c: 390: {
;ms83fxx02_motor.c: 391: if(!key_press_flag)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key_press_flag),f
	skipz	;volatile
	goto	u5391
	goto	u5390
u5391:
	goto	l8911
u5390:
	line	394
	
l17859:	
# 394 "ms83fxx02_motor.c"
SLEEP ;#
psect	text1776
	goto	l8911
	line	395
	
l8892:	
	goto	l8911
	line	396
	
l8891:	
	line	397
;ms83fxx02_motor.c: 395: }
;ms83fxx02_motor.c: 396: }
;ms83fxx02_motor.c: 397: break;
	goto	l8911
	line	399
;ms83fxx02_motor.c: 398: }
;ms83fxx02_motor.c: 399: case MOTOR_MODE_1:
	
l8894:	
	line	401
	
l17861:	
;ms83fxx02_motor.c: 400: {
;ms83fxx02_motor.c: 401: if(KEY_GetReleaseStatus())
	fcall	_KEY_GetReleaseStatus
	xorlw	0
	skipnz
	goto	u5401
	goto	u5400
u5401:
	goto	l8911
u5400:
	line	404
	
l17863:	
;ms83fxx02_motor.c: 402: {
;ms83fxx02_motor.c: 404: if(SwitchModeTimer_GetINTStatus())
	fcall	_SwitchModeTimer_GetINTStatus
	xorlw	0
	skipnz
	goto	u5411
	goto	u5410
u5411:
	goto	l17867
u5410:
	line	406
	
l17865:	
;ms83fxx02_motor.c: 405: {
;ms83fxx02_motor.c: 406: Motor_Stop();
	fcall	_Motor_Stop
	line	407
;ms83fxx02_motor.c: 407: Motor_SetStatus(MOTOR_MODE_STOP);
	movlw	(01h)
	fcall	_Motor_SetStatus
	line	408
;ms83fxx02_motor.c: 408: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	409
;ms83fxx02_motor.c: 409: }
	goto	l8911
	line	410
	
l8896:	
	line	413
	
l17867:	
;ms83fxx02_motor.c: 410: else
;ms83fxx02_motor.c: 411: {
;ms83fxx02_motor.c: 413: SwitchModeTimer_INTConfig(DISABLE);
	movlw	(0)
	fcall	_SwitchModeTimer_INTConfig
	line	414
;ms83fxx02_motor.c: 414: SwitchModeTimer_Cmd(DISABLE);
	movlw	(0)
	fcall	_SwitchModeTimer_Cmd
	line	416
;ms83fxx02_motor.c: 416: Motor_SetStatus(MOTOR_MODE_2);
	movlw	(03h)
	fcall	_Motor_SetStatus
	line	417
	
l17869:	
;ms83fxx02_motor.c: 417: Motor_Start(MOTOR_MODE_2);
	movlw	(03h)
	fcall	_Motor_Start
	line	420
	
l17871:	
;ms83fxx02_motor.c: 420: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	421
	
l17873:	
;ms83fxx02_motor.c: 421: MotorOperationTimer_Init(MotorOperationTimer_30s);
	movlw	(01h)
	fcall	_MotorOperationTimer_Init
	goto	l8911
	line	422
	
l8897:	
	goto	l8911
	line	423
	
l8895:	
	line	424
;ms83fxx02_motor.c: 422: }
;ms83fxx02_motor.c: 423: }
;ms83fxx02_motor.c: 424: break;
	goto	l8911
	line	426
;ms83fxx02_motor.c: 425: }
;ms83fxx02_motor.c: 426: case MOTOR_MODE_2:
	
l8898:	
	line	428
	
l17875:	
;ms83fxx02_motor.c: 427: {
;ms83fxx02_motor.c: 428: if(KEY_GetReleaseStatus())
	fcall	_KEY_GetReleaseStatus
	xorlw	0
	skipnz
	goto	u5421
	goto	u5420
u5421:
	goto	l8911
u5420:
	line	431
	
l17877:	
;ms83fxx02_motor.c: 429: {
;ms83fxx02_motor.c: 431: if(SwitchModeTimer_GetINTStatus())
	fcall	_SwitchModeTimer_GetINTStatus
	xorlw	0
	skipnz
	goto	u5431
	goto	u5430
u5431:
	goto	l17881
u5430:
	line	433
	
l17879:	
;ms83fxx02_motor.c: 432: {
;ms83fxx02_motor.c: 433: Motor_Stop();
	fcall	_Motor_Stop
	line	434
;ms83fxx02_motor.c: 434: Motor_SetStatus(MOTOR_MODE_STOP);
	movlw	(01h)
	fcall	_Motor_SetStatus
	line	435
;ms83fxx02_motor.c: 435: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	436
;ms83fxx02_motor.c: 436: }
	goto	l8911
	line	437
	
l8900:	
	line	440
	
l17881:	
;ms83fxx02_motor.c: 437: else
;ms83fxx02_motor.c: 438: {
;ms83fxx02_motor.c: 440: SwitchModeTimer_Cmd(DISABLE);
	movlw	(0)
	fcall	_SwitchModeTimer_Cmd
	line	441
;ms83fxx02_motor.c: 441: SwitchModeTimer_INTConfig(DISABLE);
	movlw	(0)
	fcall	_SwitchModeTimer_INTConfig
	line	443
;ms83fxx02_motor.c: 443: Motor_SetStatus(MOTOR_MODE_3);
	movlw	(04h)
	fcall	_Motor_SetStatus
	line	444
	
l17883:	
;ms83fxx02_motor.c: 444: Motor_Start(MOTOR_MODE_3);
	movlw	(04h)
	fcall	_Motor_Start
	line	447
	
l17885:	
;ms83fxx02_motor.c: 447: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	448
	
l17887:	
;ms83fxx02_motor.c: 448: MotorOperationTimer_Init(MotorOperationTimer_30s);
	movlw	(01h)
	fcall	_MotorOperationTimer_Init
	goto	l8911
	line	449
	
l8901:	
	goto	l8911
	line	450
	
l8899:	
	line	451
;ms83fxx02_motor.c: 449: }
;ms83fxx02_motor.c: 450: }
;ms83fxx02_motor.c: 451: break;
	goto	l8911
	line	453
;ms83fxx02_motor.c: 452: }
;ms83fxx02_motor.c: 453: case MOTOR_MODE_3:
	
l8902:	
	line	455
	
l17889:	
;ms83fxx02_motor.c: 454: {
;ms83fxx02_motor.c: 455: if(KEY_GetReleaseStatus())
	fcall	_KEY_GetReleaseStatus
	xorlw	0
	skipnz
	goto	u5441
	goto	u5440
u5441:
	goto	l8911
u5440:
	line	457
	
l17891:	
;ms83fxx02_motor.c: 456: {
;ms83fxx02_motor.c: 457: Motor_Stop();
	fcall	_Motor_Stop
	line	458
;ms83fxx02_motor.c: 458: Motor_SetStatus(MOTOR_MODE_STOP);
	movlw	(01h)
	fcall	_Motor_SetStatus
	line	459
;ms83fxx02_motor.c: 459: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	goto	l8911
	line	460
	
l8903:	
	line	461
;ms83fxx02_motor.c: 460: }
;ms83fxx02_motor.c: 461: break;
	goto	l8911
	line	463
;ms83fxx02_motor.c: 462: }
;ms83fxx02_motor.c: 463: default:
	
l8904:	
	line	465
;ms83fxx02_motor.c: 464: {
;ms83fxx02_motor.c: 465: break;
	goto	l8911
	line	467
	
l17893:	
;ms83fxx02_motor.c: 466: }
;ms83fxx02_motor.c: 467: }
	goto	l8911
	line	376
	
l8888:	
	
l17895:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	l17847
	xorlw	2^1	; case 2
	skipnz
	goto	l17861
	xorlw	3^2	; case 3
	skipnz
	goto	l17875
	xorlw	4^3	; case 4
	skipnz
	goto	l17889
	goto	l8911
	opt asmopt_on

	line	467
	
l8893:	
	line	468
;ms83fxx02_motor.c: 468: }
	goto	l8911
	line	469
	
l8887:	
	line	472
	
l17897:	
;ms83fxx02_motor.c: 469: else
;ms83fxx02_motor.c: 470: {
;ms83fxx02_motor.c: 472: LEDTimer_DispRunLimitCmd(ENABLE);
	movlw	(01h)
	fcall	_LEDTimer_DispRunLimitCmd
	line	475
	
l17899:	
;ms83fxx02_motor.c: 475: if(KEY_GetPressStatus())
	fcall	_KEY_GetPressStatus
	xorlw	0
	skipnz
	goto	u5451
	goto	u5450
u5451:
	goto	l17905
u5450:
	line	477
	
l17901:	
;ms83fxx02_motor.c: 476: {
;ms83fxx02_motor.c: 477: key_press_time_count = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_key_press_time_count)	;volatile
	line	479
	
l17903:	
;ms83fxx02_motor.c: 479: MotorOperationTimer_Init(MotorOperationTimer_8s);
	movlw	(03h)
	fcall	_MotorOperationTimer_Init
	goto	l17905
	line	480
	
l8906:	
	line	482
	
l17905:	
;ms83fxx02_motor.c: 480: }
;ms83fxx02_motor.c: 482: if(key_press_time_count)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key_press_time_count),w	;volatile
	skipz
	goto	u5460
	goto	l17909
u5460:
	line	486
	
l17907:	
;ms83fxx02_motor.c: 483: {
;ms83fxx02_motor.c: 486: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000004), Bit_RESET);
	movlw	(04h)
	movwf	(??_Motor_HandleStatusChangeEvt+0)+0
	movf	(??_Motor_HandleStatusChangeEvt+0)+0,w
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	487
;ms83fxx02_motor.c: 487: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000008), Bit_RESET);
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Motor_HandleStatusChangeEvt+0)+0
	movf	(??_Motor_HandleStatusChangeEvt+0)+0,w
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	488
;ms83fxx02_motor.c: 488: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), Bit_RESET);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_GPIO_WriteBit)
	bsf	status,0
	rlf	(?_GPIO_WriteBit),f
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	491
;ms83fxx02_motor.c: 491: LEDTimer_DispRunLimitCmd(DISABLE);
	movlw	(0)
	fcall	_LEDTimer_DispRunLimitCmd
	goto	l17909
	line	492
	
l8907:	
	line	494
	
l17909:	
;ms83fxx02_motor.c: 492: }
;ms83fxx02_motor.c: 494: if(KEY_GetReleaseStatus())
	fcall	_KEY_GetReleaseStatus
	xorlw	0
	skipnz
	goto	u5471
	goto	u5470
u5471:
	goto	l8911
u5470:
	line	496
	
l17911:	
;ms83fxx02_motor.c: 495: {
;ms83fxx02_motor.c: 496: if(key_press_time_count)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key_press_time_count),w	;volatile
	skipz
	goto	u5480
	goto	l17917
u5480:
	line	499
	
l17913:	
;ms83fxx02_motor.c: 497: {
;ms83fxx02_motor.c: 499: motor_oper_record = 0;
	clrf	(_motor_oper_record)	;volatile
	clrf	(_motor_oper_record+1)	;volatile
	line	500
	
l17915:	
;ms83fxx02_motor.c: 500: key_press_time_count = 0;
	clrf	(_key_press_time_count)	;volatile
	line	501
;ms83fxx02_motor.c: 501: }
	goto	l8911
	line	502
	
l8909:	
	line	504
	
l17917:	
;ms83fxx02_motor.c: 502: else
;ms83fxx02_motor.c: 503: {
;ms83fxx02_motor.c: 504: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	goto	l8911
	line	505
	
l8910:	
	goto	l8911
	line	506
	
l8908:	
	goto	l8911
	line	507
	
l8905:	
	line	508
	
l8911:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_HandleStatusChangeEvt
	__end_of_Motor_HandleStatusChangeEvt:
;; =============== function _Motor_HandleStatusChangeEvt ends ============

	signat	_Motor_HandleStatusChangeEvt,4216
	global	_charge_control
psect	text1777,local,class=CODE,delta=2
global __ptext1777
__ptext1777:

;; *************** function _charge_control *****************
;; Defined at:
;;		line 84 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  charge_count    2   32[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_ChargeTimer_GetCount
;;		_Battery_Detect
;;		_LED_VoltageChargeOutput
;;		_GPIO_WriteBit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1777
	file	"main.c"
	line	84
	global	__size_of_charge_control
	__size_of_charge_control	equ	__end_of_charge_control-_charge_control
	
_charge_control:	
	opt	stack 0
; Regs used in _charge_control: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	85
	
l17831:	
;main.c: 85: uint32_t charge_count = ChargeTimer_GetCount();
	fcall	_ChargeTimer_GetCount
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_ChargeTimer_GetCount)),w
	clrf	(charge_control@charge_count+1)
	addwf	(charge_control@charge_count+1)
	movf	(0+(?_ChargeTimer_GetCount)),w
	clrf	(charge_control@charge_count)
	addwf	(charge_control@charge_count)

	line	88
	
l17833:	
;main.c: 88: if((charge_count >= 1) && (charge_count < 5760))
	movf	(charge_control@charge_count+1),w
	iorwf	(charge_control@charge_count),w
	skipnz
	goto	u5341
	goto	u5340
u5341:
	goto	l17839
u5340:
	
l17835:	
	movlw	high(01680h)
	subwf	(charge_control@charge_count+1),w
	movlw	low(01680h)
	skipnz
	subwf	(charge_control@charge_count),w
	skipnc
	goto	u5351
	goto	u5350
u5351:
	goto	l17839
u5350:
	line	90
	
l17837:	
;main.c: 89: {
;main.c: 90: Battery_Detect();
	fcall	_Battery_Detect
	line	91
;main.c: 91: }
	goto	l1142
	line	92
	
l1139:	
	line	94
	
l17839:	
;main.c: 92: else
;main.c: 93: {
;main.c: 94: if(charge_count >= 5760)
	movlw	high(01680h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(charge_control@charge_count+1),w
	movlw	low(01680h)
	skipnz
	subwf	(charge_control@charge_count),w
	skipc
	goto	u5361
	goto	u5360
u5361:
	goto	l1142
u5360:
	line	96
	
l17841:	
;main.c: 95: {
;main.c: 96: LED_VoltageChargeOutput(Bit_RESET);
	movlw	(0)
	fcall	_LED_VoltageChargeOutput
	line	98
;main.c: 98: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), SET);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_GPIO_WriteBit)
	bsf	status,0
	rlf	(?_GPIO_WriteBit),f
	clrf	0+(?_GPIO_WriteBit)+01h
	bsf	status,0
	rlf	0+(?_GPIO_WriteBit)+01h,f
	movlw	(01h)
	fcall	_GPIO_WriteBit
	goto	l1142
	line	99
	
l1141:	
	goto	l1142
	line	100
	
l1140:	
	line	101
	
l1142:	
	return
	opt stack 0
GLOBAL	__end_of_charge_control
	__end_of_charge_control:
;; =============== function _charge_control ends ============

	signat	_charge_control,88
	global	_Driver_Init
psect	text1778,local,class=CODE,delta=2
global __ptext1778
__ptext1778:

;; *************** function _Driver_Init *****************
;; Defined at:
;;		line 58 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_LED_Init
;;		_KEY_Init
;;		_Charge_Init
;;		_ADC_Init
;;		_LEDTimer_Cmd
;;		_LEDTimer_INTConfig
;;		_EEPROM_Init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1778
	file	"main.c"
	line	58
	global	__size_of_Driver_Init
	__size_of_Driver_Init	equ	__end_of_Driver_Init-_Driver_Init
	
_Driver_Init:	
	opt	stack 0
; Regs used in _Driver_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	60
	
l17821:	
;main.c: 60: LED_Init();
	fcall	_LED_Init
	line	63
;main.c: 63: KEY_Init();
	fcall	_KEY_Init
	line	66
;main.c: 66: Charge_Init();
	fcall	_Charge_Init
	line	69
	
l17823:	
;main.c: 69: ADC_Init((0x06));
	movlw	(06h)
	fcall	_ADC_Init
	line	71
	
l17825:	
;main.c: 71: LEDTimer_Cmd(TIM_PERIOD_0_33ms, ENABLE);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_LEDTimer_Cmd)
	bsf	status,0
	rlf	(?_LEDTimer_Cmd),f
	movlw	(02h)
	fcall	_LEDTimer_Cmd
	line	72
	
l17827:	
;main.c: 72: LEDTimer_INTConfig(ENABLE);
	movlw	(01h)
	fcall	_LEDTimer_INTConfig
	line	75
	
l17829:	
;main.c: 75: EEPROM_Init();
	fcall	_EEPROM_Init
	line	76
	
l1136:	
	return
	opt stack 0
GLOBAL	__end_of_Driver_Init
	__end_of_Driver_Init:
;; =============== function _Driver_Init ends ============

	signat	_Driver_Init,88
	global	_Motor_Start
psect	text1779,local,class=CODE,delta=2
global __ptext1779
__ptext1779:

;; *************** function _Motor_Start *****************
;; Defined at:
;;		line 143 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     enum E1552
;; Auto vars:     Size  Location     Type
;;  status          1   12[BANK0 ] enum E1552
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LED_DisplayMotorStatus
;;		_Motor_Init
;;		_SwitchModeTimer_Cmd
;;		_SwitchModeTimer_INTConfig
;; This function is called by:
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1779
	file	"ms83fxx02_motor.c"
	line	143
	global	__size_of_Motor_Start
	__size_of_Motor_Start	equ	__end_of_Motor_Start-_Motor_Start
	
_Motor_Start:	
	opt	stack 0
; Regs used in _Motor_Start: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Motor_Start@status stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Motor_Start@status)
	line	145
	
l17807:	
;ms83fxx02_motor.c: 145: switch(status)
	goto	l17817
	line	147
;ms83fxx02_motor.c: 146: {
;ms83fxx02_motor.c: 147: case MOTOR_MODE_1:
	
l8845:	
	line	149
	
l17809:	
;ms83fxx02_motor.c: 148: {
;ms83fxx02_motor.c: 149: LED_DisplayMotorStatus(GPIOA, ((uint8_t)0x00000004));
	movlw	(04h)
	movwf	(??_Motor_Start+0)+0
	movf	(??_Motor_Start+0)+0,w
	movwf	(?_LED_DisplayMotorStatus)
	movlw	(0)
	fcall	_LED_DisplayMotorStatus
	line	150
;ms83fxx02_motor.c: 150: break;
	goto	l17819
	line	152
;ms83fxx02_motor.c: 151: }
;ms83fxx02_motor.c: 152: case MOTOR_MODE_2:
	
l8847:	
	line	154
	
l17811:	
;ms83fxx02_motor.c: 153: {
;ms83fxx02_motor.c: 154: LED_DisplayMotorStatus(GPIOA, ((uint8_t)0x00000008));
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Motor_Start+0)+0
	movf	(??_Motor_Start+0)+0,w
	movwf	(?_LED_DisplayMotorStatus)
	movlw	(0)
	fcall	_LED_DisplayMotorStatus
	line	155
;ms83fxx02_motor.c: 155: break;
	goto	l17819
	line	157
;ms83fxx02_motor.c: 156: }
;ms83fxx02_motor.c: 157: case MOTOR_MODE_3:
	
l8848:	
	line	159
	
l17813:	
;ms83fxx02_motor.c: 158: {
;ms83fxx02_motor.c: 159: LED_DisplayMotorStatus(GPIOC, ((uint8_t)0x00000001));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_LED_DisplayMotorStatus)
	bsf	status,0
	rlf	(?_LED_DisplayMotorStatus),f
	movlw	(01h)
	fcall	_LED_DisplayMotorStatus
	line	160
;ms83fxx02_motor.c: 160: break;
	goto	l17819
	line	162
;ms83fxx02_motor.c: 161: }
;ms83fxx02_motor.c: 162: default:
	
l8849:	
	line	164
;ms83fxx02_motor.c: 163: {
;ms83fxx02_motor.c: 164: break;
	goto	l17819
	line	166
	
l17815:	
;ms83fxx02_motor.c: 165: }
;ms83fxx02_motor.c: 166: }
	goto	l17819
	line	145
	
l8844:	
	
l17817:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	l17809
	xorlw	3^2	; case 3
	skipnz
	goto	l17811
	xorlw	4^3	; case 4
	skipnz
	goto	l17813
	goto	l17819
	opt asmopt_on

	line	166
	
l8846:	
	line	168
	
l17819:	
;ms83fxx02_motor.c: 168: Motor_Init(status);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Motor_Start@status),w
	fcall	_Motor_Init
	line	171
;ms83fxx02_motor.c: 171: SwitchModeTimer_Cmd(ENABLE);
	movlw	(01h)
	fcall	_SwitchModeTimer_Cmd
	line	172
;ms83fxx02_motor.c: 172: SwitchModeTimer_INTConfig(ENABLE);
	movlw	(01h)
	fcall	_SwitchModeTimer_INTConfig
	line	177
	
l8850:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_Start
	__end_of_Motor_Start:
;; =============== function _Motor_Start ends ============

	signat	_Motor_Start,4216
	global	_Battery_Detect
psect	text1780,local,class=CODE,delta=2
global __ptext1780
__ptext1780:

;; *************** function _Battery_Detect *****************
;; Defined at:
;;		line 216 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  adc_data        2   30[BANK0 ] unsigned int 
;;  mode            1   29[BANK0 ] enum E1521
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Battery_HandleData
;;		_GetDeviceMode
;;		___lwtoft
;;		___ftge
;;		_EEPROM_SetFlag
;;		_EEPROM_StoreModeData
;;		_EEPROM_StoreMotorData
;;		_LED_UnderVoltageOutput
;;		_LED_Init
;;		_KEY_DeInit
;;		_Motor_Stop
;;		_Motor_SetStatus
;;		_MotorOperationTimer_Stop
;;		_LEDTimer_DispUnderVoltCmd
;;		_GPIO_WriteBit
;; This function is called by:
;;		_charge_control
;; This function uses a non-reentrant model
;;
psect	text1780
	file	"ms83fxx02_pwr.c"
	line	216
	global	__size_of_Battery_Detect
	__size_of_Battery_Detect	equ	__end_of_Battery_Detect-_Battery_Detect
	
_Battery_Detect:	
	opt	stack 0
; Regs used in _Battery_Detect: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	217
	
l17761:	
;ms83fxx02_pwr.c: 217: uint32_t adc_data = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Battery_Detect@adc_data)
	clrf	(Battery_Detect@adc_data+1)
	line	218
	
l17763:	
;ms83fxx02_pwr.c: 218: DEVICE_MODE_Type mode = RUN_MODE;
	clrf	(Battery_Detect@mode)
	line	220
	
l17765:	
;ms83fxx02_pwr.c: 220: if(!battery_handle_flag)
	movf	(_battery_handle_flag),f
	skipz	;volatile
	goto	u5261
	goto	u5260
u5261:
	goto	l17771
u5260:
	goto	l10059
	line	222
	
l17767:	
;ms83fxx02_pwr.c: 221: {
;ms83fxx02_pwr.c: 222: return;
	goto	l10059
	line	223
	
l17769:	
;ms83fxx02_pwr.c: 223: }
	goto	l17773
	line	224
	
l10058:	
	line	226
	
l17771:	
;ms83fxx02_pwr.c: 224: else
;ms83fxx02_pwr.c: 225: {
;ms83fxx02_pwr.c: 226: adc_data = Battery_HandleData();
	fcall	_Battery_HandleData
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_Battery_HandleData)),w
	clrf	(Battery_Detect@adc_data+1)
	addwf	(Battery_Detect@adc_data+1)
	movf	(0+(?_Battery_HandleData)),w
	clrf	(Battery_Detect@adc_data)
	addwf	(Battery_Detect@adc_data)

	goto	l17773
	line	227
	
l10060:	
	line	229
	
l17773:	
;ms83fxx02_pwr.c: 227: }
;ms83fxx02_pwr.c: 229: mode = GetDeviceMode();
	fcall	_GetDeviceMode
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Battery_Detect+0)+0
	movf	(??_Battery_Detect+0)+0,w
	movwf	(Battery_Detect@mode)
	line	231
	
l17775:	
;ms83fxx02_pwr.c: 231: if(mode == RUN_MODE)
	movf	(Battery_Detect@mode),f
	skipz
	goto	u5271
	goto	u5270
u5271:
	goto	l17801
u5270:
	line	234
	
l17777:	
;ms83fxx02_pwr.c: 232: {
;ms83fxx02_pwr.c: 234: if(adc_data < ((uint16_t)(1024*2.8)/((float)3.7)))
	movf	(Battery_Detect@adc_data+1),w
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	movf	(Battery_Detect@adc_data),w
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	(?___ftge)
	movf	(1+(?___lwtoft)),w
	movwf	(?___ftge+1)
	movf	(2+(?___lwtoft)),w
	movwf	(?___ftge+2)
	movlw	0xb7
	movwf	0+(?___ftge)+03h
	movlw	0x41
	movwf	1+(?___ftge)+03h
	movlw	0x44
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5281
	goto	u5280
u5281:
	goto	l17787
u5280:
	line	238
	
l17779:	
;ms83fxx02_pwr.c: 235: {
;ms83fxx02_pwr.c: 238: EEPROM_SetFlag();
	fcall	_EEPROM_SetFlag
	line	239
;ms83fxx02_pwr.c: 239: EEPROM_StoreModeData();
	fcall	_EEPROM_StoreModeData
	line	240
;ms83fxx02_pwr.c: 240: EEPROM_StoreMotorData();
	fcall	_EEPROM_StoreMotorData
	line	241
;ms83fxx02_pwr.c: 241: LED_UnderVoltageOutput(Bit_RESET);
	movlw	(0)
	fcall	_LED_UnderVoltageOutput
	line	244
	
l17781:	
;ms83fxx02_pwr.c: 244: LED_Init();
	fcall	_LED_Init
	line	245
	
l17783:	
;ms83fxx02_pwr.c: 245: KEY_DeInit();
	fcall	_KEY_DeInit
	line	246
;ms83fxx02_pwr.c: 246: Motor_Stop();
	fcall	_Motor_Stop
	line	247
;ms83fxx02_pwr.c: 247: Motor_SetStatus(MOTOR_MODE_STOP);
	movlw	(01h)
	fcall	_Motor_SetStatus
	line	248
;ms83fxx02_pwr.c: 248: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	253
	
l17785:	
# 253 "ms83fxx02_pwr.c"
SLEEP ;#
psect	text1780
	line	255
;ms83fxx02_pwr.c: 255: }
	goto	l10059
	line	257
	
l10062:	
	
l17787:	
;ms83fxx02_pwr.c: 257: else if(adc_data < ((uint16_t)(1024*3.1)/((float)3.7)))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Battery_Detect@adc_data+1),w
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	movf	(Battery_Detect@adc_data),w
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	(?___ftge)
	movf	(1+(?___lwtoft)),w
	movwf	(?___ftge+1)
	movf	(2+(?___lwtoft)),w
	movwf	(?___ftge+2)
	movlw	0x76
	movwf	0+(?___ftge)+03h
	movlw	0x56
	movwf	1+(?___ftge)+03h
	movlw	0x44
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5291
	goto	u5290
u5291:
	goto	l17793
u5290:
	line	260
	
l17789:	
;ms83fxx02_pwr.c: 258: {
;ms83fxx02_pwr.c: 260: LEDTimer_DispUnderVoltCmd(ENABLE);
	movlw	(01h)
	fcall	_LEDTimer_DispUnderVoltCmd
	line	261
	
l17791:	
;ms83fxx02_pwr.c: 261: detect_under_voltage = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_detect_under_voltage)
	bsf	status,0
	rlf	(_detect_under_voltage),f
	line	263
;ms83fxx02_pwr.c: 263: }
	goto	l10059
	line	265
	
l10064:	
	line	267
	
l17793:	
;ms83fxx02_pwr.c: 265: else
;ms83fxx02_pwr.c: 266: {
;ms83fxx02_pwr.c: 267: if(detect_under_voltage)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_detect_under_voltage),w
	skipz
	goto	u5300
	goto	l10059
u5300:
	line	269
	
l17795:	
;ms83fxx02_pwr.c: 268: {
;ms83fxx02_pwr.c: 269: if(adc_data > ((uint16_t)(1024*3.2)/((float)3.7)))
	movlw	0x5a
	movwf	(?___ftge)
	movlw	0x5d
	movwf	(?___ftge+1)
	movlw	0x44
	movwf	(?___ftge+2)
	movf	(Battery_Detect@adc_data+1),w
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	movf	(Battery_Detect@adc_data),w
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	0+(?___ftge)+03h
	movf	(1+(?___lwtoft)),w
	movwf	1+(?___ftge)+03h
	movf	(2+(?___lwtoft)),w
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5311
	goto	u5310
u5311:
	goto	l10059
u5310:
	line	271
	
l17797:	
;ms83fxx02_pwr.c: 270: {
;ms83fxx02_pwr.c: 271: detect_under_voltage = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_detect_under_voltage)
	line	272
	
l17799:	
;ms83fxx02_pwr.c: 272: LED_UnderVoltageOutput(Bit_RESET);
	movlw	(0)
	fcall	_LED_UnderVoltageOutput
	line	274
;ms83fxx02_pwr.c: 274: LEDTimer_DispUnderVoltCmd(DISABLE);
	movlw	(0)
	fcall	_LEDTimer_DispUnderVoltCmd
	goto	l10059
	line	275
	
l10067:	
	goto	l10059
	line	276
	
l10066:	
	goto	l10059
	line	277
	
l10065:	
	goto	l10059
	
l10063:	
	line	279
;ms83fxx02_pwr.c: 275: }
;ms83fxx02_pwr.c: 276: }
;ms83fxx02_pwr.c: 277: }
;ms83fxx02_pwr.c: 279: }
	goto	l10059
	line	280
	
l10061:	
	line	282
	
l17801:	
;ms83fxx02_pwr.c: 280: else
;ms83fxx02_pwr.c: 281: {
;ms83fxx02_pwr.c: 282: if(mode == CHARGE_MODE)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Battery_Detect@mode),w
	xorlw	01h
	skipz
	goto	u5321
	goto	u5320
u5321:
	goto	l10059
u5320:
	line	285
	
l17803:	
;ms83fxx02_pwr.c: 283: {
;ms83fxx02_pwr.c: 285: if(adc_data > ((uint16_t)(1024*3.4)/((float)3.7)))
	movlw	0x34
	movwf	(?___ftge)
	movlw	0x6b
	movwf	(?___ftge+1)
	movlw	0x44
	movwf	(?___ftge+2)
	movf	(Battery_Detect@adc_data+1),w
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	movf	(Battery_Detect@adc_data),w
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	0+(?___ftge)+03h
	movf	(1+(?___lwtoft)),w
	movwf	1+(?___ftge)+03h
	movf	(2+(?___lwtoft)),w
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5331
	goto	u5330
u5331:
	goto	l10059
u5330:
	line	288
	
l17805:	
;ms83fxx02_pwr.c: 286: {
;ms83fxx02_pwr.c: 288: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), Bit_SET);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_GPIO_WriteBit)
	bsf	status,0
	rlf	(?_GPIO_WriteBit),f
	clrf	0+(?_GPIO_WriteBit)+01h
	bsf	status,0
	rlf	0+(?_GPIO_WriteBit)+01h,f
	movlw	(01h)
	fcall	_GPIO_WriteBit
	goto	l10059
	line	289
	
l10070:	
	goto	l10059
	line	290
	
l10069:	
	goto	l10059
	line	291
	
l10068:	
	line	292
	
l10059:	
	return
	opt stack 0
GLOBAL	__end_of_Battery_Detect
	__end_of_Battery_Detect:
;; =============== function _Battery_Detect ends ============

	signat	_Battery_Detect,88
	global	_Charge_Init
psect	text1781,local,class=CODE,delta=2
global __ptext1781
__ptext1781:

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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ChargeDetect_Init
;;		_ChargeCtrl_Init
;; This function is called by:
;;		_Driver_Init
;; This function uses a non-reentrant model
;;
psect	text1781
	file	"ms83fxx02_charge.c"
	line	49
	global	__size_of_Charge_Init
	__size_of_Charge_Init	equ	__end_of_Charge_Init-_Charge_Init
	
_Charge_Init:	
	opt	stack 0
; Regs used in _Charge_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	50
	
l17759:	
;ms83fxx02_charge.c: 50: ChargeDetect_Init();
	fcall	_ChargeDetect_Init
	line	51
;ms83fxx02_charge.c: 51: ChargeCtrl_Init();
	fcall	_ChargeCtrl_Init
	line	52
	
l2250:	
	return
	opt stack 0
GLOBAL	__end_of_Charge_Init
	__end_of_Charge_Init:
;; =============== function _Charge_Init ends ============

	signat	_Charge_Init,88
	global	___lwtoft
psect	text1782,local,class=CODE,delta=2
global __ptext1782
__ptext1782:

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 29 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   24[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   24[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       3       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1782
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwtoft.c"
	line	29
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
	opt	stack 0
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l17755:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwtoft@c),w
	movwf	(?___ftpack)
	movf	(___lwtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	clrf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l14226
	
l17757:	
	line	31
	
l14226:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
;; =============== function ___lwtoft ends ============

	signat	___lwtoft,4219
	global	_EEPROM_StoreModeData
psect	text1783,local,class=CODE,delta=2
global __ptext1783
__ptext1783:

;; *************** function _EEPROM_StoreModeData *****************
;; Defined at:
;;		line 184 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_EEPROM_Write
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1783
	file	"ms83fxx02_pwr.c"
	line	184
	global	__size_of_EEPROM_StoreModeData
	__size_of_EEPROM_StoreModeData	equ	__end_of_EEPROM_StoreModeData-_EEPROM_StoreModeData
	
_EEPROM_StoreModeData:	
	opt	stack 0
; Regs used in _EEPROM_StoreModeData: [wreg+status,2+status,0+pclath+cstack]
	line	185
	
l17753:	
;ms83fxx02_pwr.c: 185: EEPROM_Write(0x11, device_mode);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_device_mode),w	;volatile
	movwf	(??_EEPROM_StoreModeData+0)+0
	movf	(??_EEPROM_StoreModeData+0)+0,w
	movwf	(?_EEPROM_Write)
	movlw	(011h)
	fcall	_EEPROM_Write
	line	186
	
l10046:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_StoreModeData
	__end_of_EEPROM_StoreModeData:
;; =============== function _EEPROM_StoreModeData ends ============

	signat	_EEPROM_StoreModeData,88
	global	_EEPROM_SetFlag
psect	text1784,local,class=CODE,delta=2
global __ptext1784
__ptext1784:

;; *************** function _EEPROM_SetFlag *****************
;; Defined at:
;;		line 174 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_EEPROM_Write
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1784
	file	"ms83fxx02_pwr.c"
	line	174
	global	__size_of_EEPROM_SetFlag
	__size_of_EEPROM_SetFlag	equ	__end_of_EEPROM_SetFlag-_EEPROM_SetFlag
	
_EEPROM_SetFlag:	
	opt	stack 0
; Regs used in _EEPROM_SetFlag: [wreg+status,2+status,0+pclath+cstack]
	line	175
	
l17751:	
;ms83fxx02_pwr.c: 175: EEPROM_Write(0x16, 0x01);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_EEPROM_Write)
	bsf	status,0
	rlf	(?_EEPROM_Write),f
	movlw	(016h)
	fcall	_EEPROM_Write
	line	176
	
l10040:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_SetFlag
	__end_of_EEPROM_SetFlag:
;; =============== function _EEPROM_SetFlag ends ============

	signat	_EEPROM_SetFlag,88
	global	_EEPROM_StoreMotorData
psect	text1785,local,class=CODE,delta=2
global __ptext1785
__ptext1785:

;; *************** function _EEPROM_StoreMotorData *****************
;; Defined at:
;;		line 511 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_EEPROM_Write
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1785
	file	"ms83fxx02_motor.c"
	line	511
	global	__size_of_EEPROM_StoreMotorData
	__size_of_EEPROM_StoreMotorData	equ	__end_of_EEPROM_StoreMotorData-_EEPROM_StoreMotorData
	
_EEPROM_StoreMotorData:	
	opt	stack 0
; Regs used in _EEPROM_StoreMotorData: [wreg+status,2+status,0+pclath+cstack]
	line	512
	
l17749:	
;ms83fxx02_motor.c: 512: EEPROM_Write(0x12, motor_status);
	movf	(_motor_status),w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_EEPROM_StoreMotorData+0)+0
	movf	(??_EEPROM_StoreMotorData+0)+0,w
	movwf	(?_EEPROM_Write)
	movlw	(012h)
	fcall	_EEPROM_Write
	line	513
;ms83fxx02_motor.c: 513: EEPROM_Write(0x13, motor_intr_count);
	movf	(_motor_intr_count),w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_EEPROM_StoreMotorData+0)+0
	movf	(??_EEPROM_StoreMotorData+0)+0,w
	movwf	(?_EEPROM_Write)
	movlw	(013h)
	fcall	_EEPROM_Write
	line	514
;ms83fxx02_motor.c: 514: EEPROM_Write(0x14, motor_oper_record);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_motor_oper_record),w	;volatile
	movwf	(??_EEPROM_StoreMotorData+0)+0
	movf	(??_EEPROM_StoreMotorData+0)+0,w
	movwf	(?_EEPROM_Write)
	movlw	(014h)
	fcall	_EEPROM_Write
	line	515
;ms83fxx02_motor.c: 515: EEPROM_Write(0x15, motor_timing_running_flag);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_motor_timing_running_flag),w
	movwf	(??_EEPROM_StoreMotorData+0)+0
	movf	(??_EEPROM_StoreMotorData+0)+0,w
	movwf	(?_EEPROM_Write)
	movlw	(015h)
	fcall	_EEPROM_Write
	line	516
	
l8914:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_StoreMotorData
	__end_of_EEPROM_StoreMotorData:
;; =============== function _EEPROM_StoreMotorData ends ============

	signat	_EEPROM_StoreMotorData,88
	global	_LED_UnderVoltageOutput
psect	text1786,local,class=CODE,delta=2
global __ptext1786
__ptext1786:

;; *************** function _LED_UnderVoltageOutput *****************
;; Defined at:
;;		line 85 in file "ms83fxx02_led.c"
;; Parameters:    Size  Location     Type
;;  BitVal          1    wreg     enum E1499
;; Auto vars:     Size  Location     Type
;;  BitVal          1   10[BANK0 ] enum E1499
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_GPIO_WriteBit
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1786
	file	"ms83fxx02_led.c"
	line	85
	global	__size_of_LED_UnderVoltageOutput
	__size_of_LED_UnderVoltageOutput	equ	__end_of_LED_UnderVoltageOutput-_LED_UnderVoltageOutput
	
_LED_UnderVoltageOutput:	
	opt	stack 0
; Regs used in _LED_UnderVoltageOutput: [wreg+status,2+status,0+pclath+cstack]
;LED_UnderVoltageOutput@BitVal stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LED_UnderVoltageOutput@BitVal)
	line	86
	
l17747:	
;ms83fxx02_led.c: 86: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000040), BitVal);
	movlw	(040h)
	movwf	(??_LED_UnderVoltageOutput+0)+0
	movf	(??_LED_UnderVoltageOutput+0)+0,w
	movwf	(?_GPIO_WriteBit)
	movf	(LED_UnderVoltageOutput@BitVal),w
	movwf	(??_LED_UnderVoltageOutput+1)+0
	movf	(??_LED_UnderVoltageOutput+1)+0,w
	movwf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	87
	
l6625:	
	return
	opt stack 0
GLOBAL	__end_of_LED_UnderVoltageOutput
	__end_of_LED_UnderVoltageOutput:
;; =============== function _LED_UnderVoltageOutput ends ============

	signat	_LED_UnderVoltageOutput,4216
	global	_LED_DisplayMotorStatus
psect	text1787,local,class=CODE,delta=2
global __ptext1787
__ptext1787:

;; *************** function _LED_DisplayMotorStatus *****************
;; Defined at:
;;		line 56 in file "ms83fxx02_led.c"
;; Parameters:    Size  Location     Type
;;  GPIOx           1    wreg     enum E1491
;;  GPIO_Pin        1    8[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  GPIOx           1   10[BANK0 ] enum E1491
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_GPIO_WriteBit
;; This function is called by:
;;		_Motor_Start
;; This function uses a non-reentrant model
;;
psect	text1787
	file	"ms83fxx02_led.c"
	line	56
	global	__size_of_LED_DisplayMotorStatus
	__size_of_LED_DisplayMotorStatus	equ	__end_of_LED_DisplayMotorStatus-_LED_DisplayMotorStatus
	
_LED_DisplayMotorStatus:	
	opt	stack 0
; Regs used in _LED_DisplayMotorStatus: [wreg+status,2+status,0+pclath+cstack]
;LED_DisplayMotorStatus@GPIOx stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LED_DisplayMotorStatus@GPIOx)
	line	57
	
l17745:	
;ms83fxx02_led.c: 57: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000004), Bit_RESET);
	movlw	(04h)
	movwf	(??_LED_DisplayMotorStatus+0)+0
	movf	(??_LED_DisplayMotorStatus+0)+0,w
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	58
;ms83fxx02_led.c: 58: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000008), Bit_RESET);
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LED_DisplayMotorStatus+0)+0
	movf	(??_LED_DisplayMotorStatus+0)+0,w
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	59
;ms83fxx02_led.c: 59: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), Bit_RESET);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_GPIO_WriteBit)
	bsf	status,0
	rlf	(?_GPIO_WriteBit),f
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	60
;ms83fxx02_led.c: 60: GPIO_WriteBit(GPIOx, GPIO_Pin, Bit_SET);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LED_DisplayMotorStatus@GPIO_Pin),w
	movwf	(??_LED_DisplayMotorStatus+0)+0
	movf	(??_LED_DisplayMotorStatus+0)+0,w
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	bsf	status,0
	rlf	0+(?_GPIO_WriteBit)+01h,f
	movf	(LED_DisplayMotorStatus@GPIOx),w
	fcall	_GPIO_WriteBit
	line	61
	
l6616:	
	return
	opt stack 0
GLOBAL	__end_of_LED_DisplayMotorStatus
	__end_of_LED_DisplayMotorStatus:
;; =============== function _LED_DisplayMotorStatus ends ============

	signat	_LED_DisplayMotorStatus,8312
	global	_ChargeCtrl_Init
psect	text1788,local,class=CODE,delta=2
global __ptext1788
__ptext1788:

;; *************** function _ChargeCtrl_Init *****************
;; Defined at:
;;		line 39 in file "ms83fxx02_charge.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  GPIO_InitStr    2    9[BANK0 ] struct .
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_GPIO_Init
;;		_GPIO_WriteBit
;; This function is called by:
;;		_Charge_Init
;; This function uses a non-reentrant model
;;
psect	text1788
	file	"ms83fxx02_charge.c"
	line	39
	global	__size_of_ChargeCtrl_Init
	__size_of_ChargeCtrl_Init	equ	__end_of_ChargeCtrl_Init-_ChargeCtrl_Init
	
_ChargeCtrl_Init:	
	opt	stack 0
; Regs used in _ChargeCtrl_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	42
	
l17737:	
;ms83fxx02_charge.c: 40: GPIO_InitTypeDef GPIO_InitStruct;
;ms83fxx02_charge.c: 42: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(ChargeCtrl_Init@GPIO_InitStruct)+01h
	bsf	status,0
	rlf	0+(ChargeCtrl_Init@GPIO_InitStruct)+01h,f
	line	43
	
l17739:	
;ms83fxx02_charge.c: 43: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000080);
	movlw	(080h)
	movwf	(??_ChargeCtrl_Init+0)+0
	movf	(??_ChargeCtrl_Init+0)+0,w
	movwf	(ChargeCtrl_Init@GPIO_InitStruct)
	line	44
	
l17741:	
;ms83fxx02_charge.c: 44: GPIO_Init(GPIOA, &GPIO_InitStruct);
	movlw	(ChargeCtrl_Init@GPIO_InitStruct)&0ffh
	movwf	(??_ChargeCtrl_Init+0)+0
	movf	(??_ChargeCtrl_Init+0)+0,w
	movwf	(?_GPIO_Init)
	movlw	(0)
	fcall	_GPIO_Init
	line	45
	
l17743:	
;ms83fxx02_charge.c: 45: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000080), Bit_RESET);
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ChargeCtrl_Init+0)+0
	movf	(??_ChargeCtrl_Init+0)+0,w
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	46
	
l2247:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeCtrl_Init
	__end_of_ChargeCtrl_Init:
;; =============== function _ChargeCtrl_Init ends ============

	signat	_ChargeCtrl_Init,88
	global	_ChargeDetect_Init
psect	text1789,local,class=CODE,delta=2
global __ptext1789
__ptext1789:

;; *************** function _ChargeDetect_Init *****************
;; Defined at:
;;		line 27 in file "ms83fxx02_charge.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  GPIO_InitStr    2    9[BANK0 ] struct .
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_GPIO_Init
;;		_GPIO_ReadInputDataBit
;;		_GPIO_INTConfig
;; This function is called by:
;;		_Charge_Init
;; This function uses a non-reentrant model
;;
psect	text1789
	file	"ms83fxx02_charge.c"
	line	27
	global	__size_of_ChargeDetect_Init
	__size_of_ChargeDetect_Init	equ	__end_of_ChargeDetect_Init-_ChargeDetect_Init
	
_ChargeDetect_Init:	
	opt	stack 0
; Regs used in _ChargeDetect_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	30
	
l17727:	
;ms83fxx02_charge.c: 28: GPIO_InitTypeDef GPIO_InitStruct;
;ms83fxx02_charge.c: 30: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(ChargeDetect_Init@GPIO_InitStruct)+01h
	line	31
	
l17729:	
;ms83fxx02_charge.c: 31: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000010);
	movlw	(010h)
	movwf	(??_ChargeDetect_Init+0)+0
	movf	(??_ChargeDetect_Init+0)+0,w
	movwf	(ChargeDetect_Init@GPIO_InitStruct)
	line	32
	
l17731:	
;ms83fxx02_charge.c: 32: GPIO_Init(GPIOA, &GPIO_InitStruct);
	movlw	(ChargeDetect_Init@GPIO_InitStruct)&0ffh
	movwf	(??_ChargeDetect_Init+0)+0
	movf	(??_ChargeDetect_Init+0)+0,w
	movwf	(?_GPIO_Init)
	movlw	(0)
	fcall	_GPIO_Init
	line	34
	
l17733:	
;ms83fxx02_charge.c: 34: GPIO_ReadInputDataBit(GPIOA, ((uint8_t)0x00000010));
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ChargeDetect_Init+0)+0
	movf	(??_ChargeDetect_Init+0)+0,w
	movwf	(?_GPIO_ReadInputDataBit)
	movlw	(0)
	fcall	_GPIO_ReadInputDataBit
	line	35
	
l17735:	
;ms83fxx02_charge.c: 35: GPIO_INTConfig(GPIOA, ((uint8_t)0x00000010), ENABLE);
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ChargeDetect_Init+0)+0
	movf	(??_ChargeDetect_Init+0)+0,w
	movwf	(?_GPIO_INTConfig)
	clrf	0+(?_GPIO_INTConfig)+01h
	bsf	status,0
	rlf	0+(?_GPIO_INTConfig)+01h,f
	movlw	(0)
	fcall	_GPIO_INTConfig
	line	36
	
l2244:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeDetect_Init
	__end_of_ChargeDetect_Init:
;; =============== function _ChargeDetect_Init ends ============

	signat	_ChargeDetect_Init,88
	global	_ChargeDetect_GetStatus
psect	text1790,local,class=CODE,delta=2
global __ptext1790
__ptext1790:

;; *************** function _ChargeDetect_GetStatus *****************
;; Defined at:
;;		line 60 in file "ms83fxx02_charge.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    8[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_GPIO_ReadInputDataBit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1790
	file	"ms83fxx02_charge.c"
	line	60
	global	__size_of_ChargeDetect_GetStatus
	__size_of_ChargeDetect_GetStatus	equ	__end_of_ChargeDetect_GetStatus-_ChargeDetect_GetStatus
	
_ChargeDetect_GetStatus:	
	opt	stack 2
; Regs used in _ChargeDetect_GetStatus: [wreg+status,2+status,0+pclath+cstack]
	line	61
	
l17707:	
;ms83fxx02_charge.c: 61: uint32_t i = 50;
	movlw	low(032h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ChargeDetect_GetStatus@i)
	movlw	high(032h)
	movwf	((ChargeDetect_GetStatus@i))+1
	line	63
;ms83fxx02_charge.c: 63: while(i--)
	goto	l17721
	
l2257:	
	line	65
	
l17709:	
;ms83fxx02_charge.c: 64: {
;ms83fxx02_charge.c: 65: if(1 == GPIO_ReadInputDataBit(GPIOA, ((uint8_t)0x00000010)))
	movlw	(010h)
	movwf	(??_ChargeDetect_GetStatus+0)+0
	movf	(??_ChargeDetect_GetStatus+0)+0,w
	movwf	(?_GPIO_ReadInputDataBit)
	movlw	(0)
	fcall	_GPIO_ReadInputDataBit
	xorlw	01h
	skipz
	goto	u5231
	goto	u5230
u5231:
	goto	l17721
u5230:
	line	67
	
l17711:	
;ms83fxx02_charge.c: 66: {
;ms83fxx02_charge.c: 67: charge_detect_count++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ChargeDetect_GetStatus+0)+0
	movf	(??_ChargeDetect_GetStatus+0)+0,w
	addwf	(_charge_detect_count),f
	line	68
	
l17713:	
;ms83fxx02_charge.c: 68: if(charge_detect_count >= 30)
	movlw	(01Eh)
	subwf	(_charge_detect_count),w
	skipc
	goto	u5241
	goto	u5240
u5241:
	goto	l17721
u5240:
	line	70
	
l17715:	
;ms83fxx02_charge.c: 69: {
;ms83fxx02_charge.c: 70: charge_detect_count = 0;
	clrf	(_charge_detect_count)
	line	71
	
l17717:	
;ms83fxx02_charge.c: 71: return 1;
	movlw	(01h)
	goto	l2260
	
l17719:	
	goto	l2260
	line	72
	
l2259:	
	goto	l17721
	line	73
	
l2258:	
	goto	l17721
	line	74
	
l2256:	
	line	63
	
l17721:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(ChargeDetect_GetStatus@i),f
	movlw	high(01h)
	skipc
	decf	(ChargeDetect_GetStatus@i+1),f
	subwf	(ChargeDetect_GetStatus@i+1),f
	movlw	high(0FFFFh)
	xorwf	((ChargeDetect_GetStatus@i+1)),w
	skipz
	goto	u5255
	movlw	low(0FFFFh)
	xorwf	((ChargeDetect_GetStatus@i)),w
u5255:

	skipz
	goto	u5251
	goto	u5250
u5251:
	goto	l17709
u5250:
	goto	l17723
	
l2261:	
	line	76
	
l17723:	
;ms83fxx02_charge.c: 72: }
;ms83fxx02_charge.c: 73: }
;ms83fxx02_charge.c: 74: }
;ms83fxx02_charge.c: 76: return 0;
	movlw	(0)
	goto	l2260
	
l17725:	
	line	77
	
l2260:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeDetect_GetStatus
	__end_of_ChargeDetect_GetStatus:
;; =============== function _ChargeDetect_GetStatus ends ============

	signat	_ChargeDetect_GetStatus,89
	global	_SleepLedTimer_Init
psect	text1791,local,class=CODE,delta=2
global __ptext1791
__ptext1791:

;; *************** function _SleepLedTimer_Init *****************
;; Defined at:
;;		line 141 in file "ms83fxx02_sleepled.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_SleepLed_Init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1791
	file	"ms83fxx02_sleepled.c"
	line	141
	global	__size_of_SleepLedTimer_Init
	__size_of_SleepLedTimer_Init	equ	__end_of_SleepLedTimer_Init-_SleepLedTimer_Init
	
_SleepLedTimer_Init:	
	opt	stack 2
; Regs used in _SleepLedTimer_Init: [wreg+status,2+status,0+pclath+cstack]
	line	143
	
l17687:	
;ms83fxx02_sleepled.c: 143: TMR3ON = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2178/8)^0100h,(2178)&7
	line	146
	
l17689:	
;ms83fxx02_sleepled.c: 146: PWM3CR0 = 0b01100010;
	movlw	(062h)
	movwf	(271)^0100h	;volatile
	line	148
;ms83fxx02_sleepled.c: 148: PWM3CR1 = 0b00011000;
	movlw	(018h)
	movwf	(272)^0100h	;volatile
	line	151
;ms83fxx02_sleepled.c: 151: T3CKDIV = 17;
	movlw	(011h)
	movwf	(273)^0100h	;volatile
	line	153
;ms83fxx02_sleepled.c: 153: TMR3H = 0x0F;
	movlw	(0Fh)
	movwf	(269)^0100h	;volatile
	line	154
	
l17691:	
;ms83fxx02_sleepled.c: 154: TMR3L = 0;
	clrf	(268)^0100h	;volatile
	line	155
	
l17693:	
;ms83fxx02_sleepled.c: 155: PR3L = 0xFF;
	movlw	(0FFh)
	movwf	(270)^0100h	;volatile
	line	158
	
l17695:	
;ms83fxx02_sleepled.c: 158: TMR3IF = 0;
	bcf	(2176/8)^0100h,(2176)&7
	line	161
	
l17697:	
;ms83fxx02_sleepled.c: 161: TMR3ON = 1;
	bsf	(2178/8)^0100h,(2178)&7
	line	164
	
l17699:	
;ms83fxx02_sleepled.c: 164: TMR3IE = 1;
	bsf	(2177/8)^0100h,(2177)&7
	line	165
	
l17701:	
;ms83fxx02_sleepled.c: 165: PEIE = 1;
	bsf	(94/8),(94)&7
	line	166
	
l17703:	
;ms83fxx02_sleepled.c: 166: GIE = 1;
	bsf	(95/8),(95)&7
	line	168
	
l17705:	
;ms83fxx02_sleepled.c: 168: SleepLed_Init((0xFFF/100));
	movlw	low(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_SleepLed_Init)
	movlw	high(028h)
	movwf	((?_SleepLed_Init))+1
	fcall	_SleepLed_Init
	line	169
	
l13322:	
	return
	opt stack 0
GLOBAL	__end_of_SleepLedTimer_Init
	__end_of_SleepLedTimer_Init:
;; =============== function _SleepLedTimer_Init ends ============

	signat	_SleepLedTimer_Init,88
	global	_ChargeCtrl_Output
psect	text1792,local,class=CODE,delta=2
global __ptext1792
__ptext1792:

;; *************** function _ChargeCtrl_Output *****************
;; Defined at:
;;		line 55 in file "ms83fxx02_charge.c"
;; Parameters:    Size  Location     Type
;;  BitVal          1    wreg     enum E1499
;; Auto vars:     Size  Location     Type
;;  BitVal          1   10[BANK0 ] enum E1499
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_GPIO_WriteBit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1792
	file	"ms83fxx02_charge.c"
	line	55
	global	__size_of_ChargeCtrl_Output
	__size_of_ChargeCtrl_Output	equ	__end_of_ChargeCtrl_Output-_ChargeCtrl_Output
	
_ChargeCtrl_Output:	
	opt	stack 2
; Regs used in _ChargeCtrl_Output: [wreg+status,2+status,0+pclath+cstack]
;ChargeCtrl_Output@BitVal stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ChargeCtrl_Output@BitVal)
	line	56
	
l17685:	
;ms83fxx02_charge.c: 56: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000080), BitVal);
	movlw	(080h)
	movwf	(??_ChargeCtrl_Output+0)+0
	movf	(??_ChargeCtrl_Output+0)+0,w
	movwf	(?_GPIO_WriteBit)
	movf	(ChargeCtrl_Output@BitVal),w
	movwf	(??_ChargeCtrl_Output+1)+0
	movf	(??_ChargeCtrl_Output+1)+0,w
	movwf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	57
	
l2253:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeCtrl_Output
	__end_of_ChargeCtrl_Output:
;; =============== function _ChargeCtrl_Output ends ============

	signat	_ChargeCtrl_Output,4216
	global	_MotorOperationTimer_Stop
psect	text1793,local,class=CODE,delta=2
global __ptext1793
__ptext1793:

;; *************** function _MotorOperationTimer_Stop *****************
;; Defined at:
;;		line 283 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Motor_CheckRunLimit
;; This function is called by:
;;		_main
;;		_Motor_HandleStatusChangeEvt
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1793
	file	"ms83fxx02_motor.c"
	line	283
	global	__size_of_MotorOperationTimer_Stop
	__size_of_MotorOperationTimer_Stop	equ	__end_of_MotorOperationTimer_Stop-_MotorOperationTimer_Stop
	
_MotorOperationTimer_Stop:	
	opt	stack 0
; Regs used in _MotorOperationTimer_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	285
	
l17677:	
;ms83fxx02_motor.c: 285: TMR4ON = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2226/8)^0100h,(2226)&7
	line	287
;ms83fxx02_motor.c: 287: TMR4IE = 0;
	bcf	(2225/8)^0100h,(2225)&7
	line	289
	
l17679:	
;ms83fxx02_motor.c: 289: if(!Motor_CheckRunLimit())
	fcall	_Motor_CheckRunLimit
	iorlw	0
	skipz
	goto	u5221
	goto	u5220
u5221:
	goto	l8868
u5220:
	line	292
	
l17681:	
;ms83fxx02_motor.c: 290: {
;ms83fxx02_motor.c: 292: motor_timing_running_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_motor_timing_running_flag)
	bsf	status,0
	rlf	(_motor_timing_running_flag),f
	line	293
	
l17683:	
;ms83fxx02_motor.c: 293: motor_intr_count = 0;
	clrf	(_motor_intr_count)	;volatile
	goto	l8868
	line	294
	
l8867:	
	line	295
	
l8868:	
	return
	opt stack 0
GLOBAL	__end_of_MotorOperationTimer_Stop
	__end_of_MotorOperationTimer_Stop:
;; =============== function _MotorOperationTimer_Stop ends ============

	signat	_MotorOperationTimer_Stop,88
	global	_Motor_Stop
psect	text1794,local,class=CODE,delta=2
global __ptext1794
__ptext1794:

;; *************** function _Motor_Stop *****************
;; Defined at:
;;		line 185 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_GPIO_WriteBit
;; This function is called by:
;;		_main
;;		_Motor_HandleStatusChangeEvt
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1794
	file	"ms83fxx02_motor.c"
	line	185
	global	__size_of_Motor_Stop
	__size_of_Motor_Stop	equ	__end_of_Motor_Stop-_Motor_Stop
	
_Motor_Stop:	
	opt	stack 0
; Regs used in _Motor_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	190
	
l17667:	
;ms83fxx02_motor.c: 190: TRISC |= (0x03 << 4);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(135)^080h,f	;volatile
	line	192
	
l17669:	
;ms83fxx02_motor.c: 192: TMR2ON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(146/8),(146)&7
	line	196
	
l17671:	
;ms83fxx02_motor.c: 196: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000004), Bit_RESET);
	movlw	(04h)
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	197
	
l17673:	
;ms83fxx02_motor.c: 197: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000008), Bit_RESET);
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Motor_Stop+0)+0
	movf	(??_Motor_Stop+0)+0,w
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	198
	
l17675:	
;ms83fxx02_motor.c: 198: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), Bit_RESET);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_GPIO_WriteBit)
	bsf	status,0
	rlf	(?_GPIO_WriteBit),f
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	199
	
l8853:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_Stop
	__end_of_Motor_Stop:
;; =============== function _Motor_Stop ends ============

	signat	_Motor_Stop,88
	global	_KEY_DeInit
psect	text1795,local,class=CODE,delta=2
global __ptext1795
__ptext1795:

;; *************** function _KEY_DeInit *****************
;; Defined at:
;;		line 59 in file "MS83FXX02_KEY.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  GPIO_InitStr    2    8[BANK0 ] struct .
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_GPIO_Init
;; This function is called by:
;;		_main
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1795
	file	"MS83FXX02_KEY.C"
	line	59
	global	__size_of_KEY_DeInit
	__size_of_KEY_DeInit	equ	__end_of_KEY_DeInit-_KEY_DeInit
	
_KEY_DeInit:	
	opt	stack 0
; Regs used in _KEY_DeInit: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	61
	
l17651:	
;MS83FXX02_KEY.C: 60: GPIO_InitTypeDef GPIO_InitStruct;
;MS83FXX02_KEY.C: 61: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(KEY_DeInit@GPIO_InitStruct)+01h
	line	62
	
l17653:	
;MS83FXX02_KEY.C: 62: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000002);
	movlw	(02h)
	movwf	(??_KEY_DeInit+0)+0
	movf	(??_KEY_DeInit+0)+0,w
	movwf	(KEY_DeInit@GPIO_InitStruct)
	line	63
	
l17655:	
;MS83FXX02_KEY.C: 63: GPIO_Init(GPIOC, &GPIO_InitStruct);
	movlw	(KEY_DeInit@GPIO_InitStruct)&0ffh
	movwf	(??_KEY_DeInit+0)+0
	movf	(??_KEY_DeInit+0)+0,w
	movwf	(?_GPIO_Init)
	movlw	(01h)
	fcall	_GPIO_Init
	line	65
	
l17657:	
;MS83FXX02_KEY.C: 65: INTE = 0;
	bcf	(92/8),(92)&7
	line	66
	
l17659:	
;MS83FXX02_KEY.C: 66: key_status = 1;
	clrf	(_key_status)	;volatile
	bsf	status,0
	rlf	(_key_status),f	;volatile
	line	67
	
l17661:	
;MS83FXX02_KEY.C: 67: key_press = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_key_press)	;volatile
	line	68
	
l17663:	
;MS83FXX02_KEY.C: 68: key_release = 0;
	clrf	(_key_release)	;volatile
	line	69
	
l17665:	
;MS83FXX02_KEY.C: 69: key_press_flag = 0;
	clrf	(_key_press_flag)	;volatile
	line	70
	
l5520:	
	return
	opt stack 0
GLOBAL	__end_of_KEY_DeInit
	__end_of_KEY_DeInit:
;; =============== function _KEY_DeInit ends ============

	signat	_KEY_DeInit,88
	global	_LED_VoltageChargeOutput
psect	text1796,local,class=CODE,delta=2
global __ptext1796
__ptext1796:

;; *************** function _LED_VoltageChargeOutput *****************
;; Defined at:
;;		line 80 in file "ms83fxx02_led.c"
;; Parameters:    Size  Location     Type
;;  BitVal          1    wreg     enum E1499
;; Auto vars:     Size  Location     Type
;;  BitVal          1   10[BANK0 ] enum E1499
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_GPIO_WriteBit
;; This function is called by:
;;		_charge_control
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1796
	file	"ms83fxx02_led.c"
	line	80
	global	__size_of_LED_VoltageChargeOutput
	__size_of_LED_VoltageChargeOutput	equ	__end_of_LED_VoltageChargeOutput-_LED_VoltageChargeOutput
	
_LED_VoltageChargeOutput:	
	opt	stack 1
; Regs used in _LED_VoltageChargeOutput: [wreg+status,2+status,0+pclath+cstack]
;LED_VoltageChargeOutput@BitVal stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LED_VoltageChargeOutput@BitVal)
	line	81
	
l17649:	
;ms83fxx02_led.c: 81: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000040), BitVal);
	movlw	(040h)
	movwf	(??_LED_VoltageChargeOutput+0)+0
	movf	(??_LED_VoltageChargeOutput+0)+0,w
	movwf	(?_GPIO_WriteBit)
	movf	(LED_VoltageChargeOutput@BitVal),w
	movwf	(??_LED_VoltageChargeOutput+1)+0
	movf	(??_LED_VoltageChargeOutput+1)+0,w
	movwf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	82
	
l6622:	
	return
	opt stack 0
GLOBAL	__end_of_LED_VoltageChargeOutput
	__end_of_LED_VoltageChargeOutput:
;; =============== function _LED_VoltageChargeOutput ends ============

	signat	_LED_VoltageChargeOutput,4216
	global	_EEPROM_Init
psect	text1797,local,class=CODE,delta=2
global __ptext1797
__ptext1797:

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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_EEPROM_Write
;; This function is called by:
;;		_Driver_Init
;; This function uses a non-reentrant model
;;
psect	text1797
	file	"ms83fxx02_eeprom.c"
	line	23
	global	__size_of_EEPROM_Init
	__size_of_EEPROM_Init	equ	__end_of_EEPROM_Init-_EEPROM_Init
	
_EEPROM_Init:	
	opt	stack 1
; Regs used in _EEPROM_Init: [wreg+status,2+status,0+pclath+cstack]
	line	24
	
l17647:	
;ms83fxx02_eeprom.c: 24: EEPROM_Write(0x55, 0xAA);
	movlw	(0AAh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_EEPROM_Init+0)+0
	movf	(??_EEPROM_Init+0)+0,w
	movwf	(?_EEPROM_Write)
	movlw	(055h)
	fcall	_EEPROM_Write
	line	25
;ms83fxx02_eeprom.c: 25: EEPROM_Write(0x55, 0xAA);
	movlw	(0AAh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_EEPROM_Init+0)+0
	movf	(??_EEPROM_Init+0)+0,w
	movwf	(?_EEPROM_Write)
	movlw	(055h)
	fcall	_EEPROM_Write
	line	26
	
l3332:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_Init
	__end_of_EEPROM_Init:
;; =============== function _EEPROM_Init ends ============

	signat	_EEPROM_Init,88
	global	_KEY_Init
psect	text1798,local,class=CODE,delta=2
global __ptext1798
__ptext1798:

;; *************** function _KEY_Init *****************
;; Defined at:
;;		line 73 in file "MS83FXX02_KEY.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  GPIO_InitStr    2    9[BANK0 ] struct .
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_GPIO_Init
;;		_GPIO_INTConfig
;; This function is called by:
;;		_Driver_Init
;; This function uses a non-reentrant model
;;
psect	text1798
	file	"MS83FXX02_KEY.C"
	line	73
	global	__size_of_KEY_Init
	__size_of_KEY_Init	equ	__end_of_KEY_Init-_KEY_Init
	
_KEY_Init:	
	opt	stack 1
; Regs used in _KEY_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	75
	
l17637:	
;MS83FXX02_KEY.C: 74: GPIO_InitTypeDef GPIO_InitStruct;
;MS83FXX02_KEY.C: 75: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(KEY_Init@GPIO_InitStruct)+01h
	line	76
	
l17639:	
;MS83FXX02_KEY.C: 76: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000002);
	movlw	(02h)
	movwf	(??_KEY_Init+0)+0
	movf	(??_KEY_Init+0)+0,w
	movwf	(KEY_Init@GPIO_InitStruct)
	line	77
	
l17641:	
;MS83FXX02_KEY.C: 77: GPIO_Init(GPIOC, &GPIO_InitStruct);
	movlw	(KEY_Init@GPIO_InitStruct)&0ffh
	movwf	(??_KEY_Init+0)+0
	movf	(??_KEY_Init+0)+0,w
	movwf	(?_GPIO_Init)
	movlw	(01h)
	fcall	_GPIO_Init
	line	80
	
l17643:	
;MS83FXX02_KEY.C: 80: INTEDG = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1038/8)^080h,(1038)&7
	line	81
	
l17645:	
;MS83FXX02_KEY.C: 81: GPIO_INTConfig(GPIOC, ((uint8_t)0x00000002), ENABLE);
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_KEY_Init+0)+0
	movf	(??_KEY_Init+0)+0,w
	movwf	(?_GPIO_INTConfig)
	clrf	0+(?_GPIO_INTConfig)+01h
	bsf	status,0
	rlf	0+(?_GPIO_INTConfig)+01h,f
	movlw	(01h)
	fcall	_GPIO_INTConfig
	line	82
	
l5523:	
	return
	opt stack 0
GLOBAL	__end_of_KEY_Init
	__end_of_KEY_Init:
;; =============== function _KEY_Init ends ============

	signat	_KEY_Init,88
	global	_LED_Init
psect	text1799,local,class=CODE,delta=2
global __ptext1799
__ptext1799:

;; *************** function _LED_Init *****************
;; Defined at:
;;		line 24 in file "ms83fxx02_led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  GPIO_InitStr    2    9[BANK0 ] struct .
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_GPIO_Init
;;		_GPIO_WriteBit
;; This function is called by:
;;		_Driver_Init
;;		_main
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1799
	file	"ms83fxx02_led.c"
	line	24
	global	__size_of_LED_Init
	__size_of_LED_Init	equ	__end_of_LED_Init-_LED_Init
	
_LED_Init:	
	opt	stack 0
; Regs used in _LED_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	27
	
l17609:	
;ms83fxx02_led.c: 25: GPIO_InitTypeDef GPIO_InitStruct;
;ms83fxx02_led.c: 27: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(LED_Init@GPIO_InitStruct)+01h
	bsf	status,0
	rlf	0+(LED_Init@GPIO_InitStruct)+01h,f
	line	28
	
l17611:	
;ms83fxx02_led.c: 28: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000004);
	movlw	(04h)
	movwf	(??_LED_Init+0)+0
	movf	(??_LED_Init+0)+0,w
	movwf	(LED_Init@GPIO_InitStruct)
	line	29
	
l17613:	
;ms83fxx02_led.c: 29: GPIO_Init(GPIOA, &GPIO_InitStruct);
	movlw	(LED_Init@GPIO_InitStruct)&0ffh
	movwf	(??_LED_Init+0)+0
	movf	(??_LED_Init+0)+0,w
	movwf	(?_GPIO_Init)
	movlw	(0)
	fcall	_GPIO_Init
	line	31
	
l17615:	
;ms83fxx02_led.c: 31: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(LED_Init@GPIO_InitStruct)+01h
	bsf	status,0
	rlf	0+(LED_Init@GPIO_InitStruct)+01h,f
	line	32
	
l17617:	
;ms83fxx02_led.c: 32: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000008);
	movlw	(08h)
	movwf	(??_LED_Init+0)+0
	movf	(??_LED_Init+0)+0,w
	movwf	(LED_Init@GPIO_InitStruct)
	line	33
;ms83fxx02_led.c: 33: GPIO_Init(GPIOA, &GPIO_InitStruct);
	movlw	(LED_Init@GPIO_InitStruct)&0ffh
	movwf	(??_LED_Init+0)+0
	movf	(??_LED_Init+0)+0,w
	movwf	(?_GPIO_Init)
	movlw	(0)
	fcall	_GPIO_Init
	line	35
	
l17619:	
;ms83fxx02_led.c: 35: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(LED_Init@GPIO_InitStruct)+01h
	bsf	status,0
	rlf	0+(LED_Init@GPIO_InitStruct)+01h,f
	line	36
	
l17621:	
;ms83fxx02_led.c: 36: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000001);
	clrf	(LED_Init@GPIO_InitStruct)
	bsf	status,0
	rlf	(LED_Init@GPIO_InitStruct),f
	line	37
;ms83fxx02_led.c: 37: GPIO_Init(GPIOC, &GPIO_InitStruct);
	movlw	(LED_Init@GPIO_InitStruct)&0ffh
	movwf	(??_LED_Init+0)+0
	movf	(??_LED_Init+0)+0,w
	movwf	(?_GPIO_Init)
	movlw	(01h)
	fcall	_GPIO_Init
	line	43
	
l17623:	
;ms83fxx02_led.c: 43: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(LED_Init@GPIO_InitStruct)+01h
	bsf	status,0
	rlf	0+(LED_Init@GPIO_InitStruct)+01h,f
	line	44
	
l17625:	
;ms83fxx02_led.c: 44: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000040);
	movlw	(040h)
	movwf	(??_LED_Init+0)+0
	movf	(??_LED_Init+0)+0,w
	movwf	(LED_Init@GPIO_InitStruct)
	line	45
	
l17627:	
;ms83fxx02_led.c: 45: GPIO_Init(GPIOA, &GPIO_InitStruct);
	movlw	(LED_Init@GPIO_InitStruct)&0ffh
	movwf	(??_LED_Init+0)+0
	movf	(??_LED_Init+0)+0,w
	movwf	(?_GPIO_Init)
	movlw	(0)
	fcall	_GPIO_Init
	line	47
	
l17629:	
;ms83fxx02_led.c: 47: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000004), Bit_RESET);
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LED_Init+0)+0
	movf	(??_LED_Init+0)+0,w
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	48
	
l17631:	
;ms83fxx02_led.c: 48: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000008), Bit_RESET);
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LED_Init+0)+0
	movf	(??_LED_Init+0)+0,w
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	49
	
l17633:	
;ms83fxx02_led.c: 49: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), Bit_RESET);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_GPIO_WriteBit)
	bsf	status,0
	rlf	(?_GPIO_WriteBit),f
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	52
	
l17635:	
;ms83fxx02_led.c: 52: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000040), Bit_RESET);
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LED_Init+0)+0
	movf	(??_LED_Init+0)+0,w
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	53
	
l6613:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Init
	__end_of_LED_Init:
;; =============== function _LED_Init ends ============

	signat	_LED_Init,88
	global	___ftge
psect	text1800,local,class=CODE,delta=2
global __ptext1800
__ptext1800:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3   12[BANK0 ] float 
;;  ff2             3   15[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       6       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       6       0       0
;;      Totals:         0      12       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1800
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 1
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l17389:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___ftge@ff1+2),(23)&7
	goto	u4871
	goto	u4870
u4871:
	goto	l17393
u4870:
	line	7
	
l17391:	
	movlw	0
	movwf	((??___ftge+0)+0)
	movlw	0
	movwf	((??___ftge+0)+0+1)
	movlw	080h
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u4881
	goto	u4882
u4881:
	addwf	(??___ftge+0)+1,f
	
u4882:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u4883
	goto	u4884
u4883:
	addwf	(??___ftge+0)+2,f
	
u4884:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l17393
	
l14170:	
	line	8
	
l17393:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u4891
	goto	u4890
u4891:
	goto	l17397
u4890:
	line	9
	
l17395:	
	movlw	0
	movwf	((??___ftge+0)+0)
	movlw	0
	movwf	((??___ftge+0)+0+1)
	movlw	080h
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u4901
	goto	u4902
u4901:
	addwf	(??___ftge+0)+1,f
	
u4902:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u4903
	goto	u4904
u4903:
	addwf	(??___ftge+0)+2,f
	
u4904:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l17397
	
l14171:	
	line	10
	
l17397:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l17399:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l17401:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u4915
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u4915
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u4915:
	skipnc
	goto	u4911
	goto	u4910
u4911:
	goto	l17405
u4910:
	
l17403:	
	clrc
	
	goto	l14172
	
l16585:	
	
l17405:	
	setc
	
	goto	l14172
	
l16587:	
	goto	l14172
	
l17407:	
	line	13
	
l14172:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftpack
psect	text1801,local,class=CODE,delta=2
global __ptext1801
__ptext1801:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    4[BANK0 ] unsigned um
;;  exp             1    7[BANK0 ] unsigned char 
;;  sign            1    8[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    4[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       5       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___lwtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lbtoft
;;		___abtoft
;;		___awtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text1801
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 0
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l17249:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u4520
	goto	l17253
u4520:
	
l17251:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u4531
	goto	u4530
u4531:
	goto	l17259
u4530:
	goto	l17253
	
l14337:	
	line	65
	
l17253:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l14338
	
l17255:	
	goto	l14338
	
l14335:	
	line	66
	goto	l17259
	
l14340:	
	line	67
	
l17257:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u4545:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u4545

	goto	l17259
	line	69
	
l14339:	
	line	66
	
l17259:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4551
	goto	u4550
u4551:
	goto	l17257
u4550:
	goto	l14342
	
l14341:	
	line	70
	goto	l14342
	
l14343:	
	line	71
	
l17261:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l17263:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l17265:	
	movlw	01h
u4565:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u4565

	line	74
	
l14342:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4571
	goto	u4570
u4571:
	goto	l17261
u4570:
	goto	l17269
	
l14344:	
	line	75
	goto	l17269
	
l14346:	
	line	76
	
l17267:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u4585:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u4585
	goto	l17269
	line	78
	
l14345:	
	line	75
	
l17269:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u4591
	goto	u4590
u4591:
	goto	l17267
u4590:
	
l14347:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u4601
	goto	u4600
u4601:
	goto	l14348
u4600:
	line	80
	
l17271:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l14348:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l17273:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u4615:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u4610:
	addlw	-1
	skipz
	goto	u4615
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l17275:	
	movf	(___ftpack@sign),w
	skipz
	goto	u4620
	goto	l14349
u4620:
	line	84
	
l17277:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l14349:	
	line	85
	line	86
	
l14338:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	_SleepLed_Init
psect	text1802,local,class=CODE,delta=2
global __ptext1802
__ptext1802:

;; *************** function _SleepLed_Init *****************
;; Defined at:
;;		line 55 in file "ms83fxx02_sleepled.c"
;; Parameters:    Size  Location     Type
;;  duty            2    4[BANK0 ] unsigned short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SleepLedTimer_Init
;; This function uses a non-reentrant model
;;
psect	text1802
	file	"ms83fxx02_sleepled.c"
	line	55
	global	__size_of_SleepLed_Init
	__size_of_SleepLed_Init	equ	__end_of_SleepLed_Init-_SleepLed_Init
	
_SleepLed_Init:	
	opt	stack 2
; Regs used in _SleepLed_Init: [wreg+status,2]
	line	57
	
l17151:	
;ms83fxx02_sleepled.c: 57: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	60
	
l17153:	
;ms83fxx02_sleepled.c: 60: PWM4CR0 = 0b11100010;
	movlw	(0E2h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(277)^0100h	;volatile
	line	63
;ms83fxx02_sleepled.c: 63: PWM4CR1 = 0b10000000;
	movlw	(080h)
	movwf	(278)^0100h	;volatile
	line	66
;ms83fxx02_sleepled.c: 66: T4CKDIV = 77;
	movlw	(04Dh)
	movwf	(279)^0100h	;volatile
	line	68
	
l17155:	
;ms83fxx02_sleepled.c: 68: TMR4H = (duty >> 8) & 0xFF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SleepLed_Init@duty+1),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(275)^0100h	;volatile
	line	69
;ms83fxx02_sleepled.c: 69: TMR4L = 0;
	clrf	(274)^0100h	;volatile
	line	70
	
l17157:	
;ms83fxx02_sleepled.c: 70: PR4L = duty & 0xFF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SleepLed_Init@duty),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(276)^0100h	;volatile
	line	81
	
l17159:	
;ms83fxx02_sleepled.c: 81: TMR4IF = 0;
	bcf	(2224/8)^0100h,(2224)&7
	line	84
	
l17161:	
;ms83fxx02_sleepled.c: 84: TMR4ON = 1;
	bsf	(2226/8)^0100h,(2226)&7
	line	86
;ms83fxx02_sleepled.c: 86: while(TMR4IF == 0);
	goto	l13306
	
l13307:	
	
l13306:	
	btfss	(2224/8)^0100h,(2224)&7
	goto	u4241
	goto	u4240
u4241:
	goto	l13306
u4240:
	
l13308:	
	line	87
;ms83fxx02_sleepled.c: 87: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	line	88
	
l13309:	
	return
	opt stack 0
GLOBAL	__end_of_SleepLed_Init
	__end_of_SleepLed_Init:
;; =============== function _SleepLed_Init ends ============

	signat	_SleepLed_Init,4216
	global	_Battery_HandleData
psect	text1803,local,class=CODE,delta=2
global __ptext1803
__ptext1803:

;; *************** function _Battery_HandleData *****************
;; Defined at:
;;		line 194 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp1           2   14[BANK0 ] unsigned short 
;;  average_data    2   12[BANK0 ] unsigned int 
;;  temp2           2   10[BANK0 ] unsigned short 
;;  i               1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       7       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0      13       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1803
	file	"ms83fxx02_pwr.c"
	line	194
	global	__size_of_Battery_HandleData
	__size_of_Battery_HandleData	equ	__end_of_Battery_HandleData-_Battery_HandleData
	
_Battery_HandleData:	
	opt	stack 1
; Regs used in _Battery_HandleData: [wreg-fsr0h+status,2+status,0]
	line	195
	
l17121:	
;ms83fxx02_pwr.c: 195: uint8_t i = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Battery_HandleData@i)
	line	196
	
l17123:	
;ms83fxx02_pwr.c: 196: uint32_t average_data = 0;
	clrf	(Battery_HandleData@average_data)
	clrf	(Battery_HandleData@average_data+1)
	line	197
	
l17125:	
;ms83fxx02_pwr.c: 197: uint16_t temp1 = battery_value[0];
	movf	(_battery_value+1),w	;volatile
	clrf	(Battery_HandleData@temp1+1)
	addwf	(Battery_HandleData@temp1+1)
	movf	(_battery_value),w	;volatile
	clrf	(Battery_HandleData@temp1)
	addwf	(Battery_HandleData@temp1)

	line	198
	
l17127:	
;ms83fxx02_pwr.c: 198: uint16_t temp2 = battery_value[0];
	movf	(_battery_value+1),w	;volatile
	clrf	(Battery_HandleData@temp2+1)
	addwf	(Battery_HandleData@temp2+1)
	movf	(_battery_value),w	;volatile
	clrf	(Battery_HandleData@temp2)
	addwf	(Battery_HandleData@temp2)

	line	200
	
l17129:	
;ms83fxx02_pwr.c: 200: for(i=0; i<10; i++)
	clrf	(Battery_HandleData@i)
	
l17131:	
	movlw	(0Ah)
	subwf	(Battery_HandleData@i),w
	skipc
	goto	u4201
	goto	u4200
u4201:
	goto	l17135
u4200:
	goto	l17145
	
l17133:	
	goto	l17145
	line	201
	
l10052:	
	line	202
	
l17135:	
;ms83fxx02_pwr.c: 201: {
;ms83fxx02_pwr.c: 202: if(temp1 > battery_value[i])
	movf	(Battery_HandleData@i),w
	movwf	(??_Battery_HandleData+0)+0
	addwf	(??_Battery_HandleData+0)+0,w
	addlw	_battery_value&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_Battery_HandleData+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_Battery_HandleData+1)+0+1
	movf	(Battery_HandleData@temp1+1),w
	subwf	1+(??_Battery_HandleData+1)+0,w
	skipz
	goto	u4215
	movf	(Battery_HandleData@temp1),w
	subwf	0+(??_Battery_HandleData+1)+0,w
u4215:
	skipnc
	goto	u4211
	goto	u4210
u4211:
	goto	l17141
u4210:
	line	204
	
l17137:	
;ms83fxx02_pwr.c: 203: {
;ms83fxx02_pwr.c: 204: temp2 = temp1;
	movf	(Battery_HandleData@temp1+1),w
	clrf	(Battery_HandleData@temp2+1)
	addwf	(Battery_HandleData@temp2+1)
	movf	(Battery_HandleData@temp1),w
	clrf	(Battery_HandleData@temp2)
	addwf	(Battery_HandleData@temp2)

	line	205
	
l17139:	
;ms83fxx02_pwr.c: 205: temp1 = battery_value[i];
	movf	(Battery_HandleData@i),w
	movwf	(??_Battery_HandleData+0)+0
	addwf	(??_Battery_HandleData+0)+0,w
	addlw	_battery_value&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(Battery_HandleData@temp1)
	incf	fsr0,f
	movf	indf,w
	movwf	(Battery_HandleData@temp1+1)
	goto	l17141
	line	206
	
l10054:	
	line	207
	
l17141:	
;ms83fxx02_pwr.c: 206: }
;ms83fxx02_pwr.c: 207: average_data += battery_value[i];
	movf	(Battery_HandleData@i),w
	movwf	(??_Battery_HandleData+0)+0
	addwf	(??_Battery_HandleData+0)+0,w
	addlw	_battery_value&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_Battery_HandleData+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_Battery_HandleData+1)+0+1
	movf	0+(??_Battery_HandleData+1)+0,w
	addwf	(Battery_HandleData@average_data),f
	skipnc
	incf	(Battery_HandleData@average_data+1),f
	movf	1+(??_Battery_HandleData+1)+0,w
	addwf	(Battery_HandleData@average_data+1),f
	line	200
	movlw	(01h)
	movwf	(??_Battery_HandleData+0)+0
	movf	(??_Battery_HandleData+0)+0,w
	addwf	(Battery_HandleData@i),f
	
l17143:	
	movlw	(0Ah)
	subwf	(Battery_HandleData@i),w
	skipc
	goto	u4221
	goto	u4220
u4221:
	goto	l17135
u4220:
	goto	l17145
	
l10053:	
	line	210
	
l17145:	
;ms83fxx02_pwr.c: 208: }
;ms83fxx02_pwr.c: 210: average_data = (average_data - temp1 - temp2) / (10 - 2);
	movf	(Battery_HandleData@temp2),w
	addwf	(Battery_HandleData@temp1),w
	movwf	(??_Battery_HandleData+0)+0
	movf	(Battery_HandleData@temp2+1),w
	skipnc
	incf	(Battery_HandleData@temp2+1),w
	addwf	(Battery_HandleData@temp1+1),w
	movwf	1+(??_Battery_HandleData+0)+0
	comf	(??_Battery_HandleData+0)+0,f
	comf	(??_Battery_HandleData+0)+1,f
	incf	(??_Battery_HandleData+0)+0,f
	skipnz
	incf	(??_Battery_HandleData+0)+1,f
	movf	(Battery_HandleData@average_data),w
	addwf	0+(??_Battery_HandleData+0)+0,w
	movwf	(??_Battery_HandleData+2)+0
	movf	(Battery_HandleData@average_data+1),w
	skipnc
	incf	(Battery_HandleData@average_data+1),w
	addwf	1+(??_Battery_HandleData+0)+0,w
	movwf	1+(??_Battery_HandleData+2)+0
	movlw	03h
u4235:
	clrc
	rrf	(??_Battery_HandleData+2)+1,f
	rrf	(??_Battery_HandleData+2)+0,f
	addlw	-1
	skipz
	goto	u4235
	movf	0+(??_Battery_HandleData+2)+0,w
	movwf	(Battery_HandleData@average_data)
	movf	1+(??_Battery_HandleData+2)+0,w
	movwf	(Battery_HandleData@average_data+1)
	line	212
;ms83fxx02_pwr.c: 212: return average_data;
	movf	(Battery_HandleData@average_data+1),w
	clrf	(?_Battery_HandleData+1)
	addwf	(?_Battery_HandleData+1)
	movf	(Battery_HandleData@average_data),w
	clrf	(?_Battery_HandleData)
	addwf	(?_Battery_HandleData)

	goto	l10055
	
l17147:	
	line	213
	
l10055:	
	return
	opt stack 0
GLOBAL	__end_of_Battery_HandleData
	__end_of_Battery_HandleData:
;; =============== function _Battery_HandleData ends ============

	signat	_Battery_HandleData,90
	global	_SwitchModeTimer_GetINTStatus
psect	text1804,local,class=CODE,delta=2
global __ptext1804
__ptext1804:

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
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1804
	file	"ms83fxx02_tim.c"
	line	100
	global	__size_of_SwitchModeTimer_GetINTStatus
	__size_of_SwitchModeTimer_GetINTStatus	equ	__end_of_SwitchModeTimer_GetINTStatus-_SwitchModeTimer_GetINTStatus
	
_SwitchModeTimer_GetINTStatus:	
	opt	stack 2
; Regs used in _SwitchModeTimer_GetINTStatus: [wreg]
	line	101
	
l17089:	
;ms83fxx02_tim.c: 101: if(switch_mode_time_out)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_switch_mode_time_out),w	;volatile
	skipz
	goto	u4190
	goto	l17099
u4190:
	line	103
	
l17091:	
;ms83fxx02_tim.c: 102: {
;ms83fxx02_tim.c: 103: switch_mode_time_out = 0;
	clrf	(_switch_mode_time_out)	;volatile
	line	105
	
l17093:	
;ms83fxx02_tim.c: 105: return SET;
	movlw	(01h)
	goto	l11148
	
l17095:	
	goto	l11148
	line	106
	
l17097:	
;ms83fxx02_tim.c: 106: }
	goto	l11148
	line	107
	
l11147:	
	line	109
	
l17099:	
;ms83fxx02_tim.c: 107: else
;ms83fxx02_tim.c: 108: {
;ms83fxx02_tim.c: 109: return RESET;
	movlw	(0)
	goto	l11148
	
l17101:	
	goto	l11148
	line	110
	
l11149:	
	line	111
	
l11148:	
	return
	opt stack 0
GLOBAL	__end_of_SwitchModeTimer_GetINTStatus
	__end_of_SwitchModeTimer_GetINTStatus:
;; =============== function _SwitchModeTimer_GetINTStatus ends ============

	signat	_SwitchModeTimer_GetINTStatus,89
	global	_MotorOperationTimer_Init
psect	text1805,local,class=CODE,delta=2
global __ptext1805
__ptext1805:

;; *************** function _MotorOperationTimer_Init *****************
;; Defined at:
;;		line 221 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  time            1    wreg     enum E1558
;; Auto vars:     Size  Location     Type
;;  time            1    4[BANK0 ] enum E1558
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1805
	file	"ms83fxx02_motor.c"
	line	221
	global	__size_of_MotorOperationTimer_Init
	__size_of_MotorOperationTimer_Init	equ	__end_of_MotorOperationTimer_Init-_MotorOperationTimer_Init
	
_MotorOperationTimer_Init:	
	opt	stack 2
; Regs used in _MotorOperationTimer_Init: [wreg+status,2]
;MotorOperationTimer_Init@time stored from wreg
	line	223
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(MotorOperationTimer_Init@time)
	
l17063:	
;ms83fxx02_motor.c: 223: TMR4ON = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2226/8)^0100h,(2226)&7
	line	225
	
l17065:	
;ms83fxx02_motor.c: 225: if(time == MotorOperationTimer_30s)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(MotorOperationTimer_Init@time),w
	xorlw	01h
	skipz
	goto	u4171
	goto	u4170
u4171:
	goto	l17069
u4170:
	line	228
	
l17067:	
;ms83fxx02_motor.c: 226: {
;ms83fxx02_motor.c: 228: PWM4CR0 = 0b01110010;
	movlw	(072h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(277)^0100h	;volatile
	line	231
;ms83fxx02_motor.c: 231: PWM4CR1 = 0b00111000;
	movlw	(038h)
	movwf	(278)^0100h	;volatile
	line	236
;ms83fxx02_motor.c: 236: T4CKDIV = 182;
	movlw	(0B6h)
	movwf	(279)^0100h	;volatile
	line	237
;ms83fxx02_motor.c: 237: }
	goto	l8861
	line	238
	
l8860:	
	
l17069:	
;ms83fxx02_motor.c: 238: else if(time == MotorOperationTimer_0_3s)
	bcf	status, 6	;RP1=0, select bank0
	movf	(MotorOperationTimer_Init@time),w
	xorlw	02h
	skipz
	goto	u4181
	goto	u4180
u4181:
	goto	l17073
u4180:
	line	241
	
l17071:	
;ms83fxx02_motor.c: 239: {
;ms83fxx02_motor.c: 241: PWM4CR0 = 0b01100010;
	movlw	(062h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(277)^0100h	;volatile
	line	243
;ms83fxx02_motor.c: 243: PWM4CR1 = 0b00111000;
	movlw	(038h)
	movwf	(278)^0100h	;volatile
	line	247
;ms83fxx02_motor.c: 247: T4CKDIV = 8;
	movlw	(08h)
	movwf	(279)^0100h	;volatile
	line	248
;ms83fxx02_motor.c: 248: }
	goto	l8861
	line	249
	
l8862:	
	line	252
	
l17073:	
;ms83fxx02_motor.c: 249: else
;ms83fxx02_motor.c: 250: {
;ms83fxx02_motor.c: 252: PWM4CR0 = 0b01110010;
	movlw	(072h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(277)^0100h	;volatile
	line	255
;ms83fxx02_motor.c: 255: PWM4CR1 = 0b00111000;
	movlw	(038h)
	movwf	(278)^0100h	;volatile
	line	258
;ms83fxx02_motor.c: 258: T4CKDIV = 243;
	movlw	(0F3h)
	movwf	(279)^0100h	;volatile
	goto	l8861
	line	259
	
l8863:	
	
l8861:	
	line	261
;ms83fxx02_motor.c: 259: }
;ms83fxx02_motor.c: 261: TMR4H = 0x0F;
	movlw	(0Fh)
	movwf	(275)^0100h	;volatile
	line	262
	
l17075:	
;ms83fxx02_motor.c: 262: TMR4L = 0;
	clrf	(274)^0100h	;volatile
	line	263
	
l17077:	
;ms83fxx02_motor.c: 263: PR4L = 0xFF;
	movlw	(0FFh)
	movwf	(276)^0100h	;volatile
	line	266
	
l17079:	
;ms83fxx02_motor.c: 266: TMR4IF = 0;
	bcf	(2224/8)^0100h,(2224)&7
	line	269
	
l17081:	
;ms83fxx02_motor.c: 269: TMR4ON = 1;
	bsf	(2226/8)^0100h,(2226)&7
	line	272
	
l17083:	
;ms83fxx02_motor.c: 272: TMR4IE = 1;
	bsf	(2225/8)^0100h,(2225)&7
	line	273
	
l17085:	
;ms83fxx02_motor.c: 273: PEIE = 1;
	bsf	(94/8),(94)&7
	line	274
	
l17087:	
;ms83fxx02_motor.c: 274: GIE = 1;
	bsf	(95/8),(95)&7
	line	275
	
l8864:	
	return
	opt stack 0
GLOBAL	__end_of_MotorOperationTimer_Init
	__end_of_MotorOperationTimer_Init:
;; =============== function _MotorOperationTimer_Init ends ============

	signat	_MotorOperationTimer_Init,4216
	global	_Motor_CheckRunLimit
psect	text1806,local,class=CODE,delta=2
global __ptext1806
__ptext1806:

;; *************** function _Motor_CheckRunLimit *****************
;; Defined at:
;;		line 202 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MotorOperationTimer_Stop
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1806
	file	"ms83fxx02_motor.c"
	line	202
	global	__size_of_Motor_CheckRunLimit
	__size_of_Motor_CheckRunLimit	equ	__end_of_Motor_CheckRunLimit-_Motor_CheckRunLimit
	
_Motor_CheckRunLimit:	
	opt	stack 0
; Regs used in _Motor_CheckRunLimit: [wreg]
	line	206
	
l17053:	
;ms83fxx02_motor.c: 206: if(motor_oper_record >= 120)
	movlw	high(078h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_motor_oper_record+1),w	;volatile
	movlw	low(078h)
	skipnz
	subwf	(_motor_oper_record),w	;volatile
	skipc
	goto	u4161
	goto	u4160
u4161:
	goto	l17059
u4160:
	line	208
	
l17055:	
;ms83fxx02_motor.c: 207: {
;ms83fxx02_motor.c: 208: return 1;
	movlw	(01h)
	goto	l8857
	
l17057:	
	goto	l8857
	line	209
	
l8856:	
	line	210
	
l17059:	
;ms83fxx02_motor.c: 209: }
;ms83fxx02_motor.c: 210: return 0;
	movlw	(0)
	goto	l8857
	
l17061:	
	line	211
	
l8857:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_CheckRunLimit
	__end_of_Motor_CheckRunLimit:
;; =============== function _Motor_CheckRunLimit ends ============

	signat	_Motor_CheckRunLimit,89
	global	_SwitchModeTimer_INTConfig
psect	text1807,local,class=CODE,delta=2
global __ptext1807
__ptext1807:

;; *************** function _SwitchModeTimer_INTConfig *****************
;; Defined at:
;;		line 79 in file "ms83fxx02_tim.c"
;; Parameters:    Size  Location     Type
;;  NewState        1    wreg     enum E1482
;; Auto vars:     Size  Location     Type
;;  NewState        1    4[BANK0 ] enum E1482
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_Start
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1807
	file	"ms83fxx02_tim.c"
	line	79
	global	__size_of_SwitchModeTimer_INTConfig
	__size_of_SwitchModeTimer_INTConfig	equ	__end_of_SwitchModeTimer_INTConfig-_SwitchModeTimer_INTConfig
	
_SwitchModeTimer_INTConfig:	
	opt	stack 2
; Regs used in _SwitchModeTimer_INTConfig: [wreg]
;SwitchModeTimer_INTConfig@NewState stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SwitchModeTimer_INTConfig@NewState)
	line	80
	
l17049:	
;ms83fxx02_tim.c: 80: if(NewState != DISABLE)
	movf	(SwitchModeTimer_INTConfig@NewState),w
	skipz
	goto	u4150
	goto	l11142
u4150:
	line	83
	
l17051:	
;ms83fxx02_tim.c: 81: {
;ms83fxx02_tim.c: 83: TMR5IE = 1;
	bcf	status, 5	;RP0=0, select bank2
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
	goto	l11144
	line	87
	
l11142:	
	line	90
;ms83fxx02_tim.c: 87: else
;ms83fxx02_tim.c: 88: {
;ms83fxx02_tim.c: 90: TMR5IE = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2273/8)^0100h,(2273)&7
	goto	l11144
	line	91
	
l11143:	
	line	92
	
l11144:	
	return
	opt stack 0
GLOBAL	__end_of_SwitchModeTimer_INTConfig
	__end_of_SwitchModeTimer_INTConfig:
;; =============== function _SwitchModeTimer_INTConfig ends ============

	signat	_SwitchModeTimer_INTConfig,4216
	global	_SwitchModeTimer_Cmd
psect	text1808,local,class=CODE,delta=2
global __ptext1808
__ptext1808:

;; *************** function _SwitchModeTimer_Cmd *****************
;; Defined at:
;;		line 39 in file "ms83fxx02_tim.c"
;; Parameters:    Size  Location     Type
;;  NewState        1    wreg     enum E1482
;; Auto vars:     Size  Location     Type
;;  NewState        1    4[BANK0 ] enum E1482
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_Start
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1808
	file	"ms83fxx02_tim.c"
	line	39
	global	__size_of_SwitchModeTimer_Cmd
	__size_of_SwitchModeTimer_Cmd	equ	__end_of_SwitchModeTimer_Cmd-_SwitchModeTimer_Cmd
	
_SwitchModeTimer_Cmd:	
	opt	stack 2
; Regs used in _SwitchModeTimer_Cmd: [wreg+status,2]
;SwitchModeTimer_Cmd@NewState stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SwitchModeTimer_Cmd@NewState)
	line	40
	
l17033:	
;ms83fxx02_tim.c: 40: switch_mode_time_out = 0;
	clrf	(_switch_mode_time_out)	;volatile
	line	42
	
l17035:	
;ms83fxx02_tim.c: 42: if(NewState != DISABLE)
	movf	(SwitchModeTimer_Cmd@NewState),w
	skipz
	goto	u4140
	goto	l11137
u4140:
	line	45
	
l17037:	
;ms83fxx02_tim.c: 43: {
;ms83fxx02_tim.c: 45: TMR5ON = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2274/8)^0100h,(2274)&7
	line	47
	
l17039:	
;ms83fxx02_tim.c: 47: PWM5CR0 = 0b01110010;
	movlw	(072h)
	movwf	(283)^0100h	;volatile
	line	50
;ms83fxx02_tim.c: 50: PWM5CR1 = 0b00111000;
	movlw	(038h)
	movwf	(284)^0100h	;volatile
	line	53
;ms83fxx02_tim.c: 53: T5CKDIV = 151;
	movlw	(097h)
	movwf	(285)^0100h	;volatile
	line	55
;ms83fxx02_tim.c: 55: TMR5H = 0x0F;
	movlw	(0Fh)
	movwf	(281)^0100h	;volatile
	line	56
	
l17041:	
;ms83fxx02_tim.c: 56: TMR5L = 0;
	clrf	(280)^0100h	;volatile
	line	57
	
l17043:	
;ms83fxx02_tim.c: 57: PR5L = 0xFF;
	movlw	(0FFh)
	movwf	(282)^0100h	;volatile
	line	60
	
l17045:	
;ms83fxx02_tim.c: 60: TMR5IF = 0;
	bcf	(2272/8)^0100h,(2272)&7
	line	63
	
l17047:	
;ms83fxx02_tim.c: 63: TMR5ON = 1;
	bsf	(2274/8)^0100h,(2274)&7
	line	64
;ms83fxx02_tim.c: 64: }
	goto	l11139
	line	65
	
l11137:	
	line	68
;ms83fxx02_tim.c: 65: else
;ms83fxx02_tim.c: 66: {
;ms83fxx02_tim.c: 68: TMR5ON = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2274/8)^0100h,(2274)&7
	goto	l11139
	line	69
	
l11138:	
	line	70
	
l11139:	
	return
	opt stack 0
GLOBAL	__end_of_SwitchModeTimer_Cmd
	__end_of_SwitchModeTimer_Cmd:
;; =============== function _SwitchModeTimer_Cmd ends ============

	signat	_SwitchModeTimer_Cmd,4216
	global	_Motor_Init
psect	text1809,local,class=CODE,delta=2
global __ptext1809
__ptext1809:

;; *************** function _Motor_Init *****************
;; Defined at:
;;		line 67 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     enum E1552
;; Auto vars:     Size  Location     Type
;;  status          1    5[BANK0 ] enum E1552
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_Start
;; This function uses a non-reentrant model
;;
psect	text1809
	file	"ms83fxx02_motor.c"
	line	67
	global	__size_of_Motor_Init
	__size_of_Motor_Init	equ	__end_of_Motor_Init-_Motor_Init
	
_Motor_Init:	
	opt	stack 1
; Regs used in _Motor_Init: [wreg+status,2+status,0]
;Motor_Init@status stored from wreg
	line	70
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Motor_Init@status)
	
l17003:	
;ms83fxx02_motor.c: 70: TRISC |= 0x03 << 4;
	movlw	(030h)
	movwf	(??_Motor_Init+0)+0
	movf	(??_Motor_Init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(135)^080h,f	;volatile
	line	73
;ms83fxx02_motor.c: 73: CMCON0 |= 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Motor_Init+0)+0
	movf	(??_Motor_Init+0)+0,w
	iorwf	(25),f	;volatile
	line	74
	
l17005:	
;ms83fxx02_motor.c: 74: T2CKSRC = 0;
	bcf	(221/8),(221)&7
	line	77
	
l17007:	
;ms83fxx02_motor.c: 77: TMR2 = 0;
	clrf	(17)	;volatile
	line	80
	
l17009:	
;ms83fxx02_motor.c: 80: T2CON = 0x03;
	movlw	(03h)
	movwf	(18)	;volatile
	line	82
	
l17011:	
;ms83fxx02_motor.c: 82: if(status == MOTOR_MODE_STOP)
	movf	(Motor_Init@status),w
	xorlw	01h
	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l17017
u4100:
	goto	l8827
	line	84
	
l17013:	
;ms83fxx02_motor.c: 83: {
;ms83fxx02_motor.c: 84: return ;
	goto	l8827
	line	85
	
l17015:	
;ms83fxx02_motor.c: 85: }
	goto	l8828
	line	86
	
l8826:	
	
l17017:	
;ms83fxx02_motor.c: 86: else if(status == MOTOR_MODE_3)
	movf	(Motor_Init@status),w
	xorlw	04h
	skipz
	goto	u4111
	goto	u4110
u4111:
	goto	l17021
u4110:
	line	88
	
l17019:	
;ms83fxx02_motor.c: 87: {
;ms83fxx02_motor.c: 88: PR2 = 125;
	movlw	(07Dh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	89
;ms83fxx02_motor.c: 89: CCPR1L = 47;
	movlw	(02Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	90
;ms83fxx02_motor.c: 90: CCP1CON = 0x8C | (0x00 << 4);
	movlw	(08Ch)
	movwf	(21)	;volatile
	line	91
;ms83fxx02_motor.c: 91: }
	goto	l8828
	line	92
	
l8829:	
	
l17021:	
;ms83fxx02_motor.c: 92: else if(status == MOTOR_MODE_2)
	movf	(Motor_Init@status),w
	xorlw	03h
	skipz
	goto	u4121
	goto	u4120
u4121:
	goto	l17025
u4120:
	line	94
	
l17023:	
;ms83fxx02_motor.c: 93: {
;ms83fxx02_motor.c: 94: PR2 = 125;
	movlw	(07Dh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	95
;ms83fxx02_motor.c: 95: CCPR1L = 31;
	movlw	(01Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	96
;ms83fxx02_motor.c: 96: CCP1CON = 0x8C | (0x00 << 4);
	movlw	(08Ch)
	movwf	(21)	;volatile
	line	97
;ms83fxx02_motor.c: 97: }
	goto	l8828
	line	98
	
l8831:	
	line	100
	
l17025:	
;ms83fxx02_motor.c: 98: else
;ms83fxx02_motor.c: 99: {
;ms83fxx02_motor.c: 100: PR2 = 116;
	movlw	(074h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	101
;ms83fxx02_motor.c: 101: CCPR1L = 47;
	movlw	(02Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	102
;ms83fxx02_motor.c: 102: CCP1CON = 0x8C | (0x00 << 4);
	movlw	(08Ch)
	movwf	(21)	;volatile
	goto	l8828
	line	103
	
l8832:	
	goto	l8828
	
l8830:	
	
l8828:	
	line	105
;ms83fxx02_motor.c: 103: }
;ms83fxx02_motor.c: 105: PWM1CON = 0x3F;
	movlw	(03Fh)
	movwf	(22)	;volatile
	line	109
	
l17027:	
;ms83fxx02_motor.c: 109: TMR2IF = 0;
	bcf	(97/8),(97)&7
	line	110
	
l17029:	
;ms83fxx02_motor.c: 110: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	111
;ms83fxx02_motor.c: 111: while(TMR2IF == 0){;}
	goto	l8833
	
l8834:	
	
l8833:	
	btfss	(97/8),(97)&7
	goto	u4131
	goto	u4130
u4131:
	goto	l8833
u4130:
	goto	l17031
	
l8835:	
	line	114
	
l17031:	
;ms83fxx02_motor.c: 114: TRISC &= ~(0x03 << 4);
	movlw	(0CFh)
	movwf	(??_Motor_Init+0)+0
	movf	(??_Motor_Init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	line	115
	
l8827:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_Init
	__end_of_Motor_Init:
;; =============== function _Motor_Init ends ============

	signat	_Motor_Init,4216
	global	_LEDTimer_DispUnderVoltCmd
psect	text1810,local,class=CODE,delta=2
global __ptext1810
__ptext1810:

;; *************** function _LEDTimer_DispUnderVoltCmd *****************
;; Defined at:
;;		line 141 in file "ms83fxx02_led_timer.c"
;; Parameters:    Size  Location     Type
;;  NewState        1    wreg     enum E1482
;; Auto vars:     Size  Location     Type
;;  NewState        1    4[BANK0 ] enum E1482
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1810
	file	"ms83fxx02_led_timer.c"
	line	141
	global	__size_of_LEDTimer_DispUnderVoltCmd
	__size_of_LEDTimer_DispUnderVoltCmd	equ	__end_of_LEDTimer_DispUnderVoltCmd-_LEDTimer_DispUnderVoltCmd
	
_LEDTimer_DispUnderVoltCmd:	
	opt	stack 1
; Regs used in _LEDTimer_DispUnderVoltCmd: [wreg+status,2+status,0]
;LEDTimer_DispUnderVoltCmd@NewState stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LEDTimer_DispUnderVoltCmd@NewState)
	line	142
	
l16989:	
;ms83fxx02_led_timer.c: 142: if(NewState != DISABLE)
	movf	(LEDTimer_DispUnderVoltCmd@NewState),w
	skipz
	goto	u4080
	goto	l7716
u4080:
	line	144
	
l16991:	
;ms83fxx02_led_timer.c: 143: {
;ms83fxx02_led_timer.c: 144: under_volt_display_En = 1;
	clrf	(_under_volt_display_En)	;volatile
	bsf	status,0
	rlf	(_under_volt_display_En),f	;volatile
	line	145
;ms83fxx02_led_timer.c: 145: }
	goto	l7718
	line	146
	
l7716:	
	line	148
;ms83fxx02_led_timer.c: 146: else
;ms83fxx02_led_timer.c: 147: {
;ms83fxx02_led_timer.c: 148: under_volt_display_En = 0;
	clrf	(_under_volt_display_En)	;volatile
	goto	l7718
	line	149
	
l7717:	
	line	172
	
l7718:	
	return
	opt stack 0
GLOBAL	__end_of_LEDTimer_DispUnderVoltCmd
	__end_of_LEDTimer_DispUnderVoltCmd:
;; =============== function _LEDTimer_DispUnderVoltCmd ends ============

	signat	_LEDTimer_DispUnderVoltCmd,4216
	global	_KEY_GetPressStatus
psect	text1811,local,class=CODE,delta=2
global __ptext1811
__ptext1811:

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
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1811
	file	"MS83FXX02_KEY.C"
	line	98
	global	__size_of_KEY_GetPressStatus
	__size_of_KEY_GetPressStatus	equ	__end_of_KEY_GetPressStatus-_KEY_GetPressStatus
	
_KEY_GetPressStatus:	
	opt	stack 2
; Regs used in _KEY_GetPressStatus: [wreg]
	line	99
	
l16975:	
;MS83FXX02_KEY.C: 99: if(key_press)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key_press),w	;volatile
	skipz
	goto	u4070
	goto	l16983
u4070:
	line	101
	
l16977:	
;MS83FXX02_KEY.C: 100: {
;MS83FXX02_KEY.C: 101: key_press = 0;
	clrf	(_key_press)	;volatile
	line	102
	
l16979:	
;MS83FXX02_KEY.C: 102: return SET;
	movlw	(01h)
	goto	l5531
	
l16981:	
	goto	l5531
	line	103
	
l5530:	
	line	105
	
l16983:	
;MS83FXX02_KEY.C: 103: }
;MS83FXX02_KEY.C: 105: return RESET;
	movlw	(0)
	goto	l5531
	
l16985:	
	line	106
	
l5531:	
	return
	opt stack 0
GLOBAL	__end_of_KEY_GetPressStatus
	__end_of_KEY_GetPressStatus:
;; =============== function _KEY_GetPressStatus ends ============

	signat	_KEY_GetPressStatus,89
	global	_KEY_GetReleaseStatus
psect	text1812,local,class=CODE,delta=2
global __ptext1812
__ptext1812:

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
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1812
	file	"MS83FXX02_KEY.C"
	line	85
	global	__size_of_KEY_GetReleaseStatus
	__size_of_KEY_GetReleaseStatus	equ	__end_of_KEY_GetReleaseStatus-_KEY_GetReleaseStatus
	
_KEY_GetReleaseStatus:	
	opt	stack 2
; Regs used in _KEY_GetReleaseStatus: [wreg]
	line	86
	
l16963:	
;MS83FXX02_KEY.C: 86: if(key_release)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key_release),w	;volatile
	skipz
	goto	u4060
	goto	l16971
u4060:
	line	88
	
l16965:	
;MS83FXX02_KEY.C: 87: {
;MS83FXX02_KEY.C: 88: key_press = 0;
	clrf	(_key_press)	;volatile
	line	89
;MS83FXX02_KEY.C: 89: key_release = 0;
	clrf	(_key_release)	;volatile
	line	90
;MS83FXX02_KEY.C: 90: key_press_flag = 0;
	clrf	(_key_press_flag)	;volatile
	line	91
	
l16967:	
;MS83FXX02_KEY.C: 91: return SET;
	movlw	(01h)
	goto	l5527
	
l16969:	
	goto	l5527
	line	92
	
l5526:	
	line	94
	
l16971:	
;MS83FXX02_KEY.C: 92: }
;MS83FXX02_KEY.C: 94: return RESET;
	movlw	(0)
	goto	l5527
	
l16973:	
	line	95
	
l5527:	
	return
	opt stack 0
GLOBAL	__end_of_KEY_GetReleaseStatus
	__end_of_KEY_GetReleaseStatus:
;; =============== function _KEY_GetReleaseStatus ends ============

	signat	_KEY_GetReleaseStatus,89
	global	_EEPROM_Write
psect	text1813,local,class=CODE,delta=2
global __ptext1813
__ptext1813:

;; *************** function _EEPROM_Write *****************
;; Defined at:
;;		line 39 in file "ms83fxx02_eeprom.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  data            1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_EEPROM_Init
;;		_EEPROM_StoreMotorData
;;		_EEPROM_SetFlag
;;		_EEPROM_StoreModeData
;; This function uses a non-reentrant model
;;
psect	text1813
	file	"ms83fxx02_eeprom.c"
	line	39
	global	__size_of_EEPROM_Write
	__size_of_EEPROM_Write	equ	__end_of_EEPROM_Write-_EEPROM_Write
	
_EEPROM_Write:	
	opt	stack 0
; Regs used in _EEPROM_Write: [wreg]
;EEPROM_Write@addr stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(EEPROM_Write@addr)
	line	40
	
l16925:	
;ms83fxx02_eeprom.c: 40: EEADR = addr;
	movf	(EEPROM_Write@addr),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(155)^080h	;volatile
	line	41
	
l16927:	
# 41 "ms83fxx02_eeprom.c"
nop ;#
psect	text1813
	line	42
;ms83fxx02_eeprom.c: 42: EEDAT = data;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(EEPROM_Write@data),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(154)^080h	;volatile
	line	43
;ms83fxx02_eeprom.c: 43: EECON1 = 0x34;
	movlw	(034h)
	movwf	(156)^080h	;volatile
	line	44
	
l16929:	
;ms83fxx02_eeprom.c: 44: WR = 1;
	bsf	(1256/8)^080h,(1256)&7
	line	45
	
l16931:	
# 45 "ms83fxx02_eeprom.c"
nop ;#
psect	text1813
	line	46
	
l16933:	
# 46 "ms83fxx02_eeprom.c"
nop ;#
psect	text1813
	line	47
	
l16935:	
# 47 "ms83fxx02_eeprom.c"
nop ;#
psect	text1813
	line	49
;ms83fxx02_eeprom.c: 49: while(WR == 1);
	goto	l3338
	
l3339:	
	
l3338:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1256/8)^080h,(1256)&7
	goto	u4051
	goto	u4050
u4051:
	goto	l3338
u4050:
	
l3340:	
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
	
l3341:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_Write
	__end_of_EEPROM_Write:
;; =============== function _EEPROM_Write ends ============

	signat	_EEPROM_Write,8312
	global	_GPIO_INTConfig
psect	text1814,local,class=CODE,delta=2
global __ptext1814
__ptext1814:

;; *************** function _GPIO_INTConfig *****************
;; Defined at:
;;		line 134 in file "ms83fxx02_gpio.c"
;; Parameters:    Size  Location     Type
;;  GPIOx           1    wreg     enum E1491
;;  GPIO_Pin        1    4[BANK0 ] unsigned char 
;;  NewState        1    5[BANK0 ] enum E1482
;; Auto vars:     Size  Location     Type
;;  GPIOx           1    7[BANK0 ] enum E1491
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ChargeDetect_Init
;;		_KEY_Init
;; This function uses a non-reentrant model
;;
psect	text1814
	file	"ms83fxx02_gpio.c"
	line	134
	global	__size_of_GPIO_INTConfig
	__size_of_GPIO_INTConfig	equ	__end_of_GPIO_INTConfig-_GPIO_INTConfig
	
_GPIO_INTConfig:	
	opt	stack 0
; Regs used in _GPIO_INTConfig: [wreg+status,2+status,0]
;GPIO_INTConfig@GPIOx stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(GPIO_INTConfig@GPIOx)
	line	135
	
l16899:	
;ms83fxx02_gpio.c: 135: if(GPIOx == GPIOA)
	movf	(GPIO_INTConfig@GPIOx),f
	skipz
	goto	u4001
	goto	u4000
u4001:
	goto	l16909
u4000:
	line	137
	
l16901:	
;ms83fxx02_gpio.c: 136: {
;ms83fxx02_gpio.c: 137: if (NewState != DISABLE)
	movf	(GPIO_INTConfig@NewState),w
	skipz
	goto	u4010
	goto	l16907
u4010:
	line	140
	
l16903:	
;ms83fxx02_gpio.c: 138: {
;ms83fxx02_gpio.c: 140: PAIE = 1;
	bsf	(91/8),(91)&7
	line	141
;ms83fxx02_gpio.c: 141: GIE = 1;
	bsf	(95/8),(95)&7
	line	142
	
l16905:	
;ms83fxx02_gpio.c: 142: IOCA |= GPIO_Pin;
	movf	(GPIO_INTConfig@GPIO_Pin),w
	movwf	(??_GPIO_INTConfig+0)+0
	movf	(??_GPIO_INTConfig+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(150)^080h,f	;volatile
	line	143
;ms83fxx02_gpio.c: 143: }
	goto	l16909
	line	144
	
l4433:	
	line	147
	
l16907:	
;ms83fxx02_gpio.c: 144: else
;ms83fxx02_gpio.c: 145: {
;ms83fxx02_gpio.c: 147: IOCA &= ~GPIO_Pin;
	bcf	status, 5	;RP0=0, select bank0
	comf	(GPIO_INTConfig@GPIO_Pin),w
	movwf	(??_GPIO_INTConfig+0)+0
	movf	(??_GPIO_INTConfig+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(150)^080h,f	;volatile
	goto	l16909
	line	148
	
l4434:	
	goto	l16909
	line	149
	
l4432:	
	line	151
	
l16909:	
;ms83fxx02_gpio.c: 148: }
;ms83fxx02_gpio.c: 149: }
;ms83fxx02_gpio.c: 151: if((GPIOx == GPIOC) && (GPIO_Pin == ((uint8_t)0x00000002)))
	bcf	status, 5	;RP0=0, select bank0
	movf	(GPIO_INTConfig@GPIOx),w
	xorlw	01h
	skipz
	goto	u4021
	goto	u4020
u4021:
	goto	l4438
u4020:
	
l16911:	
	movf	(GPIO_INTConfig@GPIO_Pin),w
	xorlw	02h
	skipz
	goto	u4031
	goto	u4030
u4031:
	goto	l4438
u4030:
	line	154
	
l16913:	
;ms83fxx02_gpio.c: 152: {
;ms83fxx02_gpio.c: 154: if (NewState != DISABLE)
	movf	(GPIO_INTConfig@NewState),w
	skipz
	goto	u4040
	goto	l4436
u4040:
	line	157
	
l16915:	
;ms83fxx02_gpio.c: 155: {
;ms83fxx02_gpio.c: 157: ANSEL5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7
	line	158
	
l16917:	
;ms83fxx02_gpio.c: 158: CMCON0 |= 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_GPIO_INTConfig+0)+0
	movf	(??_GPIO_INTConfig+0)+0,w
	iorwf	(25),f	;volatile
	line	160
	
l16919:	
;ms83fxx02_gpio.c: 160: GIE = 1;
	bsf	(95/8),(95)&7
	line	161
	
l16921:	
;ms83fxx02_gpio.c: 161: INTF = 0;
	bcf	(89/8),(89)&7
	line	162
	
l16923:	
;ms83fxx02_gpio.c: 162: INTE = 1;
	bsf	(92/8),(92)&7
	line	163
;ms83fxx02_gpio.c: 163: }
	goto	l4438
	line	164
	
l4436:	
	line	167
;ms83fxx02_gpio.c: 164: else
;ms83fxx02_gpio.c: 165: {
;ms83fxx02_gpio.c: 167: INTE = 0;
	bcf	(92/8),(92)&7
	goto	l4438
	line	168
	
l4437:	
	goto	l4438
	line	169
	
l4435:	
	line	170
	
l4438:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_INTConfig
	__end_of_GPIO_INTConfig:
;; =============== function _GPIO_INTConfig ends ============

	signat	_GPIO_INTConfig,12408
	global	_GPIO_ReadInputDataBit
psect	text1815,local,class=CODE,delta=2
global __ptext1815
__ptext1815:

;; *************** function _GPIO_ReadInputDataBit *****************
;; Defined at:
;;		line 101 in file "ms83fxx02_gpio.c"
;; Parameters:    Size  Location     Type
;;  GPIOx           1    wreg     enum E1491
;;  GPIO_Pin        1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  GPIOx           1    6[BANK0 ] enum E1491
;;  bitstatus       1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ChargeDetect_Init
;;		_ChargeDetect_GetStatus
;; This function uses a non-reentrant model
;;
psect	text1815
	file	"ms83fxx02_gpio.c"
	line	101
	global	__size_of_GPIO_ReadInputDataBit
	__size_of_GPIO_ReadInputDataBit	equ	__end_of_GPIO_ReadInputDataBit-_GPIO_ReadInputDataBit
	
_GPIO_ReadInputDataBit:	
	opt	stack 2
; Regs used in _GPIO_ReadInputDataBit: [wreg+status,2+status,0]
;GPIO_ReadInputDataBit@GPIOx stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(GPIO_ReadInputDataBit@GPIOx)
	line	102
	
l16881:	
;ms83fxx02_gpio.c: 102: uint8_t bitstatus = RESET;
	clrf	(GPIO_ReadInputDataBit@bitstatus)
	line	104
	
l16883:	
;ms83fxx02_gpio.c: 104: if(GPIOx == GPIOA)
	movf	(GPIO_ReadInputDataBit@GPIOx),f
	skipz
	goto	u3961
	goto	u3960
u3961:
	goto	l16889
u3960:
	line	106
	
l16885:	
;ms83fxx02_gpio.c: 105: {
;ms83fxx02_gpio.c: 106: if (PORTA & GPIO_Pin)
	movf	(5),w	;volatile
	andwf	(GPIO_ReadInputDataBit@GPIO_Pin),w
	btfsc	status,2
	goto	u3971
	goto	u3970
u3971:
	goto	l16895
u3970:
	line	108
	
l16887:	
;ms83fxx02_gpio.c: 107: {
;ms83fxx02_gpio.c: 108: bitstatus = (uint8_t)SET;
	clrf	(GPIO_ReadInputDataBit@bitstatus)
	bsf	status,0
	rlf	(GPIO_ReadInputDataBit@bitstatus),f
	goto	l16895
	line	109
	
l4425:	
	line	110
;ms83fxx02_gpio.c: 109: }
;ms83fxx02_gpio.c: 110: }
	goto	l16895
	line	111
	
l4424:	
	line	113
	
l16889:	
;ms83fxx02_gpio.c: 111: else
;ms83fxx02_gpio.c: 112: {
;ms83fxx02_gpio.c: 113: if(GPIOx == GPIOC)
	movf	(GPIO_ReadInputDataBit@GPIOx),w
	xorlw	01h
	skipz
	goto	u3981
	goto	u3980
u3981:
	goto	l16895
u3980:
	line	115
	
l16891:	
;ms83fxx02_gpio.c: 114: {
;ms83fxx02_gpio.c: 115: if (PORTC & GPIO_Pin)
	movf	(7),w	;volatile
	andwf	(GPIO_ReadInputDataBit@GPIO_Pin),w
	btfsc	status,2
	goto	u3991
	goto	u3990
u3991:
	goto	l16895
u3990:
	line	117
	
l16893:	
;ms83fxx02_gpio.c: 116: {
;ms83fxx02_gpio.c: 117: bitstatus = (uint8_t)SET;
	clrf	(GPIO_ReadInputDataBit@bitstatus)
	bsf	status,0
	rlf	(GPIO_ReadInputDataBit@bitstatus),f
	goto	l16895
	line	118
	
l4428:	
	goto	l16895
	line	119
	
l4427:	
	goto	l16895
	line	120
	
l4426:	
	line	122
	
l16895:	
;ms83fxx02_gpio.c: 118: }
;ms83fxx02_gpio.c: 119: }
;ms83fxx02_gpio.c: 120: }
;ms83fxx02_gpio.c: 122: return bitstatus;
	movf	(GPIO_ReadInputDataBit@bitstatus),w
	goto	l4429
	
l16897:	
	line	123
	
l4429:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_ReadInputDataBit
	__end_of_GPIO_ReadInputDataBit:
;; =============== function _GPIO_ReadInputDataBit ends ============

	signat	_GPIO_ReadInputDataBit,8313
	global	_GPIO_Init
psect	text1816,local,class=CODE,delta=2
global __ptext1816
__ptext1816:

;; *************** function _GPIO_Init *****************
;; Defined at:
;;		line 27 in file "ms83fxx02_gpio.c"
;; Parameters:    Size  Location     Type
;;  GPIOx           1    wreg     enum E1491
;;  GPIO_InitStr    1    4[BANK0 ] PTR struct .
;;		 -> LED_Init@GPIO_InitStruct(2), KEY_Init@GPIO_InitStruct(2), KEY_DeInit@GPIO_InitStruct(2), ChargeCtrl_Init@GPIO_InitStruct(2), 
;;		 -> ChargeDetect_Init@GPIO_InitStruct(2), 
;; Auto vars:     Size  Location     Type
;;  GPIOx           1    6[BANK0 ] enum E1491
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
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
psect	text1816
	file	"ms83fxx02_gpio.c"
	line	27
	global	__size_of_GPIO_Init
	__size_of_GPIO_Init	equ	__end_of_GPIO_Init-_GPIO_Init
	
_GPIO_Init:	
	opt	stack 0
; Regs used in _GPIO_Init: [wreg-fsr0h+status,2+status,0]
;GPIO_Init@GPIOx stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(GPIO_Init@GPIOx)
	line	28
	
l16867:	
;ms83fxx02_gpio.c: 28: if(GPIOx == GPIOA)
	movf	(GPIO_Init@GPIOx),f
	skipz
	goto	u3931
	goto	u3930
u3931:
	goto	l16875
u3930:
	line	30
	
l16869:	
;ms83fxx02_gpio.c: 29: {
;ms83fxx02_gpio.c: 30: if(GPIO_InitStruct->GPIO_Mode == GPIO_Mode_OUT)
	movf	(GPIO_Init@GPIO_InitStruct),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	01h
	skipz
	goto	u3941
	goto	u3940
u3941:
	goto	l16873
u3940:
	line	33
	
l16871:	
;ms83fxx02_gpio.c: 31: {
;ms83fxx02_gpio.c: 33: TRISA &= ~(GPIO_InitStruct->GPIO_Pin);
	movf	(GPIO_Init@GPIO_InitStruct),w
	movwf	fsr0
	comf	indf,w
	movwf	(??_GPIO_Init+0)+0
	movf	(??_GPIO_Init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(133)^080h,f	;volatile
	line	34
;ms83fxx02_gpio.c: 34: }
	goto	l4412
	line	35
	
l4407:	
	line	38
	
l16873:	
;ms83fxx02_gpio.c: 35: else
;ms83fxx02_gpio.c: 36: {
;ms83fxx02_gpio.c: 38: TRISA |= GPIO_InitStruct->GPIO_Pin;
	bcf	status, 5	;RP0=0, select bank0
	movf	(GPIO_Init@GPIO_InitStruct),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_GPIO_Init+0)+0
	movf	(??_GPIO_Init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(133)^080h,f	;volatile
	goto	l4412
	line	39
	
l4408:	
	line	40
;ms83fxx02_gpio.c: 39: }
;ms83fxx02_gpio.c: 40: }
	goto	l4412
	line	41
	
l4406:	
	line	43
	
l16875:	
;ms83fxx02_gpio.c: 41: else
;ms83fxx02_gpio.c: 42: {
;ms83fxx02_gpio.c: 43: if(GPIO_InitStruct->GPIO_Mode == GPIO_Mode_OUT)
	bcf	status, 5	;RP0=0, select bank0
	movf	(GPIO_Init@GPIO_InitStruct),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	01h
	skipz
	goto	u3951
	goto	u3950
u3951:
	goto	l16879
u3950:
	line	46
	
l16877:	
;ms83fxx02_gpio.c: 44: {
;ms83fxx02_gpio.c: 46: TRISC &= ~(GPIO_InitStruct->GPIO_Pin);
	movf	(GPIO_Init@GPIO_InitStruct),w
	movwf	fsr0
	comf	indf,w
	movwf	(??_GPIO_Init+0)+0
	movf	(??_GPIO_Init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	line	47
;ms83fxx02_gpio.c: 47: }
	goto	l4412
	line	48
	
l4410:	
	line	51
	
l16879:	
;ms83fxx02_gpio.c: 48: else
;ms83fxx02_gpio.c: 49: {
;ms83fxx02_gpio.c: 51: TRISC |= GPIO_InitStruct->GPIO_Pin;
	bcf	status, 5	;RP0=0, select bank0
	movf	(GPIO_Init@GPIO_InitStruct),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_GPIO_Init+0)+0
	movf	(??_GPIO_Init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(135)^080h,f	;volatile
	goto	l4412
	line	52
	
l4411:	
	goto	l4412
	line	53
	
l4409:	
	line	54
	
l4412:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_Init
	__end_of_GPIO_Init:
;; =============== function _GPIO_Init ends ============

	signat	_GPIO_Init,8312
	global	_GetDeviceMode
psect	text1817,local,class=CODE,delta=2
global __ptext1817
__ptext1817:

;; *************** function _GetDeviceMode *****************
;; Defined at:
;;		line 45 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E1584
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1817
	file	"ms83fxx02_pwr.c"
	line	45
	global	__size_of_GetDeviceMode
	__size_of_GetDeviceMode	equ	__end_of_GetDeviceMode-_GetDeviceMode
	
_GetDeviceMode:	
	opt	stack 3
; Regs used in _GetDeviceMode: [wreg]
	line	46
	
l16707:	
;ms83fxx02_pwr.c: 46: return device_mode;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_device_mode),w	;volatile
	goto	l10014
	
l16709:	
	line	47
	
l10014:	
	return
	opt stack 0
GLOBAL	__end_of_GetDeviceMode
	__end_of_GetDeviceMode:
;; =============== function _GetDeviceMode ends ============

	signat	_GetDeviceMode,89
	global	_SetDeviceMode
psect	text1818,local,class=CODE,delta=2
global __ptext1818
__ptext1818:

;; *************** function _SetDeviceMode *****************
;; Defined at:
;;		line 55 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;  mode            1    wreg     enum E1521
;; Auto vars:     Size  Location     Type
;;  mode            1    5[BANK0 ] enum E1521
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1818
	file	"ms83fxx02_pwr.c"
	line	55
	global	__size_of_SetDeviceMode
	__size_of_SetDeviceMode	equ	__end_of_SetDeviceMode-_SetDeviceMode
	
_SetDeviceMode:	
	opt	stack 3
; Regs used in _SetDeviceMode: [wreg]
;SetDeviceMode@mode stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SetDeviceMode@mode)
	line	56
	
l16705:	
;ms83fxx02_pwr.c: 56: device_mode = mode;
	movf	(SetDeviceMode@mode),w
	movwf	(??_SetDeviceMode+0)+0
	movf	(??_SetDeviceMode+0)+0,w
	movwf	(_device_mode)	;volatile
	line	57
	
l10017:	
	return
	opt stack 0
GLOBAL	__end_of_SetDeviceMode
	__end_of_SetDeviceMode:
;; =============== function _SetDeviceMode ends ============

	signat	_SetDeviceMode,4216
	global	_ChargeTimer_INTConfig
psect	text1819,local,class=CODE,delta=2
global __ptext1819
__ptext1819:

;; *************** function _ChargeTimer_INTConfig *****************
;; Defined at:
;;		line 82 in file "ms83fxx02_charge_timer.c"
;; Parameters:    Size  Location     Type
;;  NewState        1    wreg     enum E1482
;; Auto vars:     Size  Location     Type
;;  NewState        1    4[BANK0 ] enum E1482
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1819
	file	"ms83fxx02_charge_timer.c"
	line	82
	global	__size_of_ChargeTimer_INTConfig
	__size_of_ChargeTimer_INTConfig	equ	__end_of_ChargeTimer_INTConfig-_ChargeTimer_INTConfig
	
_ChargeTimer_INTConfig:	
	opt	stack 3
; Regs used in _ChargeTimer_INTConfig: [wreg]
;ChargeTimer_INTConfig@NewState stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ChargeTimer_INTConfig@NewState)
	line	83
	
l16701:	
;ms83fxx02_charge_timer.c: 83: if(NewState != DISABLE)
	movf	(ChargeTimer_INTConfig@NewState),w
	skipz
	goto	u3650
	goto	l12225
u3650:
	line	86
	
l16703:	
;ms83fxx02_charge_timer.c: 84: {
;ms83fxx02_charge_timer.c: 86: TMR5IE = 1;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bsf	(2273/8)^0100h,(2273)&7
	line	87
;ms83fxx02_charge_timer.c: 87: PEIE = 1;
	bsf	(94/8),(94)&7
	line	88
;ms83fxx02_charge_timer.c: 88: GIE = 1;
	bsf	(95/8),(95)&7
	line	89
;ms83fxx02_charge_timer.c: 89: }
	goto	l12227
	line	90
	
l12225:	
	line	93
;ms83fxx02_charge_timer.c: 90: else
;ms83fxx02_charge_timer.c: 91: {
;ms83fxx02_charge_timer.c: 93: TMR5IE = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2273/8)^0100h,(2273)&7
	goto	l12227
	line	94
	
l12226:	
	line	95
	
l12227:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeTimer_INTConfig
	__end_of_ChargeTimer_INTConfig:
;; =============== function _ChargeTimer_INTConfig ends ============

	signat	_ChargeTimer_INTConfig,4216
	global	_ChargeTimer_Cmd
psect	text1820,local,class=CODE,delta=2
global __ptext1820
__ptext1820:

;; *************** function _ChargeTimer_Cmd *****************
;; Defined at:
;;		line 41 in file "ms83fxx02_charge_timer.c"
;; Parameters:    Size  Location     Type
;;  NewState        1    wreg     enum E1482
;; Auto vars:     Size  Location     Type
;;  NewState        1    4[BANK0 ] enum E1482
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1820
	file	"ms83fxx02_charge_timer.c"
	line	41
	global	__size_of_ChargeTimer_Cmd
	__size_of_ChargeTimer_Cmd	equ	__end_of_ChargeTimer_Cmd-_ChargeTimer_Cmd
	
_ChargeTimer_Cmd:	
	opt	stack 3
; Regs used in _ChargeTimer_Cmd: [wreg+status,2]
;ChargeTimer_Cmd@NewState stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ChargeTimer_Cmd@NewState)
	line	42
	
l16685:	
;ms83fxx02_charge_timer.c: 42: charge_time_out = 0;
	clrf	(_charge_time_out)	;volatile
	clrf	(_charge_time_out+1)	;volatile
	line	44
	
l16687:	
;ms83fxx02_charge_timer.c: 44: if(NewState != DISABLE)
	movf	(ChargeTimer_Cmd@NewState),w
	skipz
	goto	u3640
	goto	l12220
u3640:
	line	47
	
l16689:	
;ms83fxx02_charge_timer.c: 45: {
;ms83fxx02_charge_timer.c: 47: TMR5ON = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2274/8)^0100h,(2274)&7
	line	49
	
l16691:	
;ms83fxx02_charge_timer.c: 49: PWM5CR0 = 0b01110010;
	movlw	(072h)
	movwf	(283)^0100h	;volatile
	line	52
;ms83fxx02_charge_timer.c: 52: PWM5CR1 = 0b00111000;
	movlw	(038h)
	movwf	(284)^0100h	;volatile
	line	56
;ms83fxx02_charge_timer.c: 56: T5CKDIV = 151;
	movlw	(097h)
	movwf	(285)^0100h	;volatile
	line	58
;ms83fxx02_charge_timer.c: 58: TMR5H = 0x0F;
	movlw	(0Fh)
	movwf	(281)^0100h	;volatile
	line	59
	
l16693:	
;ms83fxx02_charge_timer.c: 59: TMR5L = 0;
	clrf	(280)^0100h	;volatile
	line	60
	
l16695:	
;ms83fxx02_charge_timer.c: 60: PR5L = 0xFF;
	movlw	(0FFh)
	movwf	(282)^0100h	;volatile
	line	63
	
l16697:	
;ms83fxx02_charge_timer.c: 63: TMR5IF = 0;
	bcf	(2272/8)^0100h,(2272)&7
	line	66
	
l16699:	
;ms83fxx02_charge_timer.c: 66: TMR5ON = 1;
	bsf	(2274/8)^0100h,(2274)&7
	line	67
;ms83fxx02_charge_timer.c: 67: }
	goto	l12222
	line	68
	
l12220:	
	line	71
;ms83fxx02_charge_timer.c: 68: else
;ms83fxx02_charge_timer.c: 69: {
;ms83fxx02_charge_timer.c: 71: TMR5ON = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2274/8)^0100h,(2274)&7
	goto	l12222
	line	72
	
l12221:	
	line	73
	
l12222:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeTimer_Cmd
	__end_of_ChargeTimer_Cmd:
;; =============== function _ChargeTimer_Cmd ends ============

	signat	_ChargeTimer_Cmd,4216
	global	_LEDTimer_DispRunLimitCmd
psect	text1821,local,class=CODE,delta=2
global __ptext1821
__ptext1821:

;; *************** function _LEDTimer_DispRunLimitCmd *****************
;; Defined at:
;;		line 181 in file "ms83fxx02_led_timer.c"
;; Parameters:    Size  Location     Type
;;  NewState        1    wreg     enum E1482
;; Auto vars:     Size  Location     Type
;;  NewState        1    4[BANK0 ] enum E1482
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1821
	file	"ms83fxx02_led_timer.c"
	line	181
	global	__size_of_LEDTimer_DispRunLimitCmd
	__size_of_LEDTimer_DispRunLimitCmd	equ	__end_of_LEDTimer_DispRunLimitCmd-_LEDTimer_DispRunLimitCmd
	
_LEDTimer_DispRunLimitCmd:	
	opt	stack 3
; Regs used in _LEDTimer_DispRunLimitCmd: [wreg+status,2+status,0]
;LEDTimer_DispRunLimitCmd@NewState stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LEDTimer_DispRunLimitCmd@NewState)
	line	182
	
l16681:	
;ms83fxx02_led_timer.c: 182: if(NewState != DISABLE)
	movf	(LEDTimer_DispRunLimitCmd@NewState),w
	skipz
	goto	u3630
	goto	l7721
u3630:
	line	184
	
l16683:	
;ms83fxx02_led_timer.c: 183: {
;ms83fxx02_led_timer.c: 184: run_limit_display_en = 1;
	clrf	(_run_limit_display_en)	;volatile
	bsf	status,0
	rlf	(_run_limit_display_en),f	;volatile
	line	185
;ms83fxx02_led_timer.c: 185: }
	goto	l7723
	line	186
	
l7721:	
	line	188
;ms83fxx02_led_timer.c: 186: else
;ms83fxx02_led_timer.c: 187: {
;ms83fxx02_led_timer.c: 188: run_limit_display_en = 0;
	clrf	(_run_limit_display_en)	;volatile
	goto	l7723
	line	189
	
l7722:	
	line	205
	
l7723:	
	return
	opt stack 0
GLOBAL	__end_of_LEDTimer_DispRunLimitCmd
	__end_of_LEDTimer_DispRunLimitCmd:
;; =============== function _LEDTimer_DispRunLimitCmd ends ============

	signat	_LEDTimer_DispRunLimitCmd,4216
	global	_Motor_SetStatus
psect	text1822,local,class=CODE,delta=2
global __ptext1822
__ptext1822:

;; *************** function _Motor_SetStatus *****************
;; Defined at:
;;		line 123 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     enum E1552
;; Auto vars:     Size  Location     Type
;;  status          1    5[BANK0 ] enum E1552
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Motor_HandleStatusChangeEvt
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1822
	file	"ms83fxx02_motor.c"
	line	123
	global	__size_of_Motor_SetStatus
	__size_of_Motor_SetStatus	equ	__end_of_Motor_SetStatus-_Motor_SetStatus
	
_Motor_SetStatus:	
	opt	stack 1
; Regs used in _Motor_SetStatus: [wreg]
;Motor_SetStatus@status stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Motor_SetStatus@status)
	line	124
	
l16679:	
;ms83fxx02_motor.c: 124: motor_status = status;
	movf	(Motor_SetStatus@status),w
	movwf	(??_Motor_SetStatus+0)+0
	movf	(??_Motor_SetStatus+0)+0,w
	movwf	(_motor_status)	;volatile
	line	125
	
l8838:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_SetStatus
	__end_of_Motor_SetStatus:
;; =============== function _Motor_SetStatus ends ============

	signat	_Motor_SetStatus,4216
	global	_Motor_GetStatus
psect	text1823,local,class=CODE,delta=2
global __ptext1823
__ptext1823:

;; *************** function _Motor_GetStatus *****************
;; Defined at:
;;		line 133 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E1552
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1823
	file	"ms83fxx02_motor.c"
	line	133
	global	__size_of_Motor_GetStatus
	__size_of_Motor_GetStatus	equ	__end_of_Motor_GetStatus-_Motor_GetStatus
	
_Motor_GetStatus:	
	opt	stack 3
; Regs used in _Motor_GetStatus: [wreg]
	line	134
	
l16675:	
;ms83fxx02_motor.c: 134: return motor_status;
	movf	(_motor_status),w	;volatile
	goto	l8841
	
l16677:	
	line	135
	
l8841:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_GetStatus
	__end_of_Motor_GetStatus:
;; =============== function _Motor_GetStatus ends ============

	signat	_Motor_GetStatus,89
	global	_GPIO_WriteBit
psect	text1824,local,class=CODE,delta=2
global __ptext1824
__ptext1824:

;; *************** function _GPIO_WriteBit *****************
;; Defined at:
;;		line 68 in file "ms83fxx02_gpio.c"
;; Parameters:    Size  Location     Type
;;  GPIOx           1    wreg     enum E1491
;;  GPIO_Pin        1    4[BANK0 ] unsigned char 
;;  BitVal          1    5[BANK0 ] enum E1499
;; Auto vars:     Size  Location     Type
;;  GPIOx           1    7[BANK0 ] enum E1491
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_charge_control
;;		_ChargeCtrl_Init
;;		_ChargeCtrl_Output
;;		_LED_Init
;;		_LED_DisplayMotorStatus
;;		_LED_VoltageChargeOutput
;;		_LED_UnderVoltageOutput
;;		_Motor_Stop
;;		_Motor_HandleStatusChangeEvt
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1824
	file	"ms83fxx02_gpio.c"
	line	68
	global	__size_of_GPIO_WriteBit
	__size_of_GPIO_WriteBit	equ	__end_of_GPIO_WriteBit-_GPIO_WriteBit
	
_GPIO_WriteBit:	
	opt	stack 2
; Regs used in _GPIO_WriteBit: [wreg+status,2+status,0]
;GPIO_WriteBit@GPIOx stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(GPIO_WriteBit@GPIOx)
	line	69
	
l16661:	
;ms83fxx02_gpio.c: 69: if(GPIOx == GPIOA)
	movf	(GPIO_WriteBit@GPIOx),f
	skipz
	goto	u3601
	goto	u3600
u3601:
	goto	l16669
u3600:
	line	71
	
l16663:	
;ms83fxx02_gpio.c: 70: {
;ms83fxx02_gpio.c: 71: if (BitVal != Bit_RESET)
	movf	(GPIO_WriteBit@BitVal),w
	skipz
	goto	u3610
	goto	l16667
u3610:
	line	73
	
l16665:	
;ms83fxx02_gpio.c: 72: {
;ms83fxx02_gpio.c: 73: PORTA |= GPIO_Pin;
	movf	(GPIO_WriteBit@GPIO_Pin),w
	movwf	(??_GPIO_WriteBit+0)+0
	movf	(??_GPIO_WriteBit+0)+0,w
	iorwf	(5),f	;volatile
	line	74
;ms83fxx02_gpio.c: 74: }
	goto	l4421
	line	75
	
l4416:	
	line	77
	
l16667:	
;ms83fxx02_gpio.c: 75: else
;ms83fxx02_gpio.c: 76: {
;ms83fxx02_gpio.c: 77: PORTA &= ~(GPIO_Pin);
	comf	(GPIO_WriteBit@GPIO_Pin),w
	movwf	(??_GPIO_WriteBit+0)+0
	movf	(??_GPIO_WriteBit+0)+0,w
	andwf	(5),f	;volatile
	goto	l4421
	line	78
	
l4417:	
	line	79
;ms83fxx02_gpio.c: 78: }
;ms83fxx02_gpio.c: 79: }
	goto	l4421
	line	80
	
l4415:	
	line	82
	
l16669:	
;ms83fxx02_gpio.c: 80: else
;ms83fxx02_gpio.c: 81: {
;ms83fxx02_gpio.c: 82: if (BitVal != Bit_RESET)
	movf	(GPIO_WriteBit@BitVal),w
	skipz
	goto	u3620
	goto	l16673
u3620:
	line	84
	
l16671:	
;ms83fxx02_gpio.c: 83: {
;ms83fxx02_gpio.c: 84: PORTC |= GPIO_Pin;
	movf	(GPIO_WriteBit@GPIO_Pin),w
	movwf	(??_GPIO_WriteBit+0)+0
	movf	(??_GPIO_WriteBit+0)+0,w
	iorwf	(7),f	;volatile
	line	85
;ms83fxx02_gpio.c: 85: }
	goto	l4421
	line	86
	
l4419:	
	line	88
	
l16673:	
;ms83fxx02_gpio.c: 86: else
;ms83fxx02_gpio.c: 87: {
;ms83fxx02_gpio.c: 88: PORTC &= ~(GPIO_Pin);
	comf	(GPIO_WriteBit@GPIO_Pin),w
	movwf	(??_GPIO_WriteBit+0)+0
	movf	(??_GPIO_WriteBit+0)+0,w
	andwf	(7),f	;volatile
	goto	l4421
	line	89
	
l4420:	
	goto	l4421
	line	90
	
l4418:	
	line	91
	
l4421:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_WriteBit
	__end_of_GPIO_WriteBit:
;; =============== function _GPIO_WriteBit ends ============

	signat	_GPIO_WriteBit,12408
	global	_ChargeTimer_GetCount
psect	text1825,local,class=CODE,delta=2
global __ptext1825
__ptext1825:

;; *************** function _ChargeTimer_GetCount *****************
;; Defined at:
;;		line 113 in file "ms83fxx02_charge_timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_charge_control
;; This function uses a non-reentrant model
;;
psect	text1825
	file	"ms83fxx02_charge_timer.c"
	line	113
	global	__size_of_ChargeTimer_GetCount
	__size_of_ChargeTimer_GetCount	equ	__end_of_ChargeTimer_GetCount-_ChargeTimer_GetCount
	
_ChargeTimer_GetCount:	
	opt	stack 2
; Regs used in _ChargeTimer_GetCount: [wreg+status,2+status,0]
	line	114
	
l16657:	
;ms83fxx02_charge_timer.c: 114: return charge_time_out;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_charge_time_out+1),w	;volatile
	clrf	(?_ChargeTimer_GetCount+1)
	addwf	(?_ChargeTimer_GetCount+1)
	movf	(_charge_time_out),w	;volatile
	clrf	(?_ChargeTimer_GetCount)
	addwf	(?_ChargeTimer_GetCount)

	goto	l12233
	
l16659:	
	line	115
	
l12233:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeTimer_GetCount
	__end_of_ChargeTimer_GetCount:
;; =============== function _ChargeTimer_GetCount ends ============

	signat	_ChargeTimer_GetCount,90
	global	_LEDTimer_INTConfig
psect	text1826,local,class=CODE,delta=2
global __ptext1826
__ptext1826:

;; *************** function _LEDTimer_INTConfig *****************
;; Defined at:
;;		line 119 in file "ms83fxx02_led_timer.c"
;; Parameters:    Size  Location     Type
;;  NewState        1    wreg     enum E1482
;; Auto vars:     Size  Location     Type
;;  NewState        1    4[BANK0 ] enum E1482
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Driver_Init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1826
	file	"ms83fxx02_led_timer.c"
	line	119
	global	__size_of_LEDTimer_INTConfig
	__size_of_LEDTimer_INTConfig	equ	__end_of_LEDTimer_INTConfig-_LEDTimer_INTConfig
	
_LEDTimer_INTConfig:	
	opt	stack 3
; Regs used in _LEDTimer_INTConfig: [wreg]
;LEDTimer_INTConfig@NewState stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LEDTimer_INTConfig@NewState)
	line	120
	
l16653:	
;ms83fxx02_led_timer.c: 120: if(NewState != DISABLE)
	movf	(LEDTimer_INTConfig@NewState),w
	skipz
	goto	u3590
	goto	l7711
u3590:
	line	123
	
l16655:	
;ms83fxx02_led_timer.c: 121: {
;ms83fxx02_led_timer.c: 123: TMR3IE = 1;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bsf	(2177/8)^0100h,(2177)&7
	line	124
;ms83fxx02_led_timer.c: 124: PEIE = 1;
	bsf	(94/8),(94)&7
	line	125
;ms83fxx02_led_timer.c: 125: GIE = 1;
	bsf	(95/8),(95)&7
	line	126
;ms83fxx02_led_timer.c: 126: }
	goto	l7713
	line	127
	
l7711:	
	line	130
;ms83fxx02_led_timer.c: 127: else
;ms83fxx02_led_timer.c: 128: {
;ms83fxx02_led_timer.c: 130: TMR3IE = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2177/8)^0100h,(2177)&7
	goto	l7713
	line	131
	
l7712:	
	line	132
	
l7713:	
	return
	opt stack 0
GLOBAL	__end_of_LEDTimer_INTConfig
	__end_of_LEDTimer_INTConfig:
;; =============== function _LEDTimer_INTConfig ends ============

	signat	_LEDTimer_INTConfig,4216
	global	_LEDTimer_Cmd
psect	text1827,local,class=CODE,delta=2
global __ptext1827
__ptext1827:

;; *************** function _LEDTimer_Cmd *****************
;; Defined at:
;;		line 43 in file "ms83fxx02_led_timer.c"
;; Parameters:    Size  Location     Type
;;  period_type     1    wreg     enum E1491
;;  NewState        1    4[BANK0 ] enum E1482
;; Auto vars:     Size  Location     Type
;;  period_type     1    6[BANK0 ] enum E1491
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Driver_Init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1827
	file	"ms83fxx02_led_timer.c"
	line	43
	global	__size_of_LEDTimer_Cmd
	__size_of_LEDTimer_Cmd	equ	__end_of_LEDTimer_Cmd-_LEDTimer_Cmd
	
_LEDTimer_Cmd:	
	opt	stack 3
; Regs used in _LEDTimer_Cmd: [wreg+status,2+status,0]
;LEDTimer_Cmd@period_type stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LEDTimer_Cmd@period_type)
	line	44
	
l16617:	
;ms83fxx02_led_timer.c: 44: if(NewState != DISABLE)
	movf	(LEDTimer_Cmd@NewState),w
	skipz
	goto	u3570
	goto	l7704
u3570:
	line	46
	
l16619:	
;ms83fxx02_led_timer.c: 45: {
;ms83fxx02_led_timer.c: 46: if(period_type == TIM_PERIOD_0_33ms)
	movf	(LEDTimer_Cmd@period_type),w
	xorlw	02h
	skipz
	goto	u3581
	goto	u3580
u3581:
	goto	l16633
u3580:
	line	48
	
l16621:	
;ms83fxx02_led_timer.c: 47: {
;ms83fxx02_led_timer.c: 48: current_period_type = TIM_PERIOD_0_33ms;
	movlw	(02h)
	movwf	(??_LEDTimer_Cmd+0)+0
	movf	(??_LEDTimer_Cmd+0)+0,w
	movwf	(_current_period_type)	;volatile
	line	54
	
l16623:	
;ms83fxx02_led_timer.c: 54: TMR3ON = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2178/8)^0100h,(2178)&7
	line	57
;ms83fxx02_led_timer.c: 57: PWM3CR0 = 0b01100010;
	movlw	(062h)
	movwf	(271)^0100h	;volatile
	line	60
;ms83fxx02_led_timer.c: 60: PWM3CR1 = 0b00111000;
	movlw	(038h)
	movwf	(272)^0100h	;volatile
	line	63
;ms83fxx02_led_timer.c: 63: T3CKDIV = 19;
	movlw	(013h)
	movwf	(273)^0100h	;volatile
	line	65
;ms83fxx02_led_timer.c: 65: TMR3H = 0x0F;
	movlw	(0Fh)
	movwf	(269)^0100h	;volatile
	line	66
	
l16625:	
;ms83fxx02_led_timer.c: 66: TMR3L = 0;
	clrf	(268)^0100h	;volatile
	line	67
	
l16627:	
;ms83fxx02_led_timer.c: 67: PR3L = 0xFF;
	movlw	(0FFh)
	movwf	(270)^0100h	;volatile
	line	70
	
l16629:	
;ms83fxx02_led_timer.c: 70: TMR3IF = 0;
	bcf	(2176/8)^0100h,(2176)&7
	line	73
	
l16631:	
;ms83fxx02_led_timer.c: 73: TMR3ON = 1;
	bsf	(2178/8)^0100h,(2178)&7
	line	74
;ms83fxx02_led_timer.c: 74: }
	goto	l7708
	line	75
	
l7705:	
	line	77
	
l16633:	
;ms83fxx02_led_timer.c: 75: else
;ms83fxx02_led_timer.c: 76: {
;ms83fxx02_led_timer.c: 77: current_period_type = TIM_PERIOD_1s;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_current_period_type)	;volatile
	bsf	status,0
	rlf	(_current_period_type),f	;volatile
	line	83
	
l16635:	
;ms83fxx02_led_timer.c: 83: TMR3ON = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2178/8)^0100h,(2178)&7
	line	86
	
l16637:	
;ms83fxx02_led_timer.c: 86: PWM3CR0 = 0b01100010;
	movlw	(062h)
	movwf	(271)^0100h	;volatile
	line	89
	
l16639:	
;ms83fxx02_led_timer.c: 89: PWM3CR1 = 0b00111000;
	movlw	(038h)
	movwf	(272)^0100h	;volatile
	line	92
	
l16641:	
;ms83fxx02_led_timer.c: 92: T3CKDIV = 60;
	movlw	(03Ch)
	movwf	(273)^0100h	;volatile
	line	94
	
l16643:	
;ms83fxx02_led_timer.c: 94: TMR3H = 0x0F;
	movlw	(0Fh)
	movwf	(269)^0100h	;volatile
	line	95
	
l16645:	
;ms83fxx02_led_timer.c: 95: TMR3L = 0;
	clrf	(268)^0100h	;volatile
	line	96
	
l16647:	
;ms83fxx02_led_timer.c: 96: PR3L = 0xFF;
	movlw	(0FFh)
	movwf	(270)^0100h	;volatile
	line	99
	
l16649:	
;ms83fxx02_led_timer.c: 99: TMR3IF = 0;
	bcf	(2176/8)^0100h,(2176)&7
	line	102
	
l16651:	
;ms83fxx02_led_timer.c: 102: TMR3ON = 1;
	bsf	(2178/8)^0100h,(2178)&7
	goto	l7708
	line	103
	
l7706:	
	line	104
;ms83fxx02_led_timer.c: 103: }
;ms83fxx02_led_timer.c: 104: }
	goto	l7708
	line	105
	
l7704:	
	line	108
;ms83fxx02_led_timer.c: 105: else
;ms83fxx02_led_timer.c: 106: {
;ms83fxx02_led_timer.c: 108: TMR3ON = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2178/8)^0100h,(2178)&7
	goto	l7708
	line	109
	
l7707:	
	line	110
	
l7708:	
	return
	opt stack 0
GLOBAL	__end_of_LEDTimer_Cmd
	__end_of_LEDTimer_Cmd:
;; =============== function _LEDTimer_Cmd ends ============

	signat	_LEDTimer_Cmd,8312
	global	_ADC_Init
psect	text1828,local,class=CODE,delta=2
global __ptext1828
__ptext1828:

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 77 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Driver_Init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1828
	file	"ms83fxx02_pwr.c"
	line	77
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
	opt	stack 3
; Regs used in _ADC_Init: [wreg+status,2+status,0]
;ADC_Init@channel stored from wreg
	line	79
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ADC_Init@channel)
	
l16607:	
;ms83fxx02_pwr.c: 79: ANSEL |= (0x01 << channel);
	movlw	(01h)
	movwf	(??_ADC_Init+0)+0
	incf	(ADC_Init@channel),w
	goto	u3564
u3565:
	clrc
	rlf	(??_ADC_Init+0)+0,f
u3564:
	addlw	-1
	skipz
	goto	u3565
	movf	0+(??_ADC_Init+0)+0,w
	movwf	(??_ADC_Init+1)+0
	movf	(??_ADC_Init+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(145)^080h,f	;volatile
	line	81
	
l16609:	
;ms83fxx02_pwr.c: 81: TRISC |= 0b00000100;
	bsf	(135)^080h+(2/8),(2)&7	;volatile
	line	84
	
l16611:	
;ms83fxx02_pwr.c: 84: ADCON1 = 0b01010000;
	movlw	(050h)
	movwf	(159)^080h	;volatile
	line	87
	
l16613:	
;ms83fxx02_pwr.c: 87: ADCON0 = 0b10000000;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	89
	
l16615:	
;ms83fxx02_pwr.c: 89: ADIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1129/8)^080h,(1129)&7
	line	90
	
l10026:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
;; =============== function _ADC_Init ends ============

	signat	_ADC_Init,4216
	global	_Board_Init
psect	text1829,local,class=CODE,delta=2
global __ptext1829
__ptext1829:

;; *************** function _Board_Init *****************
;; Defined at:
;;		line 34 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1829
	file	"main.c"
	line	34
	global	__size_of_Board_Init
	__size_of_Board_Init	equ	__end_of_Board_Init-_Board_Init
	
_Board_Init:	
	opt	stack 3
; Regs used in _Board_Init: [wreg+status,2]
	line	35
	
l16589:	
;main.c: 35: PCON = 0b00000011;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(142)^080h	;volatile
	line	36
;main.c: 36: MSCKCON = 0b00010000;
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	line	38
;main.c: 38: WDTCON = 0b00001110;
	movlw	(0Eh)
	movwf	(24)	;volatile
	line	40
;main.c: 40: OSCCON = 0b01010000;
	movlw	(050h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	41
	
l16591:	
;main.c: 41: INTCON = 0b00000000;
	clrf	(11)	;volatile
	line	42
	
l16593:	
;main.c: 42: PIE1 = 0b00000000;
	clrf	(140)^080h	;volatile
	line	43
	
l16595:	
;main.c: 43: PIE2 = 0b00000000;
	clrf	(141)^080h	;volatile
	line	44
	
l16597:	
;main.c: 44: PIR1 = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(12)	;volatile
	line	45
	
l16599:	
;main.c: 45: PIR2 = 0b00000000;
	clrf	(13)	;volatile
	line	46
	
l16601:	
;main.c: 46: WPD = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	47
;main.c: 47: ANSEL = 0b01000000;
	movlw	(040h)
	movwf	(145)^080h	;volatile
	line	48
	
l16603:	
;main.c: 48: TRISA = 0b00000000;
	clrf	(133)^080h	;volatile
	line	49
	
l16605:	
;main.c: 49: WPUA = 0b00000000;
	clrf	(149)^080h	;volatile
	line	50
	
l1133:	
	return
	opt stack 0
GLOBAL	__end_of_Board_Init
	__end_of_Board_Init:
;; =============== function _Board_Init ends ============

	signat	_Board_Init,88
	global	_ISR
psect	text1830,local,class=CODE,delta=2
global __ptext1830
__ptext1830:

;; *************** function _ISR *****************
;; Defined at:
;;		line 213 in file "main.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_KEY_IntrHandler
;;		_DebounceTimer_IntrHandler
;;		i1_GetDeviceMode
;;		_SwitchModeTimer_IntrHandler
;;		_LEDTimer_IntrHandler
;;		_ChargeTimer_IntrHandler
;;		_SleepLedTimer_IntrHandler
;;		_MotorOperTimer_IntrHandler
;;		_ChargeDetect_IntrHandler
;;		_ADC_IntrHandler
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1830
	file	"main.c"
	line	213
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text1830
	line	214
	
i1l16711:	
;main.c: 214: KEY_IntrHandler();
	fcall	_KEY_IntrHandler
	line	215
	
i1l16713:	
;main.c: 215: DebounceTimer_IntrHandler();
	fcall	_DebounceTimer_IntrHandler
	line	217
	
i1l16715:	
;main.c: 217: if(RUN_MODE == GetDeviceMode())
	fcall	i1_GetDeviceMode
	iorlw	0
	skipz
	goto	u366_21
	goto	u366_20
u366_21:
	goto	i1l16721
u366_20:
	line	219
	
i1l16717:	
;main.c: 218: {
;main.c: 219: SwitchModeTimer_IntrHandler();
	fcall	_SwitchModeTimer_IntrHandler
	line	220
	
i1l16719:	
;main.c: 220: LEDTimer_IntrHandler();
	fcall	_LEDTimer_IntrHandler
	line	221
;main.c: 221: }
	goto	i1l16725
	line	222
	
i1l1167:	
	line	224
	
i1l16721:	
;main.c: 222: else
;main.c: 223: {
;main.c: 224: ChargeTimer_IntrHandler();
	fcall	_ChargeTimer_IntrHandler
	line	225
	
i1l16723:	
;main.c: 225: SleepLedTimer_IntrHandler();
	fcall	_SleepLedTimer_IntrHandler
	goto	i1l16725
	line	226
	
i1l1168:	
	line	228
	
i1l16725:	
;main.c: 226: }
;main.c: 228: MotorOperTimer_IntrHandler();
	fcall	_MotorOperTimer_IntrHandler
	line	230
;main.c: 230: ChargeDetect_IntrHandler();
	fcall	_ChargeDetect_IntrHandler
	line	232
	
i1l16727:	
;main.c: 232: ADC_IntrHandler();
	fcall	_ADC_IntrHandler
	line	233
	
i1l1169:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_ISR+3),w
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^00h,w
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
psect	text1831,local,class=CODE,delta=2
global __ptext1831
__ptext1831:

;; *************** function _MotorOperTimer_IntrHandler *****************
;; Defined at:
;;		line 325 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_Motor_CheckRunLimit
;;		___awmod
;;		i1_MotorOperationTimer_Init
;;		i1_Motor_Stop
;;		i1_MotorOperationTimer_Stop
;;		i1_Motor_SetStatus
;;		i1_Motor_Init
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1831
	file	"ms83fxx02_motor.c"
	line	325
	global	__size_of_MotorOperTimer_IntrHandler
	__size_of_MotorOperTimer_IntrHandler	equ	__end_of_MotorOperTimer_IntrHandler-_MotorOperTimer_IntrHandler
	
_MotorOperTimer_IntrHandler:	
	opt	stack 0
; Regs used in _MotorOperTimer_IntrHandler: [wreg+status,2+status,0+pclath+cstack]
	line	326
	
i1l16807:	
;ms83fxx02_motor.c: 326: if(TMR4IE && TMR4IF)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2225/8)^0100h,(2225)&7
	goto	u383_21
	goto	u383_20
u383_21:
	goto	i1l8884
u383_20:
	
i1l16809:	
	btfss	(2224/8)^0100h,(2224)&7
	goto	u384_21
	goto	u384_20
u384_21:
	goto	i1l8884
u384_20:
	line	328
	
i1l16811:	
;ms83fxx02_motor.c: 327: {
;ms83fxx02_motor.c: 328: if(!Motor_CheckRunLimit())
	fcall	i1_Motor_CheckRunLimit
	iorlw	0
	skipz
	goto	u385_21
	goto	u385_20
u385_21:
	goto	i1l16839
u385_20:
	line	330
	
i1l16813:	
;ms83fxx02_motor.c: 329: {
;ms83fxx02_motor.c: 330: if(motor_timing_running_flag)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_motor_timing_running_flag),w
	skipz
	goto	u386_20
	goto	i1l16823
u386_20:
	line	332
	
i1l16815:	
;ms83fxx02_motor.c: 331: {
;ms83fxx02_motor.c: 332: motor_intr_count++;
	movlw	(01h)
	movwf	(??_MotorOperTimer_IntrHandler+0)+0
	movf	(??_MotorOperTimer_IntrHandler+0)+0,w
	addwf	(_motor_intr_count),f	;volatile
	line	333
	
i1l16817:	
;ms83fxx02_motor.c: 333: if((motor_intr_count % 5) == 0)
	movlw	low(05h)
	movwf	(?___awmod)
	movlw	high(05h)
	movwf	((?___awmod))+1
	movf	(_motor_intr_count),w	;volatile
	movwf	(??_MotorOperTimer_IntrHandler+0)+0
	clrf	(??_MotorOperTimer_IntrHandler+0)+0+1
	movf	0+(??_MotorOperTimer_IntrHandler+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_MotorOperTimer_IntrHandler+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	((1+(?___awmod))),w
	iorwf	((0+(?___awmod))),w
	skipz
	goto	u387_21
	goto	u387_20
u387_21:
	goto	i1l16843
u387_20:
	line	335
	
i1l16819:	
;ms83fxx02_motor.c: 334: {
;ms83fxx02_motor.c: 335: motor_timing_running_flag = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_motor_timing_running_flag)
	line	336
	
i1l16821:	
;ms83fxx02_motor.c: 336: MotorOperationTimer_Init(MotorOperationTimer_0_3s);
	movlw	(02h)
	fcall	i1_MotorOperationTimer_Init
	goto	i1l16843
	line	337
	
i1l8879:	
	line	338
;ms83fxx02_motor.c: 337: }
;ms83fxx02_motor.c: 338: }
	goto	i1l16843
	line	339
	
i1l8878:	
	line	341
	
i1l16823:	
;ms83fxx02_motor.c: 339: else
;ms83fxx02_motor.c: 340: {
;ms83fxx02_motor.c: 341: if(motor_intr_count >= 20)
	movlw	(014h)
	subwf	(_motor_intr_count),w	;volatile
	skipc
	goto	u388_21
	goto	u388_20
u388_21:
	goto	i1l16835
u388_20:
	line	343
	
i1l16825:	
;ms83fxx02_motor.c: 342: {
;ms83fxx02_motor.c: 343: motor_intr_count = 0;
	clrf	(_motor_intr_count)	;volatile
	line	344
	
i1l16827:	
;ms83fxx02_motor.c: 344: motor_oper_record++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_motor_oper_record),f	;volatile
	skipnc
	incf	(_motor_oper_record+1),f	;volatile
	movlw	high(01h)
	addwf	(_motor_oper_record+1),f	;volatile
	line	345
	
i1l16829:	
;ms83fxx02_motor.c: 345: Motor_Stop();
	fcall	i1_Motor_Stop
	line	346
	
i1l16831:	
;ms83fxx02_motor.c: 346: MotorOperationTimer_Stop();
	fcall	i1_MotorOperationTimer_Stop
	line	347
	
i1l16833:	
;ms83fxx02_motor.c: 347: Motor_SetStatus(MOTOR_MODE_STOP);
	movlw	(01h)
	fcall	i1_Motor_SetStatus
	line	348
;ms83fxx02_motor.c: 348: }
	goto	i1l16837
	line	349
	
i1l8881:	
	line	351
	
i1l16835:	
;ms83fxx02_motor.c: 349: else
;ms83fxx02_motor.c: 350: {
;ms83fxx02_motor.c: 351: Motor_Init(motor_status);
	movf	(_motor_status),w	;volatile
	fcall	i1_Motor_Init
	line	352
;ms83fxx02_motor.c: 352: MotorOperationTimer_Init(MotorOperationTimer_30s);
	movlw	(01h)
	fcall	i1_MotorOperationTimer_Init
	goto	i1l16837
	line	353
	
i1l8882:	
	line	355
	
i1l16837:	
;ms83fxx02_motor.c: 353: }
;ms83fxx02_motor.c: 355: motor_timing_running_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_motor_timing_running_flag)
	bsf	status,0
	rlf	(_motor_timing_running_flag),f
	goto	i1l16843
	line	356
	
i1l8880:	
	line	357
;ms83fxx02_motor.c: 356: }
;ms83fxx02_motor.c: 357: }
	goto	i1l16843
	line	358
	
i1l8877:	
	line	360
	
i1l16839:	
;ms83fxx02_motor.c: 358: else
;ms83fxx02_motor.c: 359: {
;ms83fxx02_motor.c: 360: key_press_time_count = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_key_press_time_count)	;volatile
	bsf	status,0
	rlf	(_key_press_time_count),f	;volatile
	line	361
	
i1l16841:	
;ms83fxx02_motor.c: 361: MotorOperationTimer_Stop();
	fcall	i1_MotorOperationTimer_Stop
	goto	i1l16843
	line	362
	
i1l8883:	
	line	363
	
i1l16843:	
;ms83fxx02_motor.c: 362: }
;ms83fxx02_motor.c: 363: TMR4IF = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2224/8)^0100h,(2224)&7
	goto	i1l8884
	line	364
	
i1l8876:	
	line	365
	
i1l8884:	
	return
	opt stack 0
GLOBAL	__end_of_MotorOperTimer_IntrHandler
	__end_of_MotorOperTimer_IntrHandler:
;; =============== function _MotorOperTimer_IntrHandler ends ============

	signat	_MotorOperTimer_IntrHandler,88
	global	_LEDTimer_IntrHandler
psect	text1832,local,class=CODE,delta=2
global __ptext1832
__ptext1832:

;; *************** function _LEDTimer_IntrHandler *****************
;; Defined at:
;;		line 233 in file "ms83fxx02_led_timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_GPIO_ReadInputDataBit
;;		i1_LED_UnderVoltageOutput
;;		_LED_DisplayRunLimit
;;		_ADC_Enable
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1832
	file	"ms83fxx02_led_timer.c"
	line	233
	global	__size_of_LEDTimer_IntrHandler
	__size_of_LEDTimer_IntrHandler	equ	__end_of_LEDTimer_IntrHandler-_LEDTimer_IntrHandler
	
_LEDTimer_IntrHandler:	
	opt	stack 0
; Regs used in _LEDTimer_IntrHandler: [wreg+status,2+status,0+pclath+cstack]
	line	234
	
i1l16777:	
;ms83fxx02_led_timer.c: 234: if(TMR3IE && TMR3IF)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2177/8)^0100h,(2177)&7
	goto	u375_21
	goto	u375_20
u375_21:
	goto	i1l7729
u375_20:
	
i1l16779:	
	btfss	(2176/8)^0100h,(2176)&7
	goto	u376_21
	goto	u376_20
u376_21:
	goto	i1l7729
u376_20:
	line	238
	
i1l16781:	
;ms83fxx02_led_timer.c: 235: {
;ms83fxx02_led_timer.c: 238: if(under_volt_display_En)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_under_volt_display_En),w	;volatile
	skipz
	goto	u377_20
	goto	i1l16785
u377_20:
	line	240
	
i1l16783:	
;ms83fxx02_led_timer.c: 239: {
;ms83fxx02_led_timer.c: 240: LED_UnderVoltageOutput((BitAction)(1 - GPIO_ReadInputDataBit(GPIOA, ((uint8_t)0x00000040))));
	movlw	(040h)
	movwf	(??_LEDTimer_IntrHandler+0)+0
	movf	(??_LEDTimer_IntrHandler+0)+0,w
	movwf	(?i1_GPIO_ReadInputDataBit)
	movlw	(0)
	fcall	i1_GPIO_ReadInputDataBit
	xorlw	0ffh
	addlw	1
	addlw	01h
	fcall	i1_LED_UnderVoltageOutput
	goto	i1l16785
	line	241
	
i1l7727:	
	line	243
	
i1l16785:	
;ms83fxx02_led_timer.c: 241: }
;ms83fxx02_led_timer.c: 243: if(run_limit_display_en)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_run_limit_display_en),w	;volatile
	skipz
	goto	u378_20
	goto	i1l7728
u378_20:
	line	245
	
i1l16787:	
;ms83fxx02_led_timer.c: 244: {
;ms83fxx02_led_timer.c: 245: LED_DisplayRunLimit();
	fcall	_LED_DisplayRunLimit
	line	246
	
i1l7728:	
	line	248
;ms83fxx02_led_timer.c: 246: }
;ms83fxx02_led_timer.c: 248: ADC_Enable((0x06));
	movlw	(06h)
	fcall	_ADC_Enable
	line	251
	
i1l16789:	
;ms83fxx02_led_timer.c: 251: TMR3IF = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2176/8)^0100h,(2176)&7
	goto	i1l7729
	line	252
	
i1l7726:	
	line	253
	
i1l7729:	
	return
	opt stack 0
GLOBAL	__end_of_LEDTimer_IntrHandler
	__end_of_LEDTimer_IntrHandler:
;; =============== function _LEDTimer_IntrHandler ends ============

	signat	_LEDTimer_IntrHandler,88
	global	i1_MotorOperationTimer_Stop
psect	text1833,local,class=CODE,delta=2
global __ptext1833
__ptext1833:

;; *************** function i1_MotorOperationTimer_Stop *****************
;; Defined at:
;;		line 283 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
psect	text1833
	file	"ms83fxx02_motor.c"
	line	283
	global	__size_ofi1_MotorOperationTimer_Stop
	__size_ofi1_MotorOperationTimer_Stop	equ	__end_ofi1_MotorOperationTimer_Stop-i1_MotorOperationTimer_Stop
	
i1_MotorOperationTimer_Stop:	
	opt	stack 0
; Regs used in i1_MotorOperationTimer_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	285
	
i1l17597:	
;ms83fxx02_motor.c: 285: TMR4ON = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2226/8)^0100h,(2226)&7
	line	287
;ms83fxx02_motor.c: 287: TMR4IE = 0;
	bcf	(2225/8)^0100h,(2225)&7
	line	289
	
i1l17599:	
;ms83fxx02_motor.c: 289: if(!Motor_CheckRunLimit())
	fcall	i1_Motor_CheckRunLimit
	iorlw	0
	skipz
	goto	u521_21
	goto	u521_20
u521_21:
	goto	i1l8868
u521_20:
	line	292
	
i1l17601:	
;ms83fxx02_motor.c: 290: {
;ms83fxx02_motor.c: 292: motor_timing_running_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_motor_timing_running_flag)
	bsf	status,0
	rlf	(_motor_timing_running_flag),f
	line	293
	
i1l17603:	
;ms83fxx02_motor.c: 293: motor_intr_count = 0;
	clrf	(_motor_intr_count)	;volatile
	goto	i1l8868
	line	294
	
i1l8867:	
	line	295
	
i1l8868:	
	return
	opt stack 0
GLOBAL	__end_ofi1_MotorOperationTimer_Stop
	__end_ofi1_MotorOperationTimer_Stop:
;; =============== function i1_MotorOperationTimer_Stop ends ============

	signat	i1_MotorOperationTimer_Stop,88
	global	i1_Motor_Stop
psect	text1834,local,class=CODE,delta=2
global __ptext1834
__ptext1834:

;; *************** function i1_Motor_Stop *****************
;; Defined at:
;;		line 185 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_GPIO_WriteBit
;; This function is called by:
;;		_MotorOperTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1834
	file	"ms83fxx02_motor.c"
	line	185
	global	__size_ofi1_Motor_Stop
	__size_ofi1_Motor_Stop	equ	__end_ofi1_Motor_Stop-i1_Motor_Stop
	
i1_Motor_Stop:	
	opt	stack 0
; Regs used in i1_Motor_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	190
	
i1l17551:	
;ms83fxx02_motor.c: 190: TRISC |= (0x03 << 4);
	movlw	(030h)
	movwf	(??i1_Motor_Stop+0)+0
	movf	(??i1_Motor_Stop+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(135)^080h,f	;volatile
	line	192
	
i1l17553:	
;ms83fxx02_motor.c: 192: TMR2ON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(146/8),(146)&7
	line	196
	
i1l17555:	
;ms83fxx02_motor.c: 196: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000004), Bit_RESET);
	movlw	(04h)
	movwf	(??i1_Motor_Stop+0)+0
	movf	(??i1_Motor_Stop+0)+0,w
	movwf	(?i1_GPIO_WriteBit)
	clrf	0+(?i1_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	i1_GPIO_WriteBit
	line	197
	
i1l17557:	
;ms83fxx02_motor.c: 197: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000008), Bit_RESET);
	movlw	(08h)
	movwf	(??i1_Motor_Stop+0)+0
	movf	(??i1_Motor_Stop+0)+0,w
	movwf	(?i1_GPIO_WriteBit)
	clrf	0+(?i1_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	i1_GPIO_WriteBit
	line	198
	
i1l17559:	
;ms83fxx02_motor.c: 198: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), Bit_RESET);
	clrf	(?i1_GPIO_WriteBit)
	bsf	status,0
	rlf	(?i1_GPIO_WriteBit),f
	clrf	0+(?i1_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	i1_GPIO_WriteBit
	line	199
	
i1l8853:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Motor_Stop
	__end_ofi1_Motor_Stop:
;; =============== function i1_Motor_Stop ends ============

	signat	i1_Motor_Stop,88
	global	i1_LED_UnderVoltageOutput
psect	text1835,local,class=CODE,delta=2
global __ptext1835
__ptext1835:

;; *************** function i1_LED_UnderVoltageOutput *****************
;; Defined at:
;;		line 85 in file "ms83fxx02_led.c"
;; Parameters:    Size  Location     Type
;;  LED_UnderVol    1    wreg     enum E1499
;; Auto vars:     Size  Location     Type
;;  LED_UnderVol    1    9[COMMON] enum E1499
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_GPIO_WriteBit
;; This function is called by:
;;		_LEDTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1835
	file	"ms83fxx02_led.c"
	line	85
	global	__size_ofi1_LED_UnderVoltageOutput
	__size_ofi1_LED_UnderVoltageOutput	equ	__end_ofi1_LED_UnderVoltageOutput-i1_LED_UnderVoltageOutput
	
i1_LED_UnderVoltageOutput:	
	opt	stack 0
; Regs used in i1_LED_UnderVoltageOutput: [wreg+status,2+status,0+pclath+cstack]
;i1LED_UnderVoltageOutput@BitVal stored from wreg
	movwf	(i1LED_UnderVoltageOutput@BitVal)
	line	86
	
i1l17517:	
;ms83fxx02_led.c: 86: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000040), BitVal);
	movlw	(040h)
	movwf	(??i1_LED_UnderVoltageOutput+0)+0
	movf	(??i1_LED_UnderVoltageOutput+0)+0,w
	movwf	(?i1_GPIO_WriteBit)
	movf	(i1LED_UnderVoltageOutput@BitVal),w
	movwf	(??i1_LED_UnderVoltageOutput+1)+0
	movf	(??i1_LED_UnderVoltageOutput+1)+0,w
	movwf	0+(?i1_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	i1_GPIO_WriteBit
	line	87
	
i1l6625:	
	return
	opt stack 0
GLOBAL	__end_ofi1_LED_UnderVoltageOutput
	__end_ofi1_LED_UnderVoltageOutput:
;; =============== function i1_LED_UnderVoltageOutput ends ============

	signat	i1_LED_UnderVoltageOutput,88
	global	_LED_DisplayRunLimit
psect	text1836,local,class=CODE,delta=2
global __ptext1836
__ptext1836:

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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          3       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_GPIO_ReadInputDataBit
;;		i1_GPIO_WriteBit
;; This function is called by:
;;		_LEDTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1836
	file	"ms83fxx02_led.c"
	line	64
	global	__size_of_LED_DisplayRunLimit
	__size_of_LED_DisplayRunLimit	equ	__end_of_LED_DisplayRunLimit-_LED_DisplayRunLimit
	
_LED_DisplayRunLimit:	
	opt	stack 0
; Regs used in _LED_DisplayRunLimit: [wreg+status,2+status,0+pclath+cstack]
	line	65
	
i1l16987:	
;ms83fxx02_led.c: 65: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000004), (BitAction)(1 - GPIO_ReadInputDataBit(GPIOA, ((uint8_t)0x00000004))));
	movlw	(04h)
	movwf	(??_LED_DisplayRunLimit+0)+0
	movf	(??_LED_DisplayRunLimit+0)+0,w
	movwf	(?i1_GPIO_WriteBit)
	movlw	(04h)
	movwf	(??_LED_DisplayRunLimit+1)+0
	movf	(??_LED_DisplayRunLimit+1)+0,w
	movwf	(?i1_GPIO_ReadInputDataBit)
	movlw	(0)
	fcall	i1_GPIO_ReadInputDataBit
	xorlw	0ffh
	addlw	1
	addlw	01h
	movwf	(??_LED_DisplayRunLimit+2)+0
	movf	(??_LED_DisplayRunLimit+2)+0,w
	movwf	0+(?i1_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	i1_GPIO_WriteBit
	line	66
;ms83fxx02_led.c: 66: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000008), (BitAction)(1 - GPIO_ReadInputDataBit(GPIOA, ((uint8_t)0x00000008))));
	movlw	(08h)
	movwf	(??_LED_DisplayRunLimit+0)+0
	movf	(??_LED_DisplayRunLimit+0)+0,w
	movwf	(?i1_GPIO_WriteBit)
	movlw	(08h)
	movwf	(??_LED_DisplayRunLimit+1)+0
	movf	(??_LED_DisplayRunLimit+1)+0,w
	movwf	(?i1_GPIO_ReadInputDataBit)
	movlw	(0)
	fcall	i1_GPIO_ReadInputDataBit
	xorlw	0ffh
	addlw	1
	addlw	01h
	movwf	(??_LED_DisplayRunLimit+2)+0
	movf	(??_LED_DisplayRunLimit+2)+0,w
	movwf	0+(?i1_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	i1_GPIO_WriteBit
	line	67
;ms83fxx02_led.c: 67: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), (BitAction)(1 - GPIO_ReadInputDataBit(GPIOC, ((uint8_t)0x00000001))));
	clrf	(?i1_GPIO_WriteBit)
	bsf	status,0
	rlf	(?i1_GPIO_WriteBit),f
	clrf	(?i1_GPIO_ReadInputDataBit)
	bsf	status,0
	rlf	(?i1_GPIO_ReadInputDataBit),f
	movlw	(01h)
	fcall	i1_GPIO_ReadInputDataBit
	xorlw	0ffh
	addlw	1
	addlw	01h
	movwf	(??_LED_DisplayRunLimit+0)+0
	movf	(??_LED_DisplayRunLimit+0)+0,w
	movwf	0+(?i1_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	i1_GPIO_WriteBit
	line	68
	
i1l6619:	
	return
	opt stack 0
GLOBAL	__end_of_LED_DisplayRunLimit
	__end_of_LED_DisplayRunLimit:
;; =============== function _LED_DisplayRunLimit ends ============

	signat	_LED_DisplayRunLimit,88
	global	_ADC_IntrHandler
psect	text1837,local,class=CODE,delta=2
global __ptext1837
__ptext1837:

;; *************** function _ADC_IntrHandler *****************
;; Defined at:
;;		line 159 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ADC_ReadData
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1837
	file	"ms83fxx02_pwr.c"
	line	159
	global	__size_of_ADC_IntrHandler
	__size_of_ADC_IntrHandler	equ	__end_of_ADC_IntrHandler-_ADC_IntrHandler
	
_ADC_IntrHandler:	
	opt	stack 1
; Regs used in _ADC_IntrHandler: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	160
	
i1l16851:	
;ms83fxx02_pwr.c: 160: if(ADIE && ADIF)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1129/8)^080h,(1129)&7
	goto	u390_21
	goto	u390_20
u390_21:
	goto	i1l10037
u390_20:
	
i1l16853:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(105/8),(105)&7
	goto	u391_21
	goto	u391_20
u391_21:
	goto	i1l10037
u391_20:
	line	162
	
i1l16855:	
;ms83fxx02_pwr.c: 161: {
;ms83fxx02_pwr.c: 162: battery_value[battery_sample_count++] = ADC_ReadData();
	fcall	_ADC_ReadData
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_battery_sample_count),w	;volatile
	movwf	(??_ADC_IntrHandler+0)+0
	addwf	(??_ADC_IntrHandler+0)+0,w
	addlw	_battery_value&0ffh
	movwf	fsr0
	movf	(0+(?_ADC_ReadData)),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	(1+(?_ADC_ReadData)),w
	movwf	indf
	
i1l16857:	
	movlw	(01h)
	movwf	(??_ADC_IntrHandler+0)+0
	movf	(??_ADC_IntrHandler+0)+0,w
	addwf	(_battery_sample_count),f	;volatile
	line	164
	
i1l16859:	
;ms83fxx02_pwr.c: 164: if(battery_sample_count >= 10)
	movlw	(0Ah)
	subwf	(_battery_sample_count),w	;volatile
	skipc
	goto	u392_21
	goto	u392_20
u392_21:
	goto	i1l16865
u392_20:
	line	166
	
i1l16861:	
;ms83fxx02_pwr.c: 165: {
;ms83fxx02_pwr.c: 166: battery_sample_count = 0;
	clrf	(_battery_sample_count)	;volatile
	line	167
	
i1l16863:	
;ms83fxx02_pwr.c: 167: battery_handle_flag = 1;
	clrf	(_battery_handle_flag)	;volatile
	bsf	status,0
	rlf	(_battery_handle_flag),f	;volatile
	goto	i1l16865
	line	168
	
i1l10036:	
	line	169
	
i1l16865:	
;ms83fxx02_pwr.c: 168: }
;ms83fxx02_pwr.c: 169: ADIF = 0;
	bcf	(105/8),(105)&7
	goto	i1l10037
	line	170
	
i1l10035:	
	line	171
	
i1l10037:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_IntrHandler
	__end_of_ADC_IntrHandler:
;; =============== function _ADC_IntrHandler ends ============

	signat	_ADC_IntrHandler,88
	global	_ChargeDetect_IntrHandler
psect	text1838,local,class=CODE,delta=2
global __ptext1838
__ptext1838:

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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_GPIO_ReadInputDataBit
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1838
	file	"ms83fxx02_charge.c"
	line	80
	global	__size_of_ChargeDetect_IntrHandler
	__size_of_ChargeDetect_IntrHandler	equ	__end_of_ChargeDetect_IntrHandler-_ChargeDetect_IntrHandler
	
_ChargeDetect_IntrHandler:	
	opt	stack 1
; Regs used in _ChargeDetect_IntrHandler: [wreg+status,2+status,0+pclath+cstack]
	line	81
	
i1l16845:	
;ms83fxx02_charge.c: 81: if(PAIE & PAIF)
	movlw	1
	btfss	(91/8),(91)&7
	andlw	0
	btfss	(88/8),(88)&7
	andlw	0
	iorlw	0
	skipnz
	goto	u389_21
	goto	u389_20
u389_21:
	goto	i1l2265
u389_20:
	line	83
	
i1l16847:	
;ms83fxx02_charge.c: 82: {
;ms83fxx02_charge.c: 83: GPIO_ReadInputDataBit(GPIOA, ((uint8_t)0x00000010));
	movlw	(010h)
	movwf	(??_ChargeDetect_IntrHandler+0)+0
	movf	(??_ChargeDetect_IntrHandler+0)+0,w
	movwf	(?i1_GPIO_ReadInputDataBit)
	movlw	(0)
	fcall	i1_GPIO_ReadInputDataBit
	line	85
	
i1l16849:	
;ms83fxx02_charge.c: 85: PAIF = 0;
	bcf	(88/8),(88)&7
	goto	i1l2265
	line	86
	
i1l2264:	
	line	87
	
i1l2265:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeDetect_IntrHandler
	__end_of_ChargeDetect_IntrHandler:
;; =============== function _ChargeDetect_IntrHandler ends ============

	signat	_ChargeDetect_IntrHandler,88
	global	_SleepLedTimer_IntrHandler
psect	text1839,local,class=CODE,delta=2
global __ptext1839
__ptext1839:

;; *************** function _SleepLedTimer_IntrHandler *****************
;; Defined at:
;;		line 213 in file "ms83fxx02_sleepled.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_SleepLed_ChangeDuty
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1839
	file	"ms83fxx02_sleepled.c"
	line	213
	global	__size_of_SleepLedTimer_IntrHandler
	__size_of_SleepLedTimer_IntrHandler	equ	__end_of_SleepLedTimer_IntrHandler-_SleepLedTimer_IntrHandler
	
_SleepLedTimer_IntrHandler:	
	opt	stack 1
; Regs used in _SleepLedTimer_IntrHandler: [wreg+status,2+status,0+pclath+cstack]
	line	214
	
i1l16799:	
;ms83fxx02_sleepled.c: 214: if(TMR3IE && TMR3IF)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2177/8)^0100h,(2177)&7
	goto	u381_21
	goto	u381_20
u381_21:
	goto	i1l13334
u381_20:
	
i1l16801:	
	btfss	(2176/8)^0100h,(2176)&7
	goto	u382_21
	goto	u382_20
u382_21:
	goto	i1l13334
u382_20:
	line	216
	
i1l16803:	
;ms83fxx02_sleepled.c: 215: {
;ms83fxx02_sleepled.c: 216: SleepLed_ChangeDuty();
	fcall	_SleepLed_ChangeDuty
	line	217
	
i1l16805:	
;ms83fxx02_sleepled.c: 217: TMR3IF = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2176/8)^0100h,(2176)&7
	goto	i1l13334
	line	218
	
i1l13333:	
	line	219
	
i1l13334:	
	return
	opt stack 0
GLOBAL	__end_of_SleepLedTimer_IntrHandler
	__end_of_SleepLedTimer_IntrHandler:
;; =============== function _SleepLedTimer_IntrHandler ends ============

	signat	_SleepLedTimer_IntrHandler,88
	global	_DebounceTimer_IntrHandler
psect	text1840,local,class=CODE,delta=2
global __ptext1840
__ptext1840:

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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_GPIO_ReadInputDataBit
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1840
	file	"MS83FXX02_KEY.C"
	line	132
	global	__size_of_DebounceTimer_IntrHandler
	__size_of_DebounceTimer_IntrHandler	equ	__end_of_DebounceTimer_IntrHandler-_DebounceTimer_IntrHandler
	
_DebounceTimer_IntrHandler:	
	opt	stack 1
; Regs used in _DebounceTimer_IntrHandler: [wreg+status,2+status,0+pclath+cstack]
	line	133
	
i1l16741:	
;MS83FXX02_KEY.C: 133: if(TMR1IE && TMR1IF)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1120/8)^080h,(1120)&7
	goto	u369_21
	goto	u369_20
u369_21:
	goto	i1l5540
u369_20:
	
i1l16743:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u370_21
	goto	u370_20
u370_21:
	goto	i1l5540
u370_20:
	line	135
	
i1l16745:	
;MS83FXX02_KEY.C: 134: {
;MS83FXX02_KEY.C: 135: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	136
;MS83FXX02_KEY.C: 136: TMR1IE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1120/8)^080h,(1120)&7
	line	137
;MS83FXX02_KEY.C: 137: TMR1ON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(128/8),(128)&7
	line	139
	
i1l16747:	
;MS83FXX02_KEY.C: 139: if(key_status != GPIO_ReadInputDataBit(GPIOC, ((uint8_t)0x00000002)))
	movlw	(02h)
	movwf	(??_DebounceTimer_IntrHandler+0)+0
	movf	(??_DebounceTimer_IntrHandler+0)+0,w
	movwf	(?i1_GPIO_ReadInputDataBit)
	movlw	(01h)
	fcall	i1_GPIO_ReadInputDataBit
	xorwf	(_key_status),w	;volatile
	skipnz
	goto	u371_21
	goto	u371_20
u371_21:
	goto	i1l16751
u371_20:
	line	142
	
i1l16749:	
;MS83FXX02_KEY.C: 140: {
;MS83FXX02_KEY.C: 142: INTF = 0;
	bcf	(89/8),(89)&7
	line	143
;MS83FXX02_KEY.C: 143: INTE = 1;
	bsf	(92/8),(92)&7
	line	144
;MS83FXX02_KEY.C: 144: return ;
	goto	i1l5540
	line	145
	
i1l5539:	
	line	147
	
i1l16751:	
;MS83FXX02_KEY.C: 145: }
;MS83FXX02_KEY.C: 147: if(!key_status)
	movf	(_key_status),f
	skipz	;volatile
	goto	u372_21
	goto	u372_20
u372_21:
	goto	i1l16757
u372_20:
	line	150
	
i1l16753:	
;MS83FXX02_KEY.C: 148: {
;MS83FXX02_KEY.C: 150: key_press = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_key_press)	;volatile
	bsf	status,0
	rlf	(_key_press),f	;volatile
	line	153
	
i1l16755:	
;MS83FXX02_KEY.C: 153: INTEDG = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1038/8)^080h,(1038)&7
	line	154
;MS83FXX02_KEY.C: 154: }
	goto	i1l16761
	line	155
	
i1l5541:	
	line	158
	
i1l16757:	
;MS83FXX02_KEY.C: 155: else
;MS83FXX02_KEY.C: 156: {
;MS83FXX02_KEY.C: 158: key_release = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_key_release)	;volatile
	bsf	status,0
	rlf	(_key_release),f	;volatile
	line	161
	
i1l16759:	
;MS83FXX02_KEY.C: 161: INTEDG = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1038/8)^080h,(1038)&7
	goto	i1l16761
	line	162
	
i1l5542:	
	line	165
	
i1l16761:	
;MS83FXX02_KEY.C: 162: }
;MS83FXX02_KEY.C: 165: INTF = 0;
	bcf	(89/8),(89)&7
	line	166
	
i1l16763:	
;MS83FXX02_KEY.C: 166: INTE = 1;
	bsf	(92/8),(92)&7
	goto	i1l5540
	line	167
	
i1l5538:	
	line	168
	
i1l5540:	
	return
	opt stack 0
GLOBAL	__end_of_DebounceTimer_IntrHandler
	__end_of_DebounceTimer_IntrHandler:
;; =============== function _DebounceTimer_IntrHandler ends ============

	signat	_DebounceTimer_IntrHandler,88
	global	_KEY_IntrHandler
psect	text1841,local,class=CODE,delta=2
global __ptext1841
__ptext1841:

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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_TIM1_Init
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1841
	file	"MS83FXX02_KEY.C"
	line	114
	global	__size_of_KEY_IntrHandler
	__size_of_KEY_IntrHandler	equ	__end_of_KEY_IntrHandler-_KEY_IntrHandler
	
_KEY_IntrHandler:	
	opt	stack 1
; Regs used in _KEY_IntrHandler: [wreg+status,2+status,0+pclath+cstack]
	line	115
	
i1l16729:	
;MS83FXX02_KEY.C: 115: if(INTE && INTF)
	btfss	(92/8),(92)&7
	goto	u367_21
	goto	u367_20
u367_21:
	goto	i1l5535
u367_20:
	
i1l16731:	
	btfss	(89/8),(89)&7
	goto	u368_21
	goto	u368_20
u368_21:
	goto	i1l5535
u368_20:
	line	118
	
i1l16733:	
;MS83FXX02_KEY.C: 116: {
;MS83FXX02_KEY.C: 118: INTF = 0;
	bcf	(89/8),(89)&7
	line	119
;MS83FXX02_KEY.C: 119: INTE = 0;
	bcf	(92/8),(92)&7
	line	120
	
i1l16735:	
;MS83FXX02_KEY.C: 120: key_status = INTEDG;
	movlw	0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1038/8)^080h,(1038)&7
	movlw	1
	movwf	(??_KEY_IntrHandler+0)+0
	movf	(??_KEY_IntrHandler+0)+0,w
	movwf	(_key_status)	;volatile
	line	121
	
i1l16737:	
;MS83FXX02_KEY.C: 121: key_press_flag= 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_key_press_flag)	;volatile
	bsf	status,0
	rlf	(_key_press_flag),f	;volatile
	line	122
	
i1l16739:	
;MS83FXX02_KEY.C: 122: TIM1_Init();
	fcall	_TIM1_Init
	goto	i1l5535
	line	123
	
i1l5534:	
	line	124
	
i1l5535:	
	return
	opt stack 0
GLOBAL	__end_of_KEY_IntrHandler
	__end_of_KEY_IntrHandler:
;; =============== function _KEY_IntrHandler ends ============

	signat	_KEY_IntrHandler,88
	global	i1_GetDeviceMode
psect	text1842,local,class=CODE,delta=2
global __ptext1842
__ptext1842:

;; *************** function i1_GetDeviceMode *****************
;; Defined at:
;;		line 45 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E1584
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
psect	text1842
	file	"ms83fxx02_pwr.c"
	line	45
	global	__size_ofi1_GetDeviceMode
	__size_ofi1_GetDeviceMode	equ	__end_ofi1_GetDeviceMode-i1_GetDeviceMode
	
i1_GetDeviceMode:	
	opt	stack 2
; Regs used in i1_GetDeviceMode: [wreg]
	line	46
	
i1l17605:	
;ms83fxx02_pwr.c: 46: return device_mode;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_device_mode),w	;volatile
	goto	i1l10014
	
i1l17607:	
	line	47
	
i1l10014:	
	return
	opt stack 0
GLOBAL	__end_ofi1_GetDeviceMode
	__end_ofi1_GetDeviceMode:
;; =============== function i1_GetDeviceMode ends ============

	signat	i1_GetDeviceMode,89
	global	i1_MotorOperationTimer_Init
psect	text1843,local,class=CODE,delta=2
global __ptext1843
__ptext1843:

;; *************** function i1_MotorOperationTimer_Init *****************
;; Defined at:
;;		line 221 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  MotorOperati    1    wreg     enum E1558
;; Auto vars:     Size  Location     Type
;;  MotorOperati    1    0[COMMON] enum E1558
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
psect	text1843
	file	"ms83fxx02_motor.c"
	line	221
	global	__size_ofi1_MotorOperationTimer_Init
	__size_ofi1_MotorOperationTimer_Init	equ	__end_ofi1_MotorOperationTimer_Init-i1_MotorOperationTimer_Init
	
i1_MotorOperationTimer_Init:	
	opt	stack 1
; Regs used in i1_MotorOperationTimer_Init: [wreg+status,2]
;i1MotorOperationTimer_Init@time stored from wreg
	line	223
	movwf	(i1MotorOperationTimer_Init@time)
	
i1l17571:	
;ms83fxx02_motor.c: 223: TMR4ON = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2226/8)^0100h,(2226)&7
	line	225
	
i1l17573:	
;ms83fxx02_motor.c: 225: if(time == MotorOperationTimer_30s)
	movf	(i1MotorOperationTimer_Init@time),w
	xorlw	01h
	skipz
	goto	u519_21
	goto	u519_20
u519_21:
	goto	i1l17577
u519_20:
	line	228
	
i1l17575:	
;ms83fxx02_motor.c: 226: {
;ms83fxx02_motor.c: 228: PWM4CR0 = 0b01110010;
	movlw	(072h)
	movwf	(277)^0100h	;volatile
	line	231
;ms83fxx02_motor.c: 231: PWM4CR1 = 0b00111000;
	movlw	(038h)
	movwf	(278)^0100h	;volatile
	line	236
;ms83fxx02_motor.c: 236: T4CKDIV = 182;
	movlw	(0B6h)
	movwf	(279)^0100h	;volatile
	line	237
;ms83fxx02_motor.c: 237: }
	goto	i1l8861
	line	238
	
i1l8860:	
	
i1l17577:	
;ms83fxx02_motor.c: 238: else if(time == MotorOperationTimer_0_3s)
	movf	(i1MotorOperationTimer_Init@time),w
	xorlw	02h
	skipz
	goto	u520_21
	goto	u520_20
u520_21:
	goto	i1l17581
u520_20:
	line	241
	
i1l17579:	
;ms83fxx02_motor.c: 239: {
;ms83fxx02_motor.c: 241: PWM4CR0 = 0b01100010;
	movlw	(062h)
	movwf	(277)^0100h	;volatile
	line	243
;ms83fxx02_motor.c: 243: PWM4CR1 = 0b00111000;
	movlw	(038h)
	movwf	(278)^0100h	;volatile
	line	247
;ms83fxx02_motor.c: 247: T4CKDIV = 8;
	movlw	(08h)
	movwf	(279)^0100h	;volatile
	line	248
;ms83fxx02_motor.c: 248: }
	goto	i1l8861
	line	249
	
i1l8862:	
	line	252
	
i1l17581:	
;ms83fxx02_motor.c: 249: else
;ms83fxx02_motor.c: 250: {
;ms83fxx02_motor.c: 252: PWM4CR0 = 0b01110010;
	movlw	(072h)
	movwf	(277)^0100h	;volatile
	line	255
;ms83fxx02_motor.c: 255: PWM4CR1 = 0b00111000;
	movlw	(038h)
	movwf	(278)^0100h	;volatile
	line	258
;ms83fxx02_motor.c: 258: T4CKDIV = 243;
	movlw	(0F3h)
	movwf	(279)^0100h	;volatile
	goto	i1l8861
	line	259
	
i1l8863:	
	
i1l8861:	
	line	261
;ms83fxx02_motor.c: 259: }
;ms83fxx02_motor.c: 261: TMR4H = 0x0F;
	movlw	(0Fh)
	movwf	(275)^0100h	;volatile
	line	262
	
i1l17583:	
;ms83fxx02_motor.c: 262: TMR4L = 0;
	clrf	(274)^0100h	;volatile
	line	263
	
i1l17585:	
;ms83fxx02_motor.c: 263: PR4L = 0xFF;
	movlw	(0FFh)
	movwf	(276)^0100h	;volatile
	line	266
	
i1l17587:	
;ms83fxx02_motor.c: 266: TMR4IF = 0;
	bcf	(2224/8)^0100h,(2224)&7
	line	269
	
i1l17589:	
;ms83fxx02_motor.c: 269: TMR4ON = 1;
	bsf	(2226/8)^0100h,(2226)&7
	line	272
	
i1l17591:	
;ms83fxx02_motor.c: 272: TMR4IE = 1;
	bsf	(2225/8)^0100h,(2225)&7
	line	273
	
i1l17593:	
;ms83fxx02_motor.c: 273: PEIE = 1;
	bsf	(94/8),(94)&7
	line	274
	
i1l17595:	
;ms83fxx02_motor.c: 274: GIE = 1;
	bsf	(95/8),(95)&7
	line	275
	
i1l8864:	
	return
	opt stack 0
GLOBAL	__end_ofi1_MotorOperationTimer_Init
	__end_ofi1_MotorOperationTimer_Init:
;; =============== function i1_MotorOperationTimer_Init ends ============

	signat	i1_MotorOperationTimer_Init,88
	global	i1_Motor_CheckRunLimit
psect	text1844,local,class=CODE,delta=2
global __ptext1844
__ptext1844:

;; *************** function i1_Motor_CheckRunLimit *****************
;; Defined at:
;;		line 202 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
psect	text1844
	file	"ms83fxx02_motor.c"
	line	202
	global	__size_ofi1_Motor_CheckRunLimit
	__size_ofi1_Motor_CheckRunLimit	equ	__end_ofi1_Motor_CheckRunLimit-i1_Motor_CheckRunLimit
	
i1_Motor_CheckRunLimit:	
	opt	stack 0
; Regs used in i1_Motor_CheckRunLimit: [wreg]
	line	206
	
i1l17561:	
;ms83fxx02_motor.c: 206: if(motor_oper_record >= 120)
	movlw	high(078h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_motor_oper_record+1),w	;volatile
	movlw	low(078h)
	skipnz
	subwf	(_motor_oper_record),w	;volatile
	skipc
	goto	u518_21
	goto	u518_20
u518_21:
	goto	i1l17567
u518_20:
	line	208
	
i1l17563:	
;ms83fxx02_motor.c: 207: {
;ms83fxx02_motor.c: 208: return 1;
	movlw	(01h)
	goto	i1l8857
	
i1l17565:	
	goto	i1l8857
	line	209
	
i1l8856:	
	line	210
	
i1l17567:	
;ms83fxx02_motor.c: 209: }
;ms83fxx02_motor.c: 210: return 0;
	movlw	(0)
	goto	i1l8857
	
i1l17569:	
	line	211
	
i1l8857:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Motor_CheckRunLimit
	__end_ofi1_Motor_CheckRunLimit:
;; =============== function i1_Motor_CheckRunLimit ends ============

	signat	i1_Motor_CheckRunLimit,89
	global	i1_Motor_SetStatus
psect	text1845,local,class=CODE,delta=2
global __ptext1845
__ptext1845:

;; *************** function i1_Motor_SetStatus *****************
;; Defined at:
;;		line 123 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  Motor_SetSta    1    wreg     enum E1552
;; Auto vars:     Size  Location     Type
;;  Motor_SetSta    1    1[COMMON] enum E1552
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MotorOperTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1845
	file	"ms83fxx02_motor.c"
	line	123
	global	__size_ofi1_Motor_SetStatus
	__size_ofi1_Motor_SetStatus	equ	__end_ofi1_Motor_SetStatus-i1_Motor_SetStatus
	
i1_Motor_SetStatus:	
	opt	stack 1
; Regs used in i1_Motor_SetStatus: [wreg]
;i1Motor_SetStatus@status stored from wreg
	movwf	(i1Motor_SetStatus@status)
	line	124
	
i1l17549:	
;ms83fxx02_motor.c: 124: motor_status = status;
	movf	(i1Motor_SetStatus@status),w
	movwf	(??i1_Motor_SetStatus+0)+0
	movf	(??i1_Motor_SetStatus+0)+0,w
	movwf	(_motor_status)	;volatile
	line	125
	
i1l8838:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Motor_SetStatus
	__end_ofi1_Motor_SetStatus:
;; =============== function i1_Motor_SetStatus ends ============

	signat	i1_Motor_SetStatus,88
	global	i1_Motor_Init
psect	text1846,local,class=CODE,delta=2
global __ptext1846
__ptext1846:

;; *************** function i1_Motor_Init *****************
;; Defined at:
;;		line 67 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  Motor_Init      1    wreg     enum E1552
;; Auto vars:     Size  Location     Type
;;  Motor_Init      1    1[COMMON] enum E1552
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MotorOperTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1846
	file	"ms83fxx02_motor.c"
	line	67
	global	__size_ofi1_Motor_Init
	__size_ofi1_Motor_Init	equ	__end_ofi1_Motor_Init-i1_Motor_Init
	
i1_Motor_Init:	
	opt	stack 1
; Regs used in i1_Motor_Init: [wreg+status,2+status,0]
;i1Motor_Init@status stored from wreg
	line	70
	movwf	(i1Motor_Init@status)
	
i1l17519:	
;ms83fxx02_motor.c: 70: TRISC |= 0x03 << 4;
	movlw	(030h)
	movwf	(??i1_Motor_Init+0)+0
	movf	(??i1_Motor_Init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(135)^080h,f	;volatile
	line	73
;ms83fxx02_motor.c: 73: CMCON0 |= 0x07;
	movlw	(07h)
	movwf	(??i1_Motor_Init+0)+0
	movf	(??i1_Motor_Init+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(25),f	;volatile
	line	74
	
i1l17521:	
;ms83fxx02_motor.c: 74: T2CKSRC = 0;
	bcf	(221/8),(221)&7
	line	77
	
i1l17523:	
;ms83fxx02_motor.c: 77: TMR2 = 0;
	clrf	(17)	;volatile
	line	80
	
i1l17525:	
;ms83fxx02_motor.c: 80: T2CON = 0x03;
	movlw	(03h)
	movwf	(18)	;volatile
	line	82
	
i1l17527:	
;ms83fxx02_motor.c: 82: if(status == MOTOR_MODE_STOP)
	movf	(i1Motor_Init@status),w
	xorlw	01h
	skipz
	goto	u514_21
	goto	u514_20
u514_21:
	goto	i1l17533
u514_20:
	goto	i1l8827
	line	84
	
i1l17529:	
;ms83fxx02_motor.c: 83: {
;ms83fxx02_motor.c: 84: return ;
	goto	i1l8827
	line	85
	
i1l17531:	
;ms83fxx02_motor.c: 85: }
	goto	i1l8828
	line	86
	
i1l8826:	
	
i1l17533:	
;ms83fxx02_motor.c: 86: else if(status == MOTOR_MODE_3)
	movf	(i1Motor_Init@status),w
	xorlw	04h
	skipz
	goto	u515_21
	goto	u515_20
u515_21:
	goto	i1l17537
u515_20:
	line	88
	
i1l17535:	
;ms83fxx02_motor.c: 87: {
;ms83fxx02_motor.c: 88: PR2 = 125;
	movlw	(07Dh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	89
;ms83fxx02_motor.c: 89: CCPR1L = 47;
	movlw	(02Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	90
;ms83fxx02_motor.c: 90: CCP1CON = 0x8C | (0x00 << 4);
	movlw	(08Ch)
	movwf	(21)	;volatile
	line	91
;ms83fxx02_motor.c: 91: }
	goto	i1l8828
	line	92
	
i1l8829:	
	
i1l17537:	
;ms83fxx02_motor.c: 92: else if(status == MOTOR_MODE_2)
	movf	(i1Motor_Init@status),w
	xorlw	03h
	skipz
	goto	u516_21
	goto	u516_20
u516_21:
	goto	i1l17541
u516_20:
	line	94
	
i1l17539:	
;ms83fxx02_motor.c: 93: {
;ms83fxx02_motor.c: 94: PR2 = 125;
	movlw	(07Dh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	95
;ms83fxx02_motor.c: 95: CCPR1L = 31;
	movlw	(01Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	96
;ms83fxx02_motor.c: 96: CCP1CON = 0x8C | (0x00 << 4);
	movlw	(08Ch)
	movwf	(21)	;volatile
	line	97
;ms83fxx02_motor.c: 97: }
	goto	i1l8828
	line	98
	
i1l8831:	
	line	100
	
i1l17541:	
;ms83fxx02_motor.c: 98: else
;ms83fxx02_motor.c: 99: {
;ms83fxx02_motor.c: 100: PR2 = 116;
	movlw	(074h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	101
;ms83fxx02_motor.c: 101: CCPR1L = 47;
	movlw	(02Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	102
;ms83fxx02_motor.c: 102: CCP1CON = 0x8C | (0x00 << 4);
	movlw	(08Ch)
	movwf	(21)	;volatile
	goto	i1l8828
	line	103
	
i1l8832:	
	goto	i1l8828
	
i1l8830:	
	
i1l8828:	
	line	105
;ms83fxx02_motor.c: 103: }
;ms83fxx02_motor.c: 105: PWM1CON = 0x3F;
	movlw	(03Fh)
	movwf	(22)	;volatile
	line	109
	
i1l17543:	
;ms83fxx02_motor.c: 109: TMR2IF = 0;
	bcf	(97/8),(97)&7
	line	110
	
i1l17545:	
;ms83fxx02_motor.c: 110: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	111
;ms83fxx02_motor.c: 111: while(TMR2IF == 0){;}
	goto	i1l8833
	
i1l8834:	
	
i1l8833:	
	btfss	(97/8),(97)&7
	goto	u517_21
	goto	u517_20
u517_21:
	goto	i1l8833
u517_20:
	goto	i1l17547
	
i1l8835:	
	line	114
	
i1l17547:	
;ms83fxx02_motor.c: 114: TRISC &= ~(0x03 << 4);
	movlw	(0CFh)
	movwf	(??i1_Motor_Init+0)+0
	movf	(??i1_Motor_Init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	line	115
	
i1l8827:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Motor_Init
	__end_ofi1_Motor_Init:
;; =============== function i1_Motor_Init ends ============

	signat	i1_Motor_Init,88
	global	i1_GPIO_ReadInputDataBit
psect	text1847,local,class=CODE,delta=2
global __ptext1847
__ptext1847:

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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
;;		_LED_DisplayRunLimit
;;		_LEDTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1847
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
	
i1l17499:	
;ms83fxx02_gpio.c: 102: uint8_t bitstatus = RESET;
	clrf	(i1GPIO_ReadInputDataBit@bitstatus)
	line	104
	
i1l17501:	
;ms83fxx02_gpio.c: 104: if(GPIOx == GPIOA)
	movf	(i1GPIO_ReadInputDataBit@GPIOx),f
	skipz
	goto	u510_21
	goto	u510_20
u510_21:
	goto	i1l17507
u510_20:
	line	106
	
i1l17503:	
;ms83fxx02_gpio.c: 105: {
;ms83fxx02_gpio.c: 106: if (PORTA & GPIO_Pin)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(5),w	;volatile
	andwf	(i1GPIO_ReadInputDataBit@GPIO_Pin),w
	btfsc	status,2
	goto	u511_21
	goto	u511_20
u511_21:
	goto	i1l17513
u511_20:
	line	108
	
i1l17505:	
;ms83fxx02_gpio.c: 107: {
;ms83fxx02_gpio.c: 108: bitstatus = (uint8_t)SET;
	clrf	(i1GPIO_ReadInputDataBit@bitstatus)
	bsf	status,0
	rlf	(i1GPIO_ReadInputDataBit@bitstatus),f
	goto	i1l17513
	line	109
	
i1l4425:	
	line	110
;ms83fxx02_gpio.c: 109: }
;ms83fxx02_gpio.c: 110: }
	goto	i1l17513
	line	111
	
i1l4424:	
	line	113
	
i1l17507:	
;ms83fxx02_gpio.c: 111: else
;ms83fxx02_gpio.c: 112: {
;ms83fxx02_gpio.c: 113: if(GPIOx == GPIOC)
	movf	(i1GPIO_ReadInputDataBit@GPIOx),w
	xorlw	01h
	skipz
	goto	u512_21
	goto	u512_20
u512_21:
	goto	i1l17513
u512_20:
	line	115
	
i1l17509:	
;ms83fxx02_gpio.c: 114: {
;ms83fxx02_gpio.c: 115: if (PORTC & GPIO_Pin)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w	;volatile
	andwf	(i1GPIO_ReadInputDataBit@GPIO_Pin),w
	btfsc	status,2
	goto	u513_21
	goto	u513_20
u513_21:
	goto	i1l17513
u513_20:
	line	117
	
i1l17511:	
;ms83fxx02_gpio.c: 116: {
;ms83fxx02_gpio.c: 117: bitstatus = (uint8_t)SET;
	clrf	(i1GPIO_ReadInputDataBit@bitstatus)
	bsf	status,0
	rlf	(i1GPIO_ReadInputDataBit@bitstatus),f
	goto	i1l17513
	line	118
	
i1l4428:	
	goto	i1l17513
	line	119
	
i1l4427:	
	goto	i1l17513
	line	120
	
i1l4426:	
	line	122
	
i1l17513:	
;ms83fxx02_gpio.c: 118: }
;ms83fxx02_gpio.c: 119: }
;ms83fxx02_gpio.c: 120: }
;ms83fxx02_gpio.c: 122: return bitstatus;
	movf	(i1GPIO_ReadInputDataBit@bitstatus),w
	goto	i1l4429
	
i1l17515:	
	line	123
	
i1l4429:	
	return
	opt stack 0
GLOBAL	__end_ofi1_GPIO_ReadInputDataBit
	__end_ofi1_GPIO_ReadInputDataBit:
;; =============== function i1_GPIO_ReadInputDataBit ends ============

	signat	i1_GPIO_ReadInputDataBit,89
	global	i1_GPIO_WriteBit
psect	text1848,local,class=CODE,delta=2
global __ptext1848
__ptext1848:

;; *************** function i1_GPIO_WriteBit *****************
;; Defined at:
;;		line 68 in file "ms83fxx02_gpio.c"
;; Parameters:    Size  Location     Type
;;  GPIO_WriteBi    1    wreg     enum E1491
;;  GPIO_WriteBi    1    3[COMMON] unsigned char 
;;  GPIO_WriteBi    1    4[COMMON] enum E1499
;; Auto vars:     Size  Location     Type
;;  GPIO_WriteBi    1    6[COMMON] enum E1491
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LED_DisplayRunLimit
;;		i1_LED_UnderVoltageOutput
;;		i1_Motor_Stop
;; This function uses a non-reentrant model
;;
psect	text1848
	file	"ms83fxx02_gpio.c"
	line	68
	global	__size_ofi1_GPIO_WriteBit
	__size_ofi1_GPIO_WriteBit	equ	__end_ofi1_GPIO_WriteBit-i1_GPIO_WriteBit
	
i1_GPIO_WriteBit:	
	opt	stack 0
; Regs used in i1_GPIO_WriteBit: [wreg+status,2+status,0]
;i1GPIO_WriteBit@GPIOx stored from wreg
	movwf	(i1GPIO_WriteBit@GPIOx)
	line	69
	
i1l17485:	
;ms83fxx02_gpio.c: 69: if(GPIOx == GPIOA)
	movf	(i1GPIO_WriteBit@GPIOx),f
	skipz
	goto	u507_21
	goto	u507_20
u507_21:
	goto	i1l17493
u507_20:
	line	71
	
i1l17487:	
;ms83fxx02_gpio.c: 70: {
;ms83fxx02_gpio.c: 71: if (BitVal != Bit_RESET)
	movf	(i1GPIO_WriteBit@BitVal),w
	skipz
	goto	u508_20
	goto	i1l17491
u508_20:
	line	73
	
i1l17489:	
;ms83fxx02_gpio.c: 72: {
;ms83fxx02_gpio.c: 73: PORTA |= GPIO_Pin;
	movf	(i1GPIO_WriteBit@GPIO_Pin),w
	movwf	(??i1_GPIO_WriteBit+0)+0
	movf	(??i1_GPIO_WriteBit+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(5),f	;volatile
	line	74
;ms83fxx02_gpio.c: 74: }
	goto	i1l4421
	line	75
	
i1l4416:	
	line	77
	
i1l17491:	
;ms83fxx02_gpio.c: 75: else
;ms83fxx02_gpio.c: 76: {
;ms83fxx02_gpio.c: 77: PORTA &= ~(GPIO_Pin);
	comf	(i1GPIO_WriteBit@GPIO_Pin),w
	movwf	(??i1_GPIO_WriteBit+0)+0
	movf	(??i1_GPIO_WriteBit+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(5),f	;volatile
	goto	i1l4421
	line	78
	
i1l4417:	
	line	79
;ms83fxx02_gpio.c: 78: }
;ms83fxx02_gpio.c: 79: }
	goto	i1l4421
	line	80
	
i1l4415:	
	line	82
	
i1l17493:	
;ms83fxx02_gpio.c: 80: else
;ms83fxx02_gpio.c: 81: {
;ms83fxx02_gpio.c: 82: if (BitVal != Bit_RESET)
	movf	(i1GPIO_WriteBit@BitVal),w
	skipz
	goto	u509_20
	goto	i1l17497
u509_20:
	line	84
	
i1l17495:	
;ms83fxx02_gpio.c: 83: {
;ms83fxx02_gpio.c: 84: PORTC |= GPIO_Pin;
	movf	(i1GPIO_WriteBit@GPIO_Pin),w
	movwf	(??i1_GPIO_WriteBit+0)+0
	movf	(??i1_GPIO_WriteBit+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(7),f	;volatile
	line	85
;ms83fxx02_gpio.c: 85: }
	goto	i1l4421
	line	86
	
i1l4419:	
	line	88
	
i1l17497:	
;ms83fxx02_gpio.c: 86: else
;ms83fxx02_gpio.c: 87: {
;ms83fxx02_gpio.c: 88: PORTC &= ~(GPIO_Pin);
	comf	(i1GPIO_WriteBit@GPIO_Pin),w
	movwf	(??i1_GPIO_WriteBit+0)+0
	movf	(??i1_GPIO_WriteBit+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	goto	i1l4421
	line	89
	
i1l4420:	
	goto	i1l4421
	line	90
	
i1l4418:	
	line	91
	
i1l4421:	
	return
	opt stack 0
GLOBAL	__end_ofi1_GPIO_WriteBit
	__end_ofi1_GPIO_WriteBit:
;; =============== function i1_GPIO_WriteBit ends ============

	signat	i1_GPIO_WriteBit,88
	global	___awmod
psect	text1849,local,class=CODE,delta=2
global __ptext1849
__ptext1849:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MotorOperTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1849
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 1
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
i1l17409:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u492_21
	goto	u492_20
u492_21:
	goto	i1l17413
u492_20:
	line	10
	
i1l17411:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	i1l17413
	line	12
	
i1l14211:	
	line	13
	
i1l17413:	
	btfss	(___awmod@divisor+1),7
	goto	u493_21
	goto	u493_20
u493_21:
	goto	i1l17417
u493_20:
	line	14
	
i1l17415:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	i1l17417
	
i1l14212:	
	line	15
	
i1l17417:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u494_21
	goto	u494_20
u494_21:
	goto	i1l17435
u494_20:
	line	16
	
i1l17419:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	i1l17425
	
i1l14215:	
	line	18
	
i1l17421:	
	movlw	01h
	
u495_25:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u495_25
	line	19
	
i1l17423:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	i1l17425
	line	20
	
i1l14214:	
	line	17
	
i1l17425:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u496_21
	goto	u496_20
u496_21:
	goto	i1l17421
u496_20:
	goto	i1l17427
	
i1l14216:	
	goto	i1l17427
	line	21
	
i1l14217:	
	line	22
	
i1l17427:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u497_25
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u497_25:
	skipc
	goto	u497_21
	goto	u497_20
u497_21:
	goto	i1l17431
u497_20:
	line	23
	
i1l17429:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	i1l17431
	
i1l14218:	
	line	24
	
i1l17431:	
	movlw	01h
	
u498_25:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u498_25
	line	25
	
i1l17433:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u499_21
	goto	u499_20
u499_21:
	goto	i1l17427
u499_20:
	goto	i1l17435
	
i1l14219:	
	goto	i1l17435
	line	26
	
i1l14213:	
	line	27
	
i1l17435:	
	movf	(___awmod@sign),w
	skipz
	goto	u500_20
	goto	i1l17439
u500_20:
	line	28
	
i1l17437:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	i1l17439
	
i1l14220:	
	line	29
	
i1l17439:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	i1l14221
	
i1l17441:	
	line	30
	
i1l14221:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	_SleepLed_ChangeDuty
psect	text1850,local,class=CODE,delta=2
global __ptext1850
__ptext1850:

;; *************** function _SleepLed_ChangeDuty *****************
;; Defined at:
;;		line 108 in file "ms83fxx02_sleepled.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
;;		_SleepLedTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1850
	file	"ms83fxx02_sleepled.c"
	line	108
	global	__size_of_SleepLed_ChangeDuty
	__size_of_SleepLed_ChangeDuty	equ	__end_of_SleepLed_ChangeDuty-_SleepLed_ChangeDuty
	
_SleepLed_ChangeDuty:	
	opt	stack 1
; Regs used in _SleepLed_ChangeDuty: [wreg+status,2+status,0]
	line	109
	
i1l17163:	
;ms83fxx02_sleepled.c: 109: if(sleep_led_dir)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_sleep_led_dir),w	;volatile
	skipz
	goto	u425_20
	goto	i1l17167
u425_20:
	line	111
	
i1l17165:	
;ms83fxx02_sleepled.c: 110: {
;ms83fxx02_sleepled.c: 111: sleep_led_duty -= (0xFFF/100);
	movlw	low(028h)
	subwf	(_sleep_led_duty),f	;volatile
	movlw	high(028h)
	skipc
	decf	(_sleep_led_duty+1),f	;volatile
	subwf	(_sleep_led_duty+1),f	;volatile
	line	112
;ms83fxx02_sleepled.c: 112: }
	goto	i1l13316
	line	113
	
i1l13315:	
	line	115
	
i1l17167:	
;ms83fxx02_sleepled.c: 113: else
;ms83fxx02_sleepled.c: 114: {
;ms83fxx02_sleepled.c: 115: sleep_led_duty += (0xFFF/100);
	movlw	low(028h)
	addwf	(_sleep_led_duty),f	;volatile
	skipnc
	incf	(_sleep_led_duty+1),f	;volatile
	movlw	high(028h)
	addwf	(_sleep_led_duty+1),f	;volatile
	line	116
	
i1l13316:	
	line	118
;ms83fxx02_sleepled.c: 116: }
;ms83fxx02_sleepled.c: 118: if(sleep_led_duty >= (0xFFF - (0xFFF/100)))
	movlw	high(0FD7h)
	subwf	(_sleep_led_duty+1),w	;volatile
	movlw	low(0FD7h)
	skipnz
	subwf	(_sleep_led_duty),w	;volatile
	skipc
	goto	u426_21
	goto	u426_20
u426_21:
	goto	i1l17171
u426_20:
	line	120
	
i1l17169:	
;ms83fxx02_sleepled.c: 119: {
;ms83fxx02_sleepled.c: 120: sleep_led_dir = 1;
	clrf	(_sleep_led_dir)	;volatile
	bsf	status,0
	rlf	(_sleep_led_dir),f	;volatile
	goto	i1l17171
	line	121
	
i1l13317:	
	line	123
	
i1l17171:	
;ms83fxx02_sleepled.c: 121: }
;ms83fxx02_sleepled.c: 123: if(sleep_led_duty <= (0xFFF/100))
	movlw	high(029h)
	subwf	(_sleep_led_duty+1),w	;volatile
	movlw	low(029h)
	skipnz
	subwf	(_sleep_led_duty),w	;volatile
	skipnc
	goto	u427_21
	goto	u427_20
u427_21:
	goto	i1l17175
u427_20:
	line	125
	
i1l17173:	
;ms83fxx02_sleepled.c: 124: {
;ms83fxx02_sleepled.c: 125: sleep_led_dir = 0;
	clrf	(_sleep_led_dir)	;volatile
	goto	i1l17175
	line	126
	
i1l13318:	
	line	130
	
i1l17175:	
;ms83fxx02_sleepled.c: 126: }
;ms83fxx02_sleepled.c: 130: TMR4H = (sleep_led_duty >> 8) & 0xFF;
	movf	(_sleep_led_duty+1),w	;volatile
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(275)^0100h	;volatile
	line	131
	
i1l17177:	
;ms83fxx02_sleepled.c: 131: TMR4L = 0;
	clrf	(274)^0100h	;volatile
	line	132
;ms83fxx02_sleepled.c: 132: PR4L = sleep_led_duty & 0xFF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_sleep_led_duty),w	;volatile
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(276)^0100h	;volatile
	line	133
	
i1l13319:	
	return
	opt stack 0
GLOBAL	__end_of_SleepLed_ChangeDuty
	__end_of_SleepLed_ChangeDuty:
;; =============== function _SleepLed_ChangeDuty ends ============

	signat	_SleepLed_ChangeDuty,88
	global	_ADC_ReadData
psect	text1851,local,class=CODE,delta=2
global __ptext1851
__ptext1851:

;; *************** function _ADC_ReadData *****************
;; Defined at:
;;		line 141 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  battery_valu    2    6[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          4       0       0       0
;;      Totals:         8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ADC_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1851
	file	"ms83fxx02_pwr.c"
	line	141
	global	__size_of_ADC_ReadData
	__size_of_ADC_ReadData	equ	__end_of_ADC_ReadData-_ADC_ReadData
	
_ADC_ReadData:	
	opt	stack 1
; Regs used in _ADC_ReadData: [wreg+status,2+status,0]
	line	142
	
i1l17105:	
;ms83fxx02_pwr.c: 142: uint16_t battery_value = 0;
	clrf	(ADC_ReadData@battery_value)
	clrf	(ADC_ReadData@battery_value+1)
	line	144
	
i1l17107:	
;ms83fxx02_pwr.c: 144: battery_value = ADRESH & 0x03;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w
	andlw	03h
	movwf	(??_ADC_ReadData+0)+0
	clrf	(??_ADC_ReadData+0)+0+1
	movf	0+(??_ADC_ReadData+0)+0,w
	movwf	(ADC_ReadData@battery_value)
	movf	1+(??_ADC_ReadData+0)+0,w
	movwf	(ADC_ReadData@battery_value+1)
	line	145
;ms83fxx02_pwr.c: 145: battery_value = (battery_value << 8) | ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_ADC_ReadData+0)+0
	clrf	(??_ADC_ReadData+0)+0+1
	movf	(ADC_ReadData@battery_value),w
	movwf	(??_ADC_ReadData+2)+0+1
	clrf	(??_ADC_ReadData+2)+0
	movf	0+(??_ADC_ReadData+0)+0,w
	iorwf	0+(??_ADC_ReadData+2)+0,w
	movwf	(ADC_ReadData@battery_value)
	movf	1+(??_ADC_ReadData+0)+0,w
	iorwf	1+(??_ADC_ReadData+2)+0,w
	movwf	1+(ADC_ReadData@battery_value)
	line	148
	
i1l17109:	
;ms83fxx02_pwr.c: 148: ADON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(248/8),(248)&7
	line	149
	
i1l17111:	
;ms83fxx02_pwr.c: 149: return battery_value;
	movf	(ADC_ReadData@battery_value+1),w
	clrf	(?_ADC_ReadData+1)
	addwf	(?_ADC_ReadData+1)
	movf	(ADC_ReadData@battery_value),w
	clrf	(?_ADC_ReadData)
	addwf	(?_ADC_ReadData)

	goto	i1l10032
	
i1l17113:	
	line	150
	
i1l10032:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_ReadData
	__end_of_ADC_ReadData:
;; =============== function _ADC_ReadData ends ============

	signat	_ADC_ReadData,90
	global	_ADC_Enable
psect	text1852,local,class=CODE,delta=2
global __ptext1852
__ptext1852:

;; *************** function _ADC_Enable *****************
;; Defined at:
;;		line 124 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LEDTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1852
	file	"ms83fxx02_pwr.c"
	line	124
	global	__size_of_ADC_Enable
	__size_of_ADC_Enable	equ	__end_of_ADC_Enable-_ADC_Enable
	
_ADC_Enable:	
	opt	stack 1
; Regs used in _ADC_Enable: [wreg+status,2+status,0]
;ADC_Enable@channel stored from wreg
	movwf	(ADC_Enable@channel)
	line	125
	
i1l16993:	
;ms83fxx02_pwr.c: 125: ADCON0 |= (channel << 2);
	movf	(ADC_Enable@channel),w
	movwf	(??_ADC_Enable+0)+0
	movlw	(02h)-1
u409_25:
	clrc
	rlf	(??_ADC_Enable+0)+0,f
	addlw	-1
	skipz
	goto	u409_25
	clrc
	rlf	(??_ADC_Enable+0)+0,w
	movwf	(??_ADC_Enable+1)+0
	movf	(??_ADC_Enable+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(31),f	;volatile
	line	127
	
i1l16995:	
;ms83fxx02_pwr.c: 127: ADON = 1;
	bsf	(248/8),(248)&7
	line	128
	
i1l16997:	
# 128 "ms83fxx02_pwr.c"
nop ;#
psect	text1852
	line	129
	
i1l16999:	
# 129 "ms83fxx02_pwr.c"
nop ;#
psect	text1852
	line	132
	
i1l17001:	
;ms83fxx02_pwr.c: 132: GO_DONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	133
	
i1l10029:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Enable
	__end_of_ADC_Enable:
;; =============== function _ADC_Enable ends ============

	signat	_ADC_Enable,4216
	global	_TIM1_Init
psect	text1853,local,class=CODE,delta=2
global __ptext1853
__ptext1853:

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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
psect	text1853
	file	"MS83FXX02_KEY.C"
	line	38
	global	__size_of_TIM1_Init
	__size_of_TIM1_Init	equ	__end_of_TIM1_Init-_TIM1_Init
	
_TIM1_Init:	
	opt	stack 1
; Regs used in _TIM1_Init: [wreg+status,2]
	line	39
	
i1l16947:	
;MS83FXX02_KEY.C: 39: TMR1ON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(128/8),(128)&7
	line	44
	
i1l16949:	
;MS83FXX02_KEY.C: 44: TMR1L = 0xF0;
	movlw	(0F0h)
	movwf	(14)	;volatile
	line	45
;MS83FXX02_KEY.C: 45: TMR1H = 0xD8;
	movlw	(0D8h)
	movwf	(15)	;volatile
	line	48
	
i1l16951:	
;MS83FXX02_KEY.C: 48: T1CON = 0b00000000;
	clrf	(16)	;volatile
	line	49
	
i1l16953:	
;MS83FXX02_KEY.C: 49: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	51
	
i1l16955:	
;MS83FXX02_KEY.C: 51: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	53
	
i1l16957:	
;MS83FXX02_KEY.C: 53: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	54
	
i1l16959:	
;MS83FXX02_KEY.C: 54: PEIE = 1;
	bsf	(94/8),(94)&7
	line	55
	
i1l16961:	
;MS83FXX02_KEY.C: 55: GIE = 1;
	bsf	(95/8),(95)&7
	line	56
	
i1l5517:	
	return
	opt stack 0
GLOBAL	__end_of_TIM1_Init
	__end_of_TIM1_Init:
;; =============== function _TIM1_Init ends ============

	signat	_TIM1_Init,88
	global	_ChargeTimer_IntrHandler
psect	text1854,local,class=CODE,delta=2
global __ptext1854
__ptext1854:

;; *************** function _ChargeTimer_IntrHandler *****************
;; Defined at:
;;		line 123 in file "ms83fxx02_charge_timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
psect	text1854
	file	"ms83fxx02_charge_timer.c"
	line	123
	global	__size_of_ChargeTimer_IntrHandler
	__size_of_ChargeTimer_IntrHandler	equ	__end_of_ChargeTimer_IntrHandler-_ChargeTimer_IntrHandler
	
_ChargeTimer_IntrHandler:	
	opt	stack 2
; Regs used in _ChargeTimer_IntrHandler: [wreg]
	line	124
	
i1l16791:	
;ms83fxx02_charge_timer.c: 124: if(TMR5IE && TMR5IF)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2273/8)^0100h,(2273)&7
	goto	u379_21
	goto	u379_20
u379_21:
	goto	i1l12237
u379_20:
	
i1l16793:	
	btfss	(2272/8)^0100h,(2272)&7
	goto	u380_21
	goto	u380_20
u380_21:
	goto	i1l12237
u380_20:
	line	127
	
i1l16795:	
;ms83fxx02_charge_timer.c: 125: {
;ms83fxx02_charge_timer.c: 127: charge_time_out++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_charge_time_out),f	;volatile
	skipnc
	incf	(_charge_time_out+1),f	;volatile
	movlw	high(01h)
	addwf	(_charge_time_out+1),f	;volatile
	line	128
	
i1l16797:	
;ms83fxx02_charge_timer.c: 128: TMR5IF = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2272/8)^0100h,(2272)&7
	goto	i1l12237
	line	134
	
i1l12236:	
	line	135
	
i1l12237:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeTimer_IntrHandler
	__end_of_ChargeTimer_IntrHandler:
;; =============== function _ChargeTimer_IntrHandler ends ============

	signat	_ChargeTimer_IntrHandler,88
	global	_SwitchModeTimer_IntrHandler
psect	text1855,local,class=CODE,delta=2
global __ptext1855
__ptext1855:

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
;;		status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
psect	text1855
	file	"ms83fxx02_tim.c"
	line	119
	global	__size_of_SwitchModeTimer_IntrHandler
	__size_of_SwitchModeTimer_IntrHandler	equ	__end_of_SwitchModeTimer_IntrHandler-_SwitchModeTimer_IntrHandler
	
_SwitchModeTimer_IntrHandler:	
	opt	stack 2
; Regs used in _SwitchModeTimer_IntrHandler: [status]
	line	120
	
i1l16765:	
;ms83fxx02_tim.c: 120: if(TMR5IE && TMR5IF)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2273/8)^0100h,(2273)&7
	goto	u373_21
	goto	u373_20
u373_21:
	goto	i1l11153
u373_20:
	
i1l16767:	
	btfss	(2272/8)^0100h,(2272)&7
	goto	u374_21
	goto	u374_20
u374_21:
	goto	i1l11153
u374_20:
	line	123
	
i1l16769:	
;ms83fxx02_tim.c: 121: {
;ms83fxx02_tim.c: 123: switch_mode_time_out = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_switch_mode_time_out)	;volatile
	bsf	status,0
	rlf	(_switch_mode_time_out),f	;volatile
	line	124
	
i1l16771:	
;ms83fxx02_tim.c: 124: TMR5IF = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2272/8)^0100h,(2272)&7
	line	127
	
i1l16773:	
;ms83fxx02_tim.c: 127: TMR5ON = 0;
	bcf	(2274/8)^0100h,(2274)&7
	line	129
	
i1l16775:	
;ms83fxx02_tim.c: 129: TMR5IE = 0;
	bcf	(2273/8)^0100h,(2273)&7
	goto	i1l11153
	line	130
	
i1l11152:	
	line	131
	
i1l11153:	
	return
	opt stack 0
GLOBAL	__end_of_SwitchModeTimer_IntrHandler
	__end_of_SwitchModeTimer_IntrHandler:
;; =============== function _SwitchModeTimer_IntrHandler ends ============

	signat	_SwitchModeTimer_IntrHandler,88
psect	text1856,local,class=CODE,delta=2
global __ptext1856
__ptext1856:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end

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
	FNCALL	_main,_LEDTimer_DispRunLimitCmd
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
	FNCALL	_ChargeCtrl_Output,_GPIO_WriteBit
	FNCALL	_MotorOperationTimer_Stop,_Motor_CheckRunLimit
	FNCALL	_Motor_Stop,_GPIO_WriteBit
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
	FNCALL	_ISR,_ADC_IntrHandler
	FNCALL	_LEDTimer_IntrHandler,i1_GPIO_ReadInputDataBit
	FNCALL	_LEDTimer_IntrHandler,i1_LED_UnderVoltageOutput
	FNCALL	_LEDTimer_IntrHandler,_LED_DisplayRunLimit
	FNCALL	_LEDTimer_IntrHandler,_ADC_Enable
	FNCALL	_MotorOperTimer_IntrHandler,i1_Motor_CheckRunLimit
	FNCALL	_MotorOperTimer_IntrHandler,___lbmod
	FNCALL	_MotorOperTimer_IntrHandler,i1_MotorOperationTimer_Init
	FNCALL	_MotorOperTimer_IntrHandler,i1_Motor_Stop
	FNCALL	_MotorOperTimer_IntrHandler,i1_MotorOperationTimer_Stop
	FNCALL	_MotorOperTimer_IntrHandler,i1_Motor_SetStatus
	FNCALL	_MotorOperTimer_IntrHandler,i1_Motor_Init
	FNCALL	i1_MotorOperationTimer_Stop,i1_Motor_CheckRunLimit
	FNCALL	i1_Motor_Stop,i1_GPIO_WriteBit
	FNCALL	i1_LED_UnderVoltageOutput,i1_GPIO_WriteBit
	FNCALL	_LED_DisplayRunLimit,i1_GPIO_ReadInputDataBit
	FNCALL	_LED_DisplayRunLimit,i1_GPIO_WriteBit
	FNCALL	_ADC_IntrHandler,_ADC_ReadData
	FNCALL	_ChargeDetect_IntrHandler,i1_GPIO_ReadInputDataBit
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
       ds      20

_charge_time_out:
       ds      2

_motor_oper_record:
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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+024h)
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
	global	?_LEDTimer_DispRunLimitCmd
?_LEDTimer_DispRunLimitCmd:	; 0 bytes @ 0x0
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
	global	?_ADC_ReadData
?_ADC_ReadData:	; 2 bytes @ 0x0
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x0
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
	global	ADC_Enable@channel
ADC_Enable@channel:	; 1 bytes @ 0x1
	global	i1GPIO_ReadInputDataBit@bitstatus
i1GPIO_ReadInputDataBit@bitstatus:	; 1 bytes @ 0x1
	ds	1
	global	??_ADC_ReadData
??_ADC_ReadData:	; 0 bytes @ 0x2
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x2
	global	i1GPIO_ReadInputDataBit@GPIOx
i1GPIO_ReadInputDataBit@GPIOx:	; 1 bytes @ 0x2
	ds	1
	global	??_DebounceTimer_IntrHandler
??_DebounceTimer_IntrHandler:	; 0 bytes @ 0x3
	global	??_ChargeDetect_IntrHandler
??_ChargeDetect_IntrHandler:	; 0 bytes @ 0x3
	global	?i1_GPIO_WriteBit
?i1_GPIO_WriteBit:	; 0 bytes @ 0x3
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x3
	global	i1GPIO_WriteBit@GPIO_Pin
i1GPIO_WriteBit@GPIO_Pin:	; 1 bytes @ 0x3
	global	ADC_ReadData@battery_value
ADC_ReadData@battery_value:	; 2 bytes @ 0x3
	ds	1
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x4
	global	i1GPIO_WriteBit@BitVal
i1GPIO_WriteBit@BitVal:	; 1 bytes @ 0x4
	ds	1
	global	??_ADC_IntrHandler
??_ADC_IntrHandler:	; 0 bytes @ 0x5
	global	??i1_GPIO_WriteBit
??i1_GPIO_WriteBit:	; 0 bytes @ 0x5
	global	i1GPIO_WriteBit@GPIOx
i1GPIO_WriteBit@GPIOx:	; 1 bytes @ 0x5
	ds	1
	global	??_MotorOperTimer_IntrHandler
??_MotorOperTimer_IntrHandler:	; 0 bytes @ 0x6
	global	??_LED_DisplayRunLimit
??_LED_DisplayRunLimit:	; 0 bytes @ 0x6
	global	??i1_LED_UnderVoltageOutput
??i1_LED_UnderVoltageOutput:	; 0 bytes @ 0x6
	global	??i1_Motor_Stop
??i1_Motor_Stop:	; 0 bytes @ 0x6
	global	i1LED_UnderVoltageOutput@BitVal
i1LED_UnderVoltageOutput@BitVal:	; 1 bytes @ 0x6
	ds	1
	global	??_LEDTimer_IntrHandler
??_LEDTimer_IntrHandler:	; 0 bytes @ 0x7
	global	??_ISR
??_ISR:	; 0 bytes @ 0x7
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_ADC_Init
??_ADC_Init:	; 0 bytes @ 0x0
	global	?_LEDTimer_Cmd
?_LEDTimer_Cmd:	; 0 bytes @ 0x0
	global	??_LEDTimer_INTConfig
??_LEDTimer_INTConfig:	; 0 bytes @ 0x0
	global	?_GPIO_WriteBit
?_GPIO_WriteBit:	; 0 bytes @ 0x0
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
	global	??_LEDTimer_DispRunLimitCmd
??_LEDTimer_DispRunLimitCmd:	; 0 bytes @ 0x0
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
	global	??_LEDTimer_DispUnderVoltCmd
??_LEDTimer_DispUnderVoltCmd:	; 0 bytes @ 0x0
	global	??_Motor_Init
??_Motor_Init:	; 0 bytes @ 0x0
	global	??_Motor_CheckRunLimit
??_Motor_CheckRunLimit:	; 0 bytes @ 0x0
	global	??_MotorOperationTimer_Init
??_MotorOperationTimer_Init:	; 0 bytes @ 0x0
	global	?_GPIO_ReadInputDataBit
?_GPIO_ReadInputDataBit:	; 1 bytes @ 0x0
	global	?_ChargeTimer_GetCount
?_ChargeTimer_GetCount:	; 2 bytes @ 0x0
	global	?_Battery_HandleData
?_Battery_HandleData:	; 2 bytes @ 0x0
	global	EEPROM_Read@addr
EEPROM_Read@addr:	; 1 bytes @ 0x0
	global	EEPROM_Write@data
EEPROM_Write@data:	; 1 bytes @ 0x0
	global	GPIO_Init@GPIO_InitStruct
GPIO_Init@GPIO_InitStruct:	; 1 bytes @ 0x0
	global	GPIO_WriteBit@GPIO_Pin
GPIO_WriteBit@GPIO_Pin:	; 1 bytes @ 0x0
	global	GPIO_ReadInputDataBit@GPIO_Pin
GPIO_ReadInputDataBit@GPIO_Pin:	; 1 bytes @ 0x0
	global	GPIO_INTConfig@GPIO_Pin
GPIO_INTConfig@GPIO_Pin:	; 1 bytes @ 0x0
	global	LEDTimer_Cmd@NewState
LEDTimer_Cmd@NewState:	; 1 bytes @ 0x0
	global	LEDTimer_INTConfig@NewState
LEDTimer_INTConfig@NewState:	; 1 bytes @ 0x0
	global	LEDTimer_DispUnderVoltCmd@NewState
LEDTimer_DispUnderVoltCmd@NewState:	; 1 bytes @ 0x0
	global	LEDTimer_DispRunLimitCmd@NewState
LEDTimer_DispRunLimitCmd@NewState:	; 1 bytes @ 0x0
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
	ds	1
	global	??_LEDTimer_Cmd
??_LEDTimer_Cmd:	; 0 bytes @ 0x1
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
	global	GPIO_WriteBit@BitVal
GPIO_WriteBit@BitVal:	; 1 bytes @ 0x1
	global	GPIO_ReadInputDataBit@bitstatus
GPIO_ReadInputDataBit@bitstatus:	; 1 bytes @ 0x1
	global	GPIO_INTConfig@NewState
GPIO_INTConfig@NewState:	; 1 bytes @ 0x1
	global	LEDTimer_Cmd@period_type
LEDTimer_Cmd@period_type:	; 1 bytes @ 0x1
	global	ADC_Init@channel
ADC_Init@channel:	; 1 bytes @ 0x1
	ds	1
	global	??_EEPROM_Init
??_EEPROM_Init:	; 0 bytes @ 0x2
	global	??_ChargeTimer_GetCount
??_ChargeTimer_GetCount:	; 0 bytes @ 0x2
	global	??_GPIO_WriteBit
??_GPIO_WriteBit:	; 0 bytes @ 0x2
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
	global	??_EEPROM_SetFlag
??_EEPROM_SetFlag:	; 0 bytes @ 0x2
	global	??_EEPROM_StoreModeData
??_EEPROM_StoreModeData:	; 0 bytes @ 0x2
	global	??_Battery_HandleData
??_Battery_HandleData:	; 0 bytes @ 0x2
	global	GPIO_WriteBit@GPIOx
GPIO_WriteBit@GPIOx:	; 1 bytes @ 0x2
	global	GPIO_ReadInputDataBit@GPIOx
GPIO_ReadInputDataBit@GPIOx:	; 1 bytes @ 0x2
	global	GPIO_INTConfig@GPIOx
GPIO_INTConfig@GPIOx:	; 1 bytes @ 0x2
	global	KEY_DeInit@GPIO_InitStruct
KEY_DeInit@GPIO_InitStruct:	; 2 bytes @ 0x2
	ds	1
	global	??_LED_Init
??_LED_Init:	; 0 bytes @ 0x3
	global	??_KEY_Init
??_KEY_Init:	; 0 bytes @ 0x3
	global	??_LED_VoltageChargeOutput
??_LED_VoltageChargeOutput:	; 0 bytes @ 0x3
	global	??_ChargeDetect_GetStatus
??_ChargeDetect_GetStatus:	; 0 bytes @ 0x3
	global	??_Motor_Stop
??_Motor_Stop:	; 0 bytes @ 0x3
	global	??_ChargeCtrl_Output
??_ChargeCtrl_Output:	; 0 bytes @ 0x3
	global	??_ChargeDetect_Init
??_ChargeDetect_Init:	; 0 bytes @ 0x3
	global	??_ChargeCtrl_Init
??_ChargeCtrl_Init:	; 0 bytes @ 0x3
	global	?_LED_DisplayMotorStatus
?_LED_DisplayMotorStatus:	; 0 bytes @ 0x3
	global	??_LED_UnderVoltageOutput
??_LED_UnderVoltageOutput:	; 0 bytes @ 0x3
	global	ChargeCtrl_Output@BitVal
ChargeCtrl_Output@BitVal:	; 1 bytes @ 0x3
	global	LED_DisplayMotorStatus@GPIO_Pin
LED_DisplayMotorStatus@GPIO_Pin:	; 1 bytes @ 0x3
	global	LED_VoltageChargeOutput@BitVal
LED_VoltageChargeOutput@BitVal:	; 1 bytes @ 0x3
	global	LED_UnderVoltageOutput@BitVal
LED_UnderVoltageOutput@BitVal:	; 1 bytes @ 0x3
	global	ChargeDetect_Init@GPIO_InitStruct
ChargeDetect_Init@GPIO_InitStruct:	; 2 bytes @ 0x3
	global	ChargeCtrl_Init@GPIO_InitStruct
ChargeCtrl_Init@GPIO_InitStruct:	; 2 bytes @ 0x3
	global	ChargeDetect_GetStatus@i
ChargeDetect_GetStatus@i:	; 2 bytes @ 0x3
	global	KEY_Init@GPIO_InitStruct
KEY_Init@GPIO_InitStruct:	; 2 bytes @ 0x3
	global	LED_Init@GPIO_InitStruct
LED_Init@GPIO_InitStruct:	; 2 bytes @ 0x3
	ds	1
	global	??_LED_DisplayMotorStatus
??_LED_DisplayMotorStatus:	; 0 bytes @ 0x4
	global	LED_DisplayMotorStatus@GPIOx
LED_DisplayMotorStatus@GPIOx:	; 1 bytes @ 0x4
	ds	1
	global	??_Charge_Init
??_Charge_Init:	; 0 bytes @ 0x5
	global	??_Driver_Init
??_Driver_Init:	; 0 bytes @ 0x5
	global	??_Motor_Start
??_Motor_Start:	; 0 bytes @ 0x5
	global	Motor_Start@status
Motor_Start@status:	; 1 bytes @ 0x5
	ds	1
	global	??_Motor_HandleStatusChangeEvt
??_Motor_HandleStatusChangeEvt:	; 0 bytes @ 0x6
	global	Motor_HandleStatusChangeEvt@status
Motor_HandleStatusChangeEvt@status:	; 1 bytes @ 0x6
	ds	2
	global	Battery_HandleData@temp2
Battery_HandleData@temp2:	; 2 bytes @ 0x8
	ds	2
	global	Battery_HandleData@average_data
Battery_HandleData@average_data:	; 2 bytes @ 0xA
	ds	2
	global	Battery_HandleData@temp1
Battery_HandleData@temp1:	; 2 bytes @ 0xC
	ds	2
	global	Battery_HandleData@i
Battery_HandleData@i:	; 1 bytes @ 0xE
	ds	1
	global	??_Battery_Detect
??_Battery_Detect:	; 0 bytes @ 0xF
	global	Battery_Detect@mode
Battery_Detect@mode:	; 1 bytes @ 0xF
	ds	1
	global	Battery_Detect@adc_data
Battery_Detect@adc_data:	; 2 bytes @ 0x10
	ds	2
	global	??_charge_control
??_charge_control:	; 0 bytes @ 0x12
	global	charge_control@charge_count
charge_control@charge_count:	; 2 bytes @ 0x12
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x14
;;Data sizes: Strings 0, constant 0, data 4, bss 37, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      14
;; BANK0           80     20      58
;; BANK1           80      0       0
;; BANK2           80      0       0

;;
;; Pointer list with targets:

;; ?_ChargeTimer_GetCount	unsigned int  size(1) Largest target is 0
;;
;; ?_Battery_HandleData	unsigned int  size(1) Largest target is 0
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
;;   _LEDTimer_IntrHandler->i1_LED_UnderVoltageOutput
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
;;   _Battery_Detect->_Battery_HandleData
;;   _Charge_Init->_ChargeDetect_Init
;;   _Charge_Init->_ChargeCtrl_Init
;;   _EEPROM_StoreModeData->_EEPROM_Write
;;   _EEPROM_SetFlag->_EEPROM_Write
;;   _EEPROM_StoreMotorData->_EEPROM_Write
;;   _LED_UnderVoltageOutput->_GPIO_WriteBit
;;   _LED_DisplayMotorStatus->_GPIO_WriteBit
;;   _ChargeCtrl_Init->_GPIO_WriteBit
;;   _ChargeDetect_Init->_GPIO_ReadInputDataBit
;;   _ChargeDetect_Init->_GPIO_INTConfig
;;   _ChargeCtrl_Output->_GPIO_WriteBit
;;   _Motor_Stop->_GPIO_WriteBit
;;   _KEY_DeInit->_GPIO_Init
;;   _ChargeDetect_GetStatus->_GPIO_ReadInputDataBit
;;   _EEPROM_RestoreMotorData->_EEPROM_Read
;;   _EEPROM_RestoreDeviceModeData->_EEPROM_Read
;;   _EEPROM_GetFlag->_EEPROM_Read
;;   _LED_VoltageChargeOutput->_GPIO_WriteBit
;;   _EEPROM_Init->_EEPROM_Write
;;   _KEY_Init->_GPIO_INTConfig
;;   _LED_Init->_GPIO_WriteBit
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
;; (0) _main                                                 0     0      0    8242
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
;;           _LEDTimer_DispRunLimitCmd
;;                  _ChargeCtrl_Output
;;            _LED_VoltageChargeOutput
;;                           _ADC_Init
;;                    _ChargeTimer_Cmd
;;              _ChargeTimer_INTConfig
;;                     _charge_control
;;                      _GetDeviceMode
;; ---------------------------------------------------------------------------------
;; (1) _Motor_HandleStatusChangeEvt                          1     1      0     836
;;                                              6 BANK0      1     1      0
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
;; (1) _charge_control                                       2     2      0    2154
;;                                             18 BANK0      2     2      0
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
;; (2) _Motor_Start                                          1     1      0     374
;;                                              5 BANK0      1     1      0
;;             _LED_DisplayMotorStatus
;;                         _Motor_Init
;;                _SwitchModeTimer_Cmd
;;          _SwitchModeTimer_INTConfig
;; ---------------------------------------------------------------------------------
;; (2) _Battery_Detect                                       3     3      0    1757
;;                                             15 BANK0      3     3      0
;;                 _Battery_HandleData
;;                      _GetDeviceMode
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
;; (3) _EEPROM_StoreModeData                                 0     0      0      44
;;                       _EEPROM_Write
;; ---------------------------------------------------------------------------------
;; (3) _EEPROM_SetFlag                                       0     0      0      44
;;                       _EEPROM_Write
;; ---------------------------------------------------------------------------------
;; (3) _EEPROM_StoreMotorData                                0     0      0      44
;;                       _EEPROM_Write
;; ---------------------------------------------------------------------------------
;; (3) _LED_UnderVoltageOutput                               1     1      0     176
;;                                              3 BANK0      1     1      0
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (3) _LED_DisplayMotorStatus                               2     1      1     198
;;                                              3 BANK0      2     1      1
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (3) _ChargeCtrl_Init                                      2     2      0     361
;;                                              3 BANK0      2     2      0
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
;;                                              3 BANK0      1     1      0
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (3) _MotorOperationTimer_Stop                             0     0      0       0
;;                _Motor_CheckRunLimit
;; ---------------------------------------------------------------------------------
;; (3) _Motor_Stop                                           0     0      0     154
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (3) _KEY_DeInit                                           2     2      0     207
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
;;                                              3 BANK0      1     1      0
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
;; (3) _LED_Init                                             2     2      0     502
;;                                              3 BANK0      2     2      0
;;                          _GPIO_Init
;;                      _GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (3) _Battery_HandleData                                  15    13      2     252
;;                                              0 BANK0     15    13      2
;; ---------------------------------------------------------------------------------
;; (2) _SwitchModeTimer_GetINTStatus                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _MotorOperationTimer_Init                             1     1      0      44
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (4) _Motor_CheckRunLimit                                  0     0      0       0
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
;; (3) _LEDTimer_DispUnderVoltCmd                            1     1      0      22
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
;; (2) _GPIO_ReadInputDataBit                                3     2      1     113
;;                                              0 BANK0      3     2      1
;; ---------------------------------------------------------------------------------
;; (4) _GPIO_Init                                            2     1      1     154
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
;; (1) _LEDTimer_DispRunLimitCmd                             1     1      0      22
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _Motor_SetStatus                                      1     1      0      22
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _SetDeviceMode                                        1     1      0      22
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _ChargeTimer_ResetCount                               0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Motor_GetStatus                                      0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _GPIO_WriteBit                                        3     1      2     154
;;                                              0 BANK0      3     1      2
;; ---------------------------------------------------------------------------------
;; (2) _ChargeTimer_GetCount                                 2     0      2       0
;;                                              0 BANK0      2     0      2
;; ---------------------------------------------------------------------------------
;; (2) _LEDTimer_INTConfig                                   1     1      0      22
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _LEDTimer_Cmd                                         2     1      1      44
;;                                              0 BANK0      2     1      1
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
;; (5) _ISR                                                  4     4      0    3829
;;                                              7 COMMON     4     4      0
;;                    _KEY_IntrHandler
;;          _DebounceTimer_IntrHandler
;;                    i1_GetDeviceMode
;;        _SwitchModeTimer_IntrHandler
;;            _ChargeTimer_IntrHandler
;;         _MotorOperTimer_IntrHandler
;;               _LEDTimer_IntrHandler
;;           _ChargeDetect_IntrHandler
;;                    _ADC_IntrHandler
;; ---------------------------------------------------------------------------------
;; (6) _LEDTimer_IntrHandler                                 0     0      0    1859
;;            i1_GPIO_ReadInputDataBit
;;           i1_LED_UnderVoltageOutput
;;                _LED_DisplayRunLimit
;;                         _ADC_Enable
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
;; (7) i1_MotorOperationTimer_Stop                           0     0      0       0
;;              i1_Motor_CheckRunLimit
;; ---------------------------------------------------------------------------------
;; (7) i1_Motor_Stop                                         0     0      0     511
;;                    i1_GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (7) i1_LED_UnderVoltageOutput                             1     1      0     584
;;                                              6 COMMON     1     1      0
;;                    i1_GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (7) _LED_DisplayRunLimit                                  0     0      0     882
;;            i1_GPIO_ReadInputDataBit
;;                    i1_GPIO_WriteBit
;; ---------------------------------------------------------------------------------
;; (6) _ADC_IntrHandler                                      0     0      0      47
;;                       _ADC_ReadData
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
;; (8) i1_GPIO_WriteBit                                      3     1      2     511
;;                                              3 COMMON     3     1      2
;;            i1_GPIO_ReadInputDataBit (ARG)
;; ---------------------------------------------------------------------------------
;; (7) ___lbmod                                              5     4      1     159
;;                                              0 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (7) _ADC_ReadData                                         5     3      2      47
;;                                              0 COMMON     5     3      2
;; ---------------------------------------------------------------------------------
;; (7) _ADC_Enable                                           2     2      0      22
;;                                              0 COMMON     2     2      0
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
;;   _ChargeDetect_GetStatus
;;     _GPIO_ReadInputDataBit
;;   _ChargeTimer_ResetCount
;;   _SetDeviceMode
;;   _Battery_Detect
;;     _Battery_HandleData
;;     _GetDeviceMode
;;     _EEPROM_SetFlag
;;       _EEPROM_Write
;;     _EEPROM_StoreModeData
;;       _EEPROM_Write
;;     _EEPROM_StoreMotorData
;;       _EEPROM_Write
;;     _LED_UnderVoltageOutput
;;       _GPIO_WriteBit
;;     _LED_Init
;;       _GPIO_Init
;;       _GPIO_WriteBit
;;     _KEY_DeInit
;;       _GPIO_Init
;;     _Motor_Stop
;;       _GPIO_WriteBit
;;     _Motor_SetStatus
;;     _MotorOperationTimer_Stop
;;       _Motor_CheckRunLimit
;;     _LEDTimer_DispUnderVoltCmd
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
;;   _ChargeCtrl_Output
;;     _GPIO_WriteBit
;;   _LED_VoltageChargeOutput
;;     _GPIO_WriteBit
;;   _ADC_Init
;;   _ChargeTimer_Cmd
;;   _ChargeTimer_INTConfig
;;   _charge_control
;;     _ChargeTimer_GetCount
;;     _Battery_Detect
;;       _Battery_HandleData
;;       _GetDeviceMode
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
;;       i1_GPIO_WriteBit
;;         i1_GPIO_ReadInputDataBit (ARG)
;;     i1_MotorOperationTimer_Stop
;;       i1_Motor_CheckRunLimit
;;     i1_Motor_SetStatus
;;     i1_Motor_Init
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
;;DATA                 0      0      54      10        0.0%
;;ABS                  0      0      48       8        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       C       2        0.0%
;;BANK0               50     14      3A       3       72.5%
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
;;		line 108 in file "main.c"
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
;; Hardware stack levels required when called:    8
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
;;		_LEDTimer_DispRunLimitCmd
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
	line	108
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	111
	
l15370:	
;main.c: 111: EEPROM_Init();
	fcall	_EEPROM_Init
	line	114
	
l15372:	
;main.c: 114: if(EEPROM_GetFlag() == 0x01)
	fcall	_EEPROM_GetFlag
	xorlw	01h
	skipz
	goto	u2401
	goto	u2400
u2401:
	goto	l15418
u2400:
	line	116
	
l15374:	
;main.c: 115: {
;main.c: 116: EEPROM_RestoreDeviceModeData();
	fcall	_EEPROM_RestoreDeviceModeData
	line	117
;main.c: 117: EEPROM_RestoreMotorData();
	fcall	_EEPROM_RestoreMotorData
	goto	l15418
	line	127
	
l15376:	
;main.c: 126: {
;main.c: 127: Board_Init();
	fcall	_Board_Init
	line	128
	
l15378:	
;main.c: 128: Driver_Init();
	fcall	_Driver_Init
	line	132
	
l15380:	
;main.c: 131: {
;main.c: 132: Motor_HandleStatusChangeEvt(Motor_GetStatus());
	fcall	_Motor_GetStatus
	fcall	_Motor_HandleStatusChangeEvt
	line	135
;main.c: 135: if(ChargeDetect_GetStatus())
	fcall	_ChargeDetect_GetStatus
	xorlw	0
	skipnz
	goto	u2411
	goto	u2410
u2411:
	goto	l15386
u2410:
	line	138
	
l15382:	
;main.c: 136: {
;main.c: 138: ChargeTimer_ResetCount();
	fcall	_ChargeTimer_ResetCount
	line	139
	
l15384:	
;main.c: 139: SetDeviceMode(CHARGE_MODE);
	movlw	(01h)
	fcall	_SetDeviceMode
	line	140
;main.c: 140: break;
	goto	l15418
	line	144
	
l15386:	
;main.c: 141: }
;main.c: 144: Battery_Detect();
	fcall	_Battery_Detect
	goto	l15380
	line	151
	
l15388:	
;main.c: 149: {
;main.c: 151: LED_Init();
	fcall	_LED_Init
	line	152
;main.c: 152: KEY_DeInit();
	fcall	_KEY_DeInit
	line	153
	
l15390:	
;main.c: 153: Motor_Stop();
	fcall	_Motor_Stop
	line	154
	
l15392:	
;main.c: 154: Motor_SetStatus(MOTOR_MODE_STOP);
	movlw	(01h)
	fcall	_Motor_SetStatus
	line	155
	
l15394:	
;main.c: 155: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	156
	
l15396:	
;main.c: 156: LEDTimer_DispRunLimitCmd(DISABLE);
	movlw	(0)
	fcall	_LEDTimer_DispRunLimitCmd
	line	158
	
l15398:	
;main.c: 158: ChargeCtrl_Output(Bit_SET);
	movlw	(01h)
	fcall	_ChargeCtrl_Output
	line	159
	
l15400:	
;main.c: 159: LED_VoltageChargeOutput(Bit_SET);
	movlw	(01h)
	fcall	_LED_VoltageChargeOutput
	line	162
	
l15402:	
;main.c: 162: ADC_Init((0x06));
	movlw	(06h)
	fcall	_ADC_Init
	line	165
	
l15404:	
;main.c: 165: ChargeTimer_Cmd(ENABLE);
	movlw	(01h)
	fcall	_ChargeTimer_Cmd
	line	166
	
l15406:	
;main.c: 166: ChargeTimer_INTConfig(ENABLE);
	movlw	(01h)
	fcall	_ChargeTimer_INTConfig
	line	170
	
l15408:	
;main.c: 169: {
;main.c: 170: charge_control();
	fcall	_charge_control
	line	173
;main.c: 173: if(!ChargeDetect_GetStatus())
	fcall	_ChargeDetect_GetStatus
	iorlw	0
	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l15408
u2420:
	line	176
	
l15410:	
;main.c: 174: {
;main.c: 176: ChargeTimer_Cmd(DISABLE);
	movlw	(0)
	fcall	_ChargeTimer_Cmd
	line	177
;main.c: 177: ChargeTimer_INTConfig(DISABLE);
	movlw	(0)
	fcall	_ChargeTimer_INTConfig
	line	179
;main.c: 179: SetDeviceMode(RUN_MODE);
	movlw	(0)
	fcall	_SetDeviceMode
	line	180
;main.c: 180: break;
	goto	l15418
	line	189
	
l15412:	
;main.c: 187: {
;main.c: 189: LED_Init();
	fcall	_LED_Init
	line	190
	
l15414:	
# 190 "main.c"
SLEEP ;#
psect	maintext
	line	123
;main.c: 192: break;
	
l15418:	
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
	goto	l15376
	xorlw	1^0	; case 1
	skipnz
	goto	l15388
	xorlw	2^1	; case 2
	skipnz
	goto	l15412
	goto	l15418
	opt asmopt_on

	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	200
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Motor_HandleStatusChangeEvt
psect	text1651,local,class=CODE,delta=2
global __ptext1651
__ptext1651:

;; *************** function _Motor_HandleStatusChangeEvt *****************
;; Defined at:
;;		line 371 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     enum E1552
;; Auto vars:     Size  Location     Type
;;  status          1    6[BANK0 ] enum E1552
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
psect	text1651
	file	"ms83fxx02_motor.c"
	line	371
	global	__size_of_Motor_HandleStatusChangeEvt
	__size_of_Motor_HandleStatusChangeEvt	equ	__end_of_Motor_HandleStatusChangeEvt-_Motor_HandleStatusChangeEvt
	
_Motor_HandleStatusChangeEvt:	
	opt	stack 0
; Regs used in _Motor_HandleStatusChangeEvt: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Motor_HandleStatusChangeEvt@status stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Motor_HandleStatusChangeEvt@status)
	line	372
	
l15296:	
;ms83fxx02_motor.c: 372: if(!Motor_CheckRunLimit())
	fcall	_Motor_CheckRunLimit
	iorlw	0
	skipz
	goto	u2281
	goto	u2280
u2281:
	goto	l15350
u2280:
	goto	l15348
	line	378
	
l15300:	
;ms83fxx02_motor.c: 377: {
;ms83fxx02_motor.c: 378: if(KEY_GetReleaseStatus())
	fcall	_KEY_GetReleaseStatus
	xorlw	0
	skipnz
	goto	u2291
	goto	u2290
u2291:
	goto	l15310
u2290:
	line	380
	
l15302:	
;ms83fxx02_motor.c: 379: {
;ms83fxx02_motor.c: 380: Motor_SetStatus(MOTOR_MODE_DUTY_100);
	movlw	(02h)
	fcall	_Motor_SetStatus
	line	381
	
l15304:	
;ms83fxx02_motor.c: 381: Motor_Start(MOTOR_MODE_DUTY_100);
	movlw	(02h)
	fcall	_Motor_Start
	line	384
	
l15306:	
;ms83fxx02_motor.c: 384: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	385
	
l15308:	
;ms83fxx02_motor.c: 385: MotorOperationTimer_Init(MotorOperationTimer_30s);
	movlw	(01h)
	fcall	_MotorOperationTimer_Init
	line	386
;ms83fxx02_motor.c: 386: }
	goto	l8915
	line	389
	
l15310:	
;ms83fxx02_motor.c: 387: else
;ms83fxx02_motor.c: 388: {
;ms83fxx02_motor.c: 389: if(!key_press_flag)
	movf	(_key_press_flag),f
	skipz	;volatile
	goto	u2301
	goto	u2300
u2301:
	goto	l8897
u2300:
	line	392
	
l15312:	
# 392 "ms83fxx02_motor.c"
SLEEP ;#
psect	text1651
	goto	l8915
	line	399
	
l15314:	
;ms83fxx02_motor.c: 398: {
;ms83fxx02_motor.c: 399: if(KEY_GetReleaseStatus())
	fcall	_KEY_GetReleaseStatus
	xorlw	0
	skipnz
	goto	u2311
	goto	u2310
u2311:
	goto	l8915
u2310:
	line	402
	
l15316:	
;ms83fxx02_motor.c: 400: {
;ms83fxx02_motor.c: 402: if(SwitchModeTimer_GetINTStatus())
	fcall	_SwitchModeTimer_GetINTStatus
	xorlw	0
	skipnz
	goto	u2321
	goto	u2320
u2321:
	goto	l15320
u2320:
	line	404
	
l15318:	
;ms83fxx02_motor.c: 403: {
;ms83fxx02_motor.c: 404: Motor_Stop();
	fcall	_Motor_Stop
	line	405
;ms83fxx02_motor.c: 405: Motor_SetStatus(MOTOR_MODE_STOP);
	movlw	(01h)
	fcall	_Motor_SetStatus
	line	406
;ms83fxx02_motor.c: 406: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	407
;ms83fxx02_motor.c: 407: }
	goto	l8915
	line	411
	
l15320:	
;ms83fxx02_motor.c: 408: else
;ms83fxx02_motor.c: 409: {
;ms83fxx02_motor.c: 411: SwitchModeTimer_INTConfig(DISABLE);
	movlw	(0)
	fcall	_SwitchModeTimer_INTConfig
	line	412
;ms83fxx02_motor.c: 412: SwitchModeTimer_Cmd(DISABLE);
	movlw	(0)
	fcall	_SwitchModeTimer_Cmd
	line	414
;ms83fxx02_motor.c: 414: Motor_SetStatus(MOTOR_MODE_DUTY_90);
	movlw	(03h)
	fcall	_Motor_SetStatus
	line	415
	
l15322:	
;ms83fxx02_motor.c: 415: Motor_Start(MOTOR_MODE_DUTY_90);
	movlw	(03h)
	fcall	_Motor_Start
	line	418
	
l15324:	
;ms83fxx02_motor.c: 418: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	419
	
l15326:	
;ms83fxx02_motor.c: 419: MotorOperationTimer_Init(MotorOperationTimer_30s);
	movlw	(01h)
	fcall	_MotorOperationTimer_Init
	goto	l8915
	line	426
	
l15328:	
;ms83fxx02_motor.c: 425: {
;ms83fxx02_motor.c: 426: if(KEY_GetReleaseStatus())
	fcall	_KEY_GetReleaseStatus
	xorlw	0
	skipnz
	goto	u2331
	goto	u2330
u2331:
	goto	l8915
u2330:
	line	429
	
l15330:	
;ms83fxx02_motor.c: 427: {
;ms83fxx02_motor.c: 429: if(SwitchModeTimer_GetINTStatus())
	fcall	_SwitchModeTimer_GetINTStatus
	xorlw	0
	skipnz
	goto	u2341
	goto	u2340
u2341:
	goto	l15334
u2340:
	line	431
	
l15332:	
;ms83fxx02_motor.c: 430: {
;ms83fxx02_motor.c: 431: Motor_Stop();
	fcall	_Motor_Stop
	line	432
;ms83fxx02_motor.c: 432: Motor_SetStatus(MOTOR_MODE_STOP);
	movlw	(01h)
	fcall	_Motor_SetStatus
	line	433
;ms83fxx02_motor.c: 433: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	434
;ms83fxx02_motor.c: 434: }
	goto	l8915
	line	438
	
l15334:	
;ms83fxx02_motor.c: 435: else
;ms83fxx02_motor.c: 436: {
;ms83fxx02_motor.c: 438: SwitchModeTimer_Cmd(DISABLE);
	movlw	(0)
	fcall	_SwitchModeTimer_Cmd
	line	439
;ms83fxx02_motor.c: 439: SwitchModeTimer_INTConfig(DISABLE);
	movlw	(0)
	fcall	_SwitchModeTimer_INTConfig
	line	441
;ms83fxx02_motor.c: 441: Motor_SetStatus(MOTOR_MODE_DUTY_80);
	movlw	(04h)
	fcall	_Motor_SetStatus
	line	442
	
l15336:	
;ms83fxx02_motor.c: 442: Motor_Start(MOTOR_MODE_DUTY_80);
	movlw	(04h)
	fcall	_Motor_Start
	line	445
	
l15338:	
;ms83fxx02_motor.c: 445: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	446
	
l15340:	
;ms83fxx02_motor.c: 446: MotorOperationTimer_Init(MotorOperationTimer_30s);
	movlw	(01h)
	fcall	_MotorOperationTimer_Init
	goto	l8915
	line	453
	
l15342:	
;ms83fxx02_motor.c: 452: {
;ms83fxx02_motor.c: 453: if(KEY_GetReleaseStatus())
	fcall	_KEY_GetReleaseStatus
	xorlw	0
	skipnz
	goto	u2351
	goto	u2350
u2351:
	goto	l8915
u2350:
	line	455
	
l15344:	
;ms83fxx02_motor.c: 454: {
;ms83fxx02_motor.c: 455: Motor_Stop();
	fcall	_Motor_Stop
	line	456
;ms83fxx02_motor.c: 456: Motor_SetStatus(MOTOR_MODE_STOP);
	movlw	(01h)
	fcall	_Motor_SetStatus
	line	457
;ms83fxx02_motor.c: 457: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	goto	l8915
	line	374
	
l15348:	
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
	goto	l15300
	xorlw	2^1	; case 2
	skipnz
	goto	l15314
	xorlw	3^2	; case 3
	skipnz
	goto	l15328
	xorlw	4^3	; case 4
	skipnz
	goto	l15342
	goto	l8915
	opt asmopt_on

	line	465
	
l8897:	
	line	466
;ms83fxx02_motor.c: 466: }
	goto	l8915
	line	470
	
l15350:	
;ms83fxx02_motor.c: 467: else
;ms83fxx02_motor.c: 468: {
;ms83fxx02_motor.c: 470: LEDTimer_DispRunLimitCmd(ENABLE);
	movlw	(01h)
	fcall	_LEDTimer_DispRunLimitCmd
	line	473
	
l15352:	
;ms83fxx02_motor.c: 473: if(KEY_GetPressStatus())
	fcall	_KEY_GetPressStatus
	xorlw	0
	skipnz
	goto	u2361
	goto	u2360
u2361:
	goto	l15358
u2360:
	line	475
	
l15354:	
;ms83fxx02_motor.c: 474: {
;ms83fxx02_motor.c: 475: key_press_time_count = 0;
	clrf	(_key_press_time_count)	;volatile
	line	477
	
l15356:	
;ms83fxx02_motor.c: 477: MotorOperationTimer_Init(MotorOperationTimer_8s);
	movlw	(03h)
	fcall	_MotorOperationTimer_Init
	line	480
	
l15358:	
;ms83fxx02_motor.c: 478: }
;ms83fxx02_motor.c: 480: if(key_press_time_count)
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key_press_time_count),w	;volatile
	skipz
	goto	u2370
	goto	l15362
u2370:
	line	484
	
l15360:	
;ms83fxx02_motor.c: 481: {
;ms83fxx02_motor.c: 484: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000004), Bit_RESET);
	movlw	(04h)
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	485
;ms83fxx02_motor.c: 485: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000008), Bit_RESET);
	movlw	(08h)
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	486
;ms83fxx02_motor.c: 486: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), Bit_RESET);
	clrf	(?_GPIO_WriteBit)
	incf	(?_GPIO_WriteBit),f
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	489
;ms83fxx02_motor.c: 489: LEDTimer_DispRunLimitCmd(DISABLE);
	movlw	(0)
	fcall	_LEDTimer_DispRunLimitCmd
	line	492
	
l15362:	
;ms83fxx02_motor.c: 490: }
;ms83fxx02_motor.c: 492: if(KEY_GetReleaseStatus())
	fcall	_KEY_GetReleaseStatus
	xorlw	0
	skipnz
	goto	u2381
	goto	u2380
u2381:
	goto	l8915
u2380:
	line	494
	
l15364:	
;ms83fxx02_motor.c: 493: {
;ms83fxx02_motor.c: 494: if(key_press_time_count)
	movf	(_key_press_time_count),w	;volatile
	skipz
	goto	u2390
	goto	l15368
u2390:
	line	497
	
l15366:	
;ms83fxx02_motor.c: 495: {
;ms83fxx02_motor.c: 497: motor_oper_record = 0;
	clrf	(_motor_oper_record)	;volatile
	clrf	(_motor_oper_record+1)	;volatile
	line	498
;ms83fxx02_motor.c: 498: key_press_time_count = 0;
	clrf	(_key_press_time_count)	;volatile
	line	499
;ms83fxx02_motor.c: 499: }
	goto	l8915
	line	502
	
l15368:	
;ms83fxx02_motor.c: 500: else
;ms83fxx02_motor.c: 501: {
;ms83fxx02_motor.c: 502: MotorOperationTimer_Stop();
	fcall	_MotorOperationTimer_Stop
	line	506
	
l8915:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_HandleStatusChangeEvt
	__end_of_Motor_HandleStatusChangeEvt:
;; =============== function _Motor_HandleStatusChangeEvt ends ============

	signat	_Motor_HandleStatusChangeEvt,4216
	global	_charge_control
psect	text1652,local,class=CODE,delta=2
global __ptext1652
__ptext1652:

;; *************** function _charge_control *****************
;; Defined at:
;;		line 83 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  charge_count    2   18[BANK0 ] unsigned int 
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
psect	text1652
	file	"main.c"
	line	83
	global	__size_of_charge_control
	__size_of_charge_control	equ	__end_of_charge_control-_charge_control
	
_charge_control:	
	opt	stack 0
; Regs used in _charge_control: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	84
	
l15284:	
;main.c: 84: uint32_t charge_count = ChargeTimer_GetCount();
	fcall	_ChargeTimer_GetCount
	movf	(1+(?_ChargeTimer_GetCount)),w
	movwf	(charge_control@charge_count+1)
	movf	(0+(?_ChargeTimer_GetCount)),w
	movwf	(charge_control@charge_count)
	line	87
	
l15286:	
;main.c: 87: if((charge_count >= 5) && (charge_count < 7200))
	movlw	high(05h)
	subwf	(charge_control@charge_count+1),w
	movlw	low(05h)
	skipnz
	subwf	(charge_control@charge_count),w
	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l15292
u2250:
	
l15288:	
	movlw	high(01C20h)
	subwf	(charge_control@charge_count+1),w
	movlw	low(01C20h)
	skipnz
	subwf	(charge_control@charge_count),w
	skipnc
	goto	u2261
	goto	u2260
u2261:
	goto	l15292
u2260:
	line	89
	
l15290:	
;main.c: 88: {
;main.c: 89: Battery_Detect();
	fcall	_Battery_Detect
	line	90
;main.c: 90: }
	goto	l1146
	line	93
	
l15292:	
;main.c: 91: else
;main.c: 92: {
;main.c: 93: if(charge_count >= 7200)
	movlw	high(01C20h)
	subwf	(charge_control@charge_count+1),w
	movlw	low(01C20h)
	skipnz
	subwf	(charge_control@charge_count),w
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l1146
u2270:
	line	95
	
l15294:	
;main.c: 94: {
;main.c: 95: LED_VoltageChargeOutput(Bit_RESET);
	movlw	(0)
	fcall	_LED_VoltageChargeOutput
	line	97
;main.c: 97: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), SET);
	clrf	(?_GPIO_WriteBit)
	incf	(?_GPIO_WriteBit),f
	clrf	0+(?_GPIO_WriteBit)+01h
	incf	0+(?_GPIO_WriteBit)+01h,f
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	100
	
l1146:	
	return
	opt stack 0
GLOBAL	__end_of_charge_control
	__end_of_charge_control:
;; =============== function _charge_control ends ============

	signat	_charge_control,88
	global	_Driver_Init
psect	text1653,local,class=CODE,delta=2
global __ptext1653
__ptext1653:

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
psect	text1653
	file	"main.c"
	line	57
	global	__size_of_Driver_Init
	__size_of_Driver_Init	equ	__end_of_Driver_Init-_Driver_Init
	
_Driver_Init:	
	opt	stack 0
; Regs used in _Driver_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	59
	
l15274:	
;main.c: 59: LED_Init();
	fcall	_LED_Init
	line	62
;main.c: 62: KEY_Init();
	fcall	_KEY_Init
	line	65
;main.c: 65: Charge_Init();
	fcall	_Charge_Init
	line	68
	
l15276:	
;main.c: 68: ADC_Init((0x06));
	movlw	(06h)
	fcall	_ADC_Init
	line	70
	
l15278:	
;main.c: 70: LEDTimer_Cmd(TIM_PERIOD_0_33ms, ENABLE);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(?_LEDTimer_Cmd)
	incf	(?_LEDTimer_Cmd),f
	movlw	(02h)
	fcall	_LEDTimer_Cmd
	line	71
	
l15280:	
;main.c: 71: LEDTimer_INTConfig(ENABLE);
	movlw	(01h)
	fcall	_LEDTimer_INTConfig
	line	74
	
l15282:	
;main.c: 74: EEPROM_Init();
	fcall	_EEPROM_Init
	line	75
	
l1140:	
	return
	opt stack 0
GLOBAL	__end_of_Driver_Init
	__end_of_Driver_Init:
;; =============== function _Driver_Init ends ============

	signat	_Driver_Init,88
	global	_Motor_Start
psect	text1654,local,class=CODE,delta=2
global __ptext1654
__ptext1654:

;; *************** function _Motor_Start *****************
;; Defined at:
;;		line 142 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     enum E1552
;; Auto vars:     Size  Location     Type
;;  status          1    5[BANK0 ] enum E1552
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
psect	text1654
	file	"ms83fxx02_motor.c"
	line	142
	global	__size_of_Motor_Start
	__size_of_Motor_Start	equ	__end_of_Motor_Start-_Motor_Start
	
_Motor_Start:	
	opt	stack 0
; Regs used in _Motor_Start: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Motor_Start@status stored from wreg
	movwf	(Motor_Start@status)
	line	144
	
l15260:	
;ms83fxx02_motor.c: 144: switch(status)
	goto	l15270
	line	148
	
l15262:	
;ms83fxx02_motor.c: 147: {
;ms83fxx02_motor.c: 148: LED_DisplayMotorStatus(GPIOA, ((uint8_t)0x00000004));
	movlw	(04h)
	movwf	(?_LED_DisplayMotorStatus)
	movlw	(0)
	fcall	_LED_DisplayMotorStatus
	line	149
;ms83fxx02_motor.c: 149: break;
	goto	l15272
	line	153
	
l15264:	
;ms83fxx02_motor.c: 152: {
;ms83fxx02_motor.c: 153: LED_DisplayMotorStatus(GPIOA, ((uint8_t)0x00000008));
	movlw	(08h)
	movwf	(?_LED_DisplayMotorStatus)
	movlw	(0)
	fcall	_LED_DisplayMotorStatus
	line	154
;ms83fxx02_motor.c: 154: break;
	goto	l15272
	line	158
	
l15266:	
;ms83fxx02_motor.c: 157: {
;ms83fxx02_motor.c: 158: LED_DisplayMotorStatus(GPIOC, ((uint8_t)0x00000001));
	clrf	(?_LED_DisplayMotorStatus)
	incf	(?_LED_DisplayMotorStatus),f
	movlw	(01h)
	fcall	_LED_DisplayMotorStatus
	line	159
;ms83fxx02_motor.c: 159: break;
	goto	l15272
	line	144
	
l15270:	
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
	goto	l15262
	xorlw	3^2	; case 3
	skipnz
	goto	l15264
	xorlw	4^3	; case 4
	skipnz
	goto	l15266
	goto	l15272
	opt asmopt_on

	line	167
	
l15272:	
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
	
l8854:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_Start
	__end_of_Motor_Start:
;; =============== function _Motor_Start ends ============

	signat	_Motor_Start,4216
	global	_Battery_Detect
psect	text1655,local,class=CODE,delta=2
global __ptext1655
__ptext1655:

;; *************** function _Battery_Detect *****************
;; Defined at:
;;		line 216 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  adc_data        2   16[BANK0 ] unsigned int 
;;  mode            1   15[BANK0 ] enum E1521
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
;;      Locals:         0       3       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Battery_HandleData
;;		_GetDeviceMode
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1655
	file	"ms83fxx02_pwr.c"
	line	216
	global	__size_of_Battery_Detect
	__size_of_Battery_Detect	equ	__end_of_Battery_Detect-_Battery_Detect
	
_Battery_Detect:	
	opt	stack 0
; Regs used in _Battery_Detect: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	217
	
l15214:	
	line	218
;ms83fxx02_pwr.c: 218: DEVICE_MODE_Type mode = RUN_MODE;
	clrf	(Battery_Detect@mode)
	line	220
	
l15216:	
;ms83fxx02_pwr.c: 220: if(!battery_handle_flag)
	movf	(_battery_handle_flag),f
	skipz	;volatile
	goto	u2171
	goto	u2170
u2171:
	goto	l15222
u2170:
	goto	l10063
	line	222
	
l15218:	
;ms83fxx02_pwr.c: 221: {
;ms83fxx02_pwr.c: 222: return;
	goto	l10063
	line	226
	
l15222:	
;ms83fxx02_pwr.c: 224: else
;ms83fxx02_pwr.c: 225: {
;ms83fxx02_pwr.c: 226: adc_data = Battery_HandleData();
	fcall	_Battery_HandleData
	movf	(1+(?_Battery_HandleData)),w
	movwf	(Battery_Detect@adc_data+1)
	movf	(0+(?_Battery_HandleData)),w
	movwf	(Battery_Detect@adc_data)
	line	229
	
l15224:	
;ms83fxx02_pwr.c: 227: }
;ms83fxx02_pwr.c: 229: mode = GetDeviceMode();
	fcall	_GetDeviceMode
	movwf	(Battery_Detect@mode)
	line	231
	
l15226:	
;ms83fxx02_pwr.c: 231: if(mode == RUN_MODE)
	movf	(Battery_Detect@mode),f
	skipz
	goto	u2181
	goto	u2180
u2181:
	goto	l15254
u2180:
	line	234
	
l15228:	
;ms83fxx02_pwr.c: 232: {
;ms83fxx02_pwr.c: 234: if(adc_data < ((uint16_t)460))
	movlw	high(01CCh)
	subwf	(Battery_Detect@adc_data+1),w
	movlw	low(01CCh)
	skipnz
	subwf	(Battery_Detect@adc_data),w
	skipnc
	goto	u2191
	goto	u2190
u2191:
	goto	l15238
u2190:
	line	238
	
l15230:	
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
	
l15232:	
;ms83fxx02_pwr.c: 244: LED_Init();
	fcall	_LED_Init
	line	245
	
l15234:	
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
	
l15236:	
# 253 "ms83fxx02_pwr.c"
SLEEP ;#
psect	text1655
	line	255
;ms83fxx02_pwr.c: 255: }
	goto	l10063
	line	257
	
l15238:	
;ms83fxx02_pwr.c: 257: else if(adc_data < ((uint16_t)512))
	movlw	high(0200h)
	subwf	(Battery_Detect@adc_data+1),w
	movlw	low(0200h)
	skipnz
	subwf	(Battery_Detect@adc_data),w
	skipnc
	goto	u2201
	goto	u2200
u2201:
	goto	l15244
u2200:
	line	260
	
l15240:	
;ms83fxx02_pwr.c: 258: {
;ms83fxx02_pwr.c: 260: LEDTimer_DispUnderVoltCmd(ENABLE);
	movlw	(01h)
	fcall	_LEDTimer_DispUnderVoltCmd
	line	261
	
l15242:	
;ms83fxx02_pwr.c: 261: detect_under_voltage = 1;
	clrf	(_detect_under_voltage)
	incf	(_detect_under_voltage),f
	line	263
;ms83fxx02_pwr.c: 263: }
	goto	l10063
	line	267
	
l15244:	
;ms83fxx02_pwr.c: 265: else
;ms83fxx02_pwr.c: 266: {
;ms83fxx02_pwr.c: 267: if(detect_under_voltage)
	movf	(_detect_under_voltage),w
	skipz
	goto	u2210
	goto	l10063
u2210:
	line	269
	
l15246:	
;ms83fxx02_pwr.c: 268: {
;ms83fxx02_pwr.c: 269: if(adc_data > ((uint16_t)614))
	movlw	high(0267h)
	subwf	(Battery_Detect@adc_data+1),w
	movlw	low(0267h)
	skipnz
	subwf	(Battery_Detect@adc_data),w
	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l15218
u2220:
	line	271
	
l15248:	
;ms83fxx02_pwr.c: 270: {
;ms83fxx02_pwr.c: 271: detect_under_voltage = 0;
	clrf	(_detect_under_voltage)
	line	272
	
l15250:	
;ms83fxx02_pwr.c: 272: LED_UnderVoltageOutput(Bit_RESET);
	movlw	(0)
	fcall	_LED_UnderVoltageOutput
	line	274
	
l15252:	
;ms83fxx02_pwr.c: 274: LEDTimer_DispUnderVoltCmd(DISABLE);
	movlw	(0)
	fcall	_LEDTimer_DispUnderVoltCmd
	goto	l10063
	line	282
	
l15254:	
;ms83fxx02_pwr.c: 280: else
;ms83fxx02_pwr.c: 281: {
;ms83fxx02_pwr.c: 282: if(mode == CHARGE_MODE)
	decf	(Battery_Detect@mode),w
	skipz
	goto	u2231
	goto	u2230
u2231:
	goto	l10063
u2230:
	line	285
	
l15256:	
;ms83fxx02_pwr.c: 283: {
;ms83fxx02_pwr.c: 285: if(adc_data > ((uint16_t)686))
	movlw	high(02AFh)
	subwf	(Battery_Detect@adc_data+1),w
	movlw	low(02AFh)
	skipnz
	subwf	(Battery_Detect@adc_data),w
	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l10063
u2240:
	line	288
	
l15258:	
;ms83fxx02_pwr.c: 286: {
;ms83fxx02_pwr.c: 288: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), Bit_SET);
	clrf	(?_GPIO_WriteBit)
	incf	(?_GPIO_WriteBit),f
	clrf	0+(?_GPIO_WriteBit)+01h
	incf	0+(?_GPIO_WriteBit)+01h,f
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	292
	
l10063:	
	return
	opt stack 0
GLOBAL	__end_of_Battery_Detect
	__end_of_Battery_Detect:
;; =============== function _Battery_Detect ends ============

	signat	_Battery_Detect,88
	global	_Charge_Init
psect	text1656,local,class=CODE,delta=2
global __ptext1656
__ptext1656:

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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ChargeDetect_Init
;;		_ChargeCtrl_Init
;; This function is called by:
;;		_Driver_Init
;; This function uses a non-reentrant model
;;
psect	text1656
	file	"ms83fxx02_charge.c"
	line	49
	global	__size_of_Charge_Init
	__size_of_Charge_Init	equ	__end_of_Charge_Init-_Charge_Init
	
_Charge_Init:	
	opt	stack 0
; Regs used in _Charge_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	50
	
l15212:	
;ms83fxx02_charge.c: 50: ChargeDetect_Init();
	fcall	_ChargeDetect_Init
	line	51
;ms83fxx02_charge.c: 51: ChargeCtrl_Init();
	fcall	_ChargeCtrl_Init
	line	52
	
l2253:	
	return
	opt stack 0
GLOBAL	__end_of_Charge_Init
	__end_of_Charge_Init:
;; =============== function _Charge_Init ends ============

	signat	_Charge_Init,88
	global	_EEPROM_StoreModeData
psect	text1657,local,class=CODE,delta=2
global __ptext1657
__ptext1657:

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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_EEPROM_Write
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1657
	file	"ms83fxx02_pwr.c"
	line	184
	global	__size_of_EEPROM_StoreModeData
	__size_of_EEPROM_StoreModeData	equ	__end_of_EEPROM_StoreModeData-_EEPROM_StoreModeData
	
_EEPROM_StoreModeData:	
	opt	stack 0
; Regs used in _EEPROM_StoreModeData: [wreg+status,2+status,0+pclath+cstack]
	line	185
	
l15210:	
;ms83fxx02_pwr.c: 185: EEPROM_Write(0x11, device_mode);
	bcf	status, 5	;RP0=0, select bank0
	movf	(_device_mode),w	;volatile
	movwf	(?_EEPROM_Write)
	movlw	(011h)
	fcall	_EEPROM_Write
	line	186
	
l10050:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_StoreModeData
	__end_of_EEPROM_StoreModeData:
;; =============== function _EEPROM_StoreModeData ends ============

	signat	_EEPROM_StoreModeData,88
	global	_EEPROM_SetFlag
psect	text1658,local,class=CODE,delta=2
global __ptext1658
__ptext1658:

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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_EEPROM_Write
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1658
	file	"ms83fxx02_pwr.c"
	line	174
	global	__size_of_EEPROM_SetFlag
	__size_of_EEPROM_SetFlag	equ	__end_of_EEPROM_SetFlag-_EEPROM_SetFlag
	
_EEPROM_SetFlag:	
	opt	stack 0
; Regs used in _EEPROM_SetFlag: [wreg+status,2+status,0+pclath+cstack]
	line	175
	
l15208:	
;ms83fxx02_pwr.c: 175: EEPROM_Write(0x16, 0x01);
	clrf	(?_EEPROM_Write)
	incf	(?_EEPROM_Write),f
	movlw	(016h)
	fcall	_EEPROM_Write
	line	176
	
l10044:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_SetFlag
	__end_of_EEPROM_SetFlag:
;; =============== function _EEPROM_SetFlag ends ============

	signat	_EEPROM_SetFlag,88
	global	_EEPROM_StoreMotorData
psect	text1659,local,class=CODE,delta=2
global __ptext1659
__ptext1659:

;; *************** function _EEPROM_StoreMotorData *****************
;; Defined at:
;;		line 509 in file "ms83fxx02_motor.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_EEPROM_Write
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1659
	file	"ms83fxx02_motor.c"
	line	509
	global	__size_of_EEPROM_StoreMotorData
	__size_of_EEPROM_StoreMotorData	equ	__end_of_EEPROM_StoreMotorData-_EEPROM_StoreMotorData
	
_EEPROM_StoreMotorData:	
	opt	stack 0
; Regs used in _EEPROM_StoreMotorData: [wreg+status,2+status,0+pclath+cstack]
	line	510
	
l15206:	
;ms83fxx02_motor.c: 510: EEPROM_Write(0x12, motor_status);
	movf	(_motor_status),w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_EEPROM_Write)
	movlw	(012h)
	fcall	_EEPROM_Write
	line	511
;ms83fxx02_motor.c: 511: EEPROM_Write(0x13, motor_intr_count);
	movf	(_motor_intr_count),w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_EEPROM_Write)
	movlw	(013h)
	fcall	_EEPROM_Write
	line	512
;ms83fxx02_motor.c: 512: EEPROM_Write(0x14, motor_oper_record);
	bcf	status, 5	;RP0=0, select bank0
	movf	(_motor_oper_record),w	;volatile
	movwf	(?_EEPROM_Write)
	movlw	(014h)
	fcall	_EEPROM_Write
	line	513
;ms83fxx02_motor.c: 513: EEPROM_Write(0x15, motor_timing_running_flag);
	bcf	status, 5	;RP0=0, select bank0
	movf	(_motor_timing_running_flag),w
	movwf	(?_EEPROM_Write)
	movlw	(015h)
	fcall	_EEPROM_Write
	line	514
	
l8918:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_StoreMotorData
	__end_of_EEPROM_StoreMotorData:
;; =============== function _EEPROM_StoreMotorData ends ============

	signat	_EEPROM_StoreMotorData,88
	global	_LED_UnderVoltageOutput
psect	text1660,local,class=CODE,delta=2
global __ptext1660
__ptext1660:

;; *************** function _LED_UnderVoltageOutput *****************
;; Defined at:
;;		line 85 in file "ms83fxx02_led.c"
;; Parameters:    Size  Location     Type
;;  BitVal          1    wreg     enum E1499
;; Auto vars:     Size  Location     Type
;;  BitVal          1    3[BANK0 ] enum E1499
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_GPIO_WriteBit
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1660
	file	"ms83fxx02_led.c"
	line	85
	global	__size_of_LED_UnderVoltageOutput
	__size_of_LED_UnderVoltageOutput	equ	__end_of_LED_UnderVoltageOutput-_LED_UnderVoltageOutput
	
_LED_UnderVoltageOutput:	
	opt	stack 0
; Regs used in _LED_UnderVoltageOutput: [wreg+status,2+status,0+pclath+cstack]
;LED_UnderVoltageOutput@BitVal stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(LED_UnderVoltageOutput@BitVal)
	line	86
	
l15204:	
;ms83fxx02_led.c: 86: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000008), BitVal);
	movlw	(08h)
	movwf	(?_GPIO_WriteBit)
	movf	(LED_UnderVoltageOutput@BitVal),w
	movwf	0+(?_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	87
	
l6628:	
	return
	opt stack 0
GLOBAL	__end_of_LED_UnderVoltageOutput
	__end_of_LED_UnderVoltageOutput:
;; =============== function _LED_UnderVoltageOutput ends ============

	signat	_LED_UnderVoltageOutput,4216
	global	_LED_DisplayMotorStatus
psect	text1661,local,class=CODE,delta=2
global __ptext1661
__ptext1661:

;; *************** function _LED_DisplayMotorStatus *****************
;; Defined at:
;;		line 56 in file "ms83fxx02_led.c"
;; Parameters:    Size  Location     Type
;;  GPIOx           1    wreg     enum E1491
;;  GPIO_Pin        1    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  GPIOx           1    4[BANK0 ] enum E1491
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
;; Hardware stack levels required when called:    5
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
	opt	stack 0
; Regs used in _LED_DisplayMotorStatus: [wreg+status,2+status,0+pclath+cstack]
;LED_DisplayMotorStatus@GPIOx stored from wreg
	movwf	(LED_DisplayMotorStatus@GPIOx)
	line	57
	
l15202:	
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
	
l6619:	
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
;; Hardware stack levels required when called:    5
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
	opt	stack 0
; Regs used in _ChargeCtrl_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	42
	
l15194:	
;ms83fxx02_charge.c: 40: GPIO_InitTypeDef GPIO_InitStruct;
;ms83fxx02_charge.c: 42: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	clrf	0+(ChargeCtrl_Init@GPIO_InitStruct)+01h
	incf	0+(ChargeCtrl_Init@GPIO_InitStruct)+01h,f
	line	43
	
l15196:	
;ms83fxx02_charge.c: 43: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000080);
	movlw	(080h)
	movwf	(ChargeCtrl_Init@GPIO_InitStruct)
	line	44
	
l15198:	
;ms83fxx02_charge.c: 44: GPIO_Init(GPIOA, &GPIO_InitStruct);
	movlw	(ChargeCtrl_Init@GPIO_InitStruct)&0ffh
	movwf	(?_GPIO_Init)
	movlw	(0)
	fcall	_GPIO_Init
	line	45
	
l15200:	
;ms83fxx02_charge.c: 45: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000080), Bit_RESET);
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	46
	
l2250:	
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
;; Hardware stack levels required when called:    5
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
	opt	stack 0
; Regs used in _ChargeDetect_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	30
	
l15184:	
;ms83fxx02_charge.c: 28: GPIO_InitTypeDef GPIO_InitStruct;
;ms83fxx02_charge.c: 30: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN;
	clrf	0+(ChargeDetect_Init@GPIO_InitStruct)+01h
	line	31
	
l15186:	
;ms83fxx02_charge.c: 31: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000010);
	movlw	(010h)
	movwf	(ChargeDetect_Init@GPIO_InitStruct)
	line	32
	
l15188:	
;ms83fxx02_charge.c: 32: GPIO_Init(GPIOA, &GPIO_InitStruct);
	movlw	(ChargeDetect_Init@GPIO_InitStruct)&0ffh
	movwf	(?_GPIO_Init)
	movlw	(0)
	fcall	_GPIO_Init
	line	34
	
l15190:	
;ms83fxx02_charge.c: 34: GPIO_ReadInputDataBit(GPIOA, ((uint8_t)0x00000010));
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_GPIO_ReadInputDataBit)
	movlw	(0)
	fcall	_GPIO_ReadInputDataBit
	line	35
	
l15192:	
;ms83fxx02_charge.c: 35: GPIO_INTConfig(GPIOA, ((uint8_t)0x00000010), ENABLE);
	movlw	(010h)
	movwf	(?_GPIO_INTConfig)
	clrf	0+(?_GPIO_INTConfig)+01h
	incf	0+(?_GPIO_INTConfig)+01h,f
	movlw	(0)
	fcall	_GPIO_INTConfig
	line	36
	
l2247:	
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
;;  BitVal          1    3[BANK0 ] enum E1499
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
;; Hardware stack levels required when called:    5
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
	opt	stack 2
; Regs used in _ChargeCtrl_Output: [wreg+status,2+status,0+pclath+cstack]
;ChargeCtrl_Output@BitVal stored from wreg
	movwf	(ChargeCtrl_Output@BitVal)
	line	56
	
l15182:	
;ms83fxx02_charge.c: 56: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000080), BitVal);
	movlw	(080h)
	movwf	(?_GPIO_WriteBit)
	movf	(ChargeCtrl_Output@BitVal),w
	movwf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	57
	
l2256:	
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
;;		line 281 in file "ms83fxx02_motor.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Motor_CheckRunLimit
;; This function is called by:
;;		_main
;;		_Motor_HandleStatusChangeEvt
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1665
	file	"ms83fxx02_motor.c"
	line	281
	global	__size_of_MotorOperationTimer_Stop
	__size_of_MotorOperationTimer_Stop	equ	__end_of_MotorOperationTimer_Stop-_MotorOperationTimer_Stop
	
_MotorOperationTimer_Stop:	
	opt	stack 0
; Regs used in _MotorOperationTimer_Stop: [wreg+status,2+pclath+cstack]
	line	283
	
l15174:	
;ms83fxx02_motor.c: 283: TMR4ON = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2226/8)^0100h,(2226)&7
	line	285
;ms83fxx02_motor.c: 285: TMR4IE = 0;
	bcf	(2225/8)^0100h,(2225)&7
	line	287
	
l15176:	
;ms83fxx02_motor.c: 287: if(!Motor_CheckRunLimit())
	fcall	_Motor_CheckRunLimit
	iorlw	0
	skipz
	goto	u2161
	goto	u2160
u2161:
	goto	l8872
u2160:
	line	290
	
l15178:	
;ms83fxx02_motor.c: 288: {
;ms83fxx02_motor.c: 290: motor_timing_running_flag = 1;
	clrf	(_motor_timing_running_flag)
	incf	(_motor_timing_running_flag),f
	line	291
	
l15180:	
;ms83fxx02_motor.c: 291: motor_intr_count = 0;
	clrf	(_motor_intr_count)	;volatile
	line	293
	
l8872:	
	return
	opt stack 0
GLOBAL	__end_of_MotorOperationTimer_Stop
	__end_of_MotorOperationTimer_Stop:
;; =============== function _MotorOperationTimer_Stop ends ============

	signat	_MotorOperationTimer_Stop,88
	global	_Motor_Stop
psect	text1666,local,class=CODE,delta=2
global __ptext1666
__ptext1666:

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
;;		_GPIO_WriteBit
;; This function is called by:
;;		_main
;;		_Motor_HandleStatusChangeEvt
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1666
	file	"ms83fxx02_motor.c"
	line	184
	global	__size_of_Motor_Stop
	__size_of_Motor_Stop	equ	__end_of_Motor_Stop-_Motor_Stop
	
_Motor_Stop:	
	opt	stack 0
; Regs used in _Motor_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	188
	
l15170:	
;ms83fxx02_motor.c: 188: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	190
;ms83fxx02_motor.c: 190: TMR2ON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(146/8),(146)&7
	line	194
	
l15172:	
;ms83fxx02_motor.c: 194: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000004), Bit_RESET);
	movlw	(04h)
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	195
;ms83fxx02_motor.c: 195: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000008), Bit_RESET);
	movlw	(08h)
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	196
;ms83fxx02_motor.c: 196: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), Bit_RESET);
	clrf	(?_GPIO_WriteBit)
	incf	(?_GPIO_WriteBit),f
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	197
	
l8857:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_Stop
	__end_of_Motor_Stop:
;; =============== function _Motor_Stop ends ============

	signat	_Motor_Stop,88
	global	_KEY_DeInit
psect	text1667,local,class=CODE,delta=2
global __ptext1667
__ptext1667:

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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_GPIO_Init
;; This function is called by:
;;		_main
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1667
	file	"MS83FXX02_KEY.C"
	line	59
	global	__size_of_KEY_DeInit
	__size_of_KEY_DeInit	equ	__end_of_KEY_DeInit-_KEY_DeInit
	
_KEY_DeInit:	
	opt	stack 0
; Regs used in _KEY_DeInit: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	61
	
l15154:	
;MS83FXX02_KEY.C: 60: GPIO_InitTypeDef GPIO_InitStruct;
;MS83FXX02_KEY.C: 61: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN;
	clrf	0+(KEY_DeInit@GPIO_InitStruct)+01h
	line	62
	
l15156:	
;MS83FXX02_KEY.C: 62: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000002);
	movlw	(02h)
	movwf	(KEY_DeInit@GPIO_InitStruct)
	line	63
	
l15158:	
;MS83FXX02_KEY.C: 63: GPIO_Init(GPIOC, &GPIO_InitStruct);
	movlw	(KEY_DeInit@GPIO_InitStruct)&0ffh
	movwf	(?_GPIO_Init)
	movlw	(01h)
	fcall	_GPIO_Init
	line	65
	
l15160:	
;MS83FXX02_KEY.C: 65: INTE = 0;
	bcf	(92/8),(92)&7
	line	66
	
l15162:	
;MS83FXX02_KEY.C: 66: key_status = 1;
	clrf	(_key_status)	;volatile
	incf	(_key_status),f	;volatile
	line	67
	
l15164:	
;MS83FXX02_KEY.C: 67: key_press = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_key_press)	;volatile
	line	68
	
l15166:	
;MS83FXX02_KEY.C: 68: key_release = 0;
	clrf	(_key_release)	;volatile
	line	69
	
l15168:	
;MS83FXX02_KEY.C: 69: key_press_flag = 0;
	clrf	(_key_press_flag)	;volatile
	line	70
	
l5523:	
	return
	opt stack 0
GLOBAL	__end_of_KEY_DeInit
	__end_of_KEY_DeInit:
;; =============== function _KEY_DeInit ends ============

	signat	_KEY_DeInit,88
	global	_ChargeDetect_GetStatus
psect	text1668,local,class=CODE,delta=2
global __ptext1668
__ptext1668:

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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_GPIO_ReadInputDataBit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1668
	file	"ms83fxx02_charge.c"
	line	60
	global	__size_of_ChargeDetect_GetStatus
	__size_of_ChargeDetect_GetStatus	equ	__end_of_ChargeDetect_GetStatus-_ChargeDetect_GetStatus
	
_ChargeDetect_GetStatus:	
	opt	stack 2
; Regs used in _ChargeDetect_GetStatus: [wreg+status,2+status,0+pclath+cstack]
	line	61
	
l15134:	
;ms83fxx02_charge.c: 61: uint32_t i = 50;
	movlw	032h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ChargeDetect_GetStatus@i)
	clrf	(ChargeDetect_GetStatus@i+1)
	line	63
;ms83fxx02_charge.c: 63: while(i--)
	goto	l15148
	line	65
	
l15136:	
;ms83fxx02_charge.c: 64: {
;ms83fxx02_charge.c: 65: if(1 == GPIO_ReadInputDataBit(GPIOA, ((uint8_t)0x00000010)))
	movlw	(010h)
	movwf	(?_GPIO_ReadInputDataBit)
	movlw	(0)
	fcall	_GPIO_ReadInputDataBit
	xorlw	01h
	skipz
	goto	u2131
	goto	u2130
u2131:
	goto	l15148
u2130:
	line	67
	
l15138:	
;ms83fxx02_charge.c: 66: {
;ms83fxx02_charge.c: 67: charge_detect_count++;
	incf	(_charge_detect_count),f
	line	68
	
l15140:	
;ms83fxx02_charge.c: 68: if(charge_detect_count >= 30)
	movlw	(01Eh)
	subwf	(_charge_detect_count),w
	skipc
	goto	u2141
	goto	u2140
u2141:
	goto	l15148
u2140:
	line	70
	
l15142:	
;ms83fxx02_charge.c: 69: {
;ms83fxx02_charge.c: 70: charge_detect_count = 0;
	clrf	(_charge_detect_count)
	line	71
	
l15144:	
;ms83fxx02_charge.c: 71: return 1;
	movlw	(01h)
	goto	l2263
	line	63
	
l15148:	
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
	goto	u2151
	goto	u2150
u2151:
	goto	l15136
u2150:
	line	76
	
l15150:	
;ms83fxx02_charge.c: 72: }
;ms83fxx02_charge.c: 73: }
;ms83fxx02_charge.c: 74: }
;ms83fxx02_charge.c: 76: return 0;
	movlw	(0)
	line	77
	
l2263:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeDetect_GetStatus
	__end_of_ChargeDetect_GetStatus:
;; =============== function _ChargeDetect_GetStatus ends ============

	signat	_ChargeDetect_GetStatus,89
	global	_EEPROM_RestoreMotorData
psect	text1669,local,class=CODE,delta=2
global __ptext1669
__ptext1669:

;; *************** function _EEPROM_RestoreMotorData *****************
;; Defined at:
;;		line 517 in file "ms83fxx02_motor.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_EEPROM_Read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1669
	file	"ms83fxx02_motor.c"
	line	517
	global	__size_of_EEPROM_RestoreMotorData
	__size_of_EEPROM_RestoreMotorData	equ	__end_of_EEPROM_RestoreMotorData-_EEPROM_RestoreMotorData
	
_EEPROM_RestoreMotorData:	
	opt	stack 2
; Regs used in _EEPROM_RestoreMotorData: [wreg+status,2+pclath+cstack]
	line	518
	
l15132:	
;ms83fxx02_motor.c: 518: motor_status = EEPROM_Read(0x12);
	movlw	(012h)
	fcall	_EEPROM_Read
	movwf	(_motor_status)
	line	519
;ms83fxx02_motor.c: 519: motor_intr_count = EEPROM_Read(0x13);
	movlw	(013h)
	fcall	_EEPROM_Read
	movwf	(_motor_intr_count)	;volatile
	line	520
;ms83fxx02_motor.c: 520: motor_oper_record = EEPROM_Read(0x14);
	movlw	(014h)
	fcall	_EEPROM_Read
	movwf	(_motor_oper_record)	;volatile
	clrf	(_motor_oper_record+1)	;volatile
	line	521
;ms83fxx02_motor.c: 521: motor_timing_running_flag = EEPROM_Read(0x15);
	movlw	(015h)
	fcall	_EEPROM_Read
	movwf	(_motor_timing_running_flag)
	line	522
	
l8921:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_RestoreMotorData
	__end_of_EEPROM_RestoreMotorData:
;; =============== function _EEPROM_RestoreMotorData ends ============

	signat	_EEPROM_RestoreMotorData,88
	global	_EEPROM_RestoreDeviceModeData
psect	text1670,local,class=CODE,delta=2
global __ptext1670
__ptext1670:

;; *************** function _EEPROM_RestoreDeviceModeData *****************
;; Defined at:
;;		line 189 in file "ms83fxx02_pwr.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_EEPROM_Read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1670
	file	"ms83fxx02_pwr.c"
	line	189
	global	__size_of_EEPROM_RestoreDeviceModeData
	__size_of_EEPROM_RestoreDeviceModeData	equ	__end_of_EEPROM_RestoreDeviceModeData-_EEPROM_RestoreDeviceModeData
	
_EEPROM_RestoreDeviceModeData:	
	opt	stack 2
; Regs used in _EEPROM_RestoreDeviceModeData: [wreg+status,2+pclath+cstack]
	line	190
	
l15130:	
;ms83fxx02_pwr.c: 190: device_mode = EEPROM_Read(0x11);
	movlw	(011h)
	fcall	_EEPROM_Read
	movwf	(_device_mode)
	line	191
	
l10053:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_RestoreDeviceModeData
	__end_of_EEPROM_RestoreDeviceModeData:
;; =============== function _EEPROM_RestoreDeviceModeData ends ============

	signat	_EEPROM_RestoreDeviceModeData,88
	global	_EEPROM_GetFlag
psect	text1671,local,class=CODE,delta=2
global __ptext1671
__ptext1671:

;; *************** function _EEPROM_GetFlag *****************
;; Defined at:
;;		line 179 in file "ms83fxx02_pwr.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_EEPROM_Read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1671
	file	"ms83fxx02_pwr.c"
	line	179
	global	__size_of_EEPROM_GetFlag
	__size_of_EEPROM_GetFlag	equ	__end_of_EEPROM_GetFlag-_EEPROM_GetFlag
	
_EEPROM_GetFlag:	
	opt	stack 2
; Regs used in _EEPROM_GetFlag: [wreg+status,2+pclath+cstack]
	line	180
	
l15126:	
;ms83fxx02_pwr.c: 180: return EEPROM_Read(0x16);
	movlw	(016h)
	fcall	_EEPROM_Read
	line	181
	
l10047:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_GetFlag
	__end_of_EEPROM_GetFlag:
;; =============== function _EEPROM_GetFlag ends ============

	signat	_EEPROM_GetFlag,89
	global	_LED_VoltageChargeOutput
psect	text1672,local,class=CODE,delta=2
global __ptext1672
__ptext1672:

;; *************** function _LED_VoltageChargeOutput *****************
;; Defined at:
;;		line 80 in file "ms83fxx02_led.c"
;; Parameters:    Size  Location     Type
;;  BitVal          1    wreg     enum E1499
;; Auto vars:     Size  Location     Type
;;  BitVal          1    3[BANK0 ] enum E1499
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_GPIO_WriteBit
;; This function is called by:
;;		_charge_control
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1672
	file	"ms83fxx02_led.c"
	line	80
	global	__size_of_LED_VoltageChargeOutput
	__size_of_LED_VoltageChargeOutput	equ	__end_of_LED_VoltageChargeOutput-_LED_VoltageChargeOutput
	
_LED_VoltageChargeOutput:	
	opt	stack 1
; Regs used in _LED_VoltageChargeOutput: [wreg+status,2+status,0+pclath+cstack]
;LED_VoltageChargeOutput@BitVal stored from wreg
	movwf	(LED_VoltageChargeOutput@BitVal)
	line	81
	
l15124:	
;ms83fxx02_led.c: 81: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000008), BitVal);
	movlw	(08h)
	movwf	(?_GPIO_WriteBit)
	movf	(LED_VoltageChargeOutput@BitVal),w
	movwf	0+(?_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	82
	
l6625:	
	return
	opt stack 0
GLOBAL	__end_of_LED_VoltageChargeOutput
	__end_of_LED_VoltageChargeOutput:
;; =============== function _LED_VoltageChargeOutput ends ============

	signat	_LED_VoltageChargeOutput,4216
	global	_EEPROM_Init
psect	text1673,local,class=CODE,delta=2
global __ptext1673
__ptext1673:

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
;;		On entry : 120/0
;;		On exit  : 60/20
;;		Unchanged: FFE00/0
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
;;		_Driver_Init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1673
	file	"ms83fxx02_eeprom.c"
	line	23
	global	__size_of_EEPROM_Init
	__size_of_EEPROM_Init	equ	__end_of_EEPROM_Init-_EEPROM_Init
	
_EEPROM_Init:	
	opt	stack 1
; Regs used in _EEPROM_Init: [wreg+status,2+status,0+pclath+cstack]
	line	24
	
l15122:	
;ms83fxx02_eeprom.c: 24: EEPROM_Write(0x55, 0xAA);
	movlw	(0AAh)
	bcf	status, 6	;RP1=0, select bank0
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
	
l3335:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_Init
	__end_of_EEPROM_Init:
;; =============== function _EEPROM_Init ends ============

	signat	_EEPROM_Init,88
	global	_KEY_Init
psect	text1674,local,class=CODE,delta=2
global __ptext1674
__ptext1674:

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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_GPIO_Init
;;		_GPIO_INTConfig
;; This function is called by:
;;		_Driver_Init
;; This function uses a non-reentrant model
;;
psect	text1674
	file	"MS83FXX02_KEY.C"
	line	73
	global	__size_of_KEY_Init
	__size_of_KEY_Init	equ	__end_of_KEY_Init-_KEY_Init
	
_KEY_Init:	
	opt	stack 1
; Regs used in _KEY_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	75
	
l15112:	
;MS83FXX02_KEY.C: 74: GPIO_InitTypeDef GPIO_InitStruct;
;MS83FXX02_KEY.C: 75: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN;
	clrf	0+(KEY_Init@GPIO_InitStruct)+01h
	line	76
	
l15114:	
;MS83FXX02_KEY.C: 76: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000002);
	movlw	(02h)
	movwf	(KEY_Init@GPIO_InitStruct)
	line	77
	
l15116:	
;MS83FXX02_KEY.C: 77: GPIO_Init(GPIOC, &GPIO_InitStruct);
	movlw	(KEY_Init@GPIO_InitStruct)&0ffh
	movwf	(?_GPIO_Init)
	movlw	(01h)
	fcall	_GPIO_Init
	line	80
	
l15118:	
;MS83FXX02_KEY.C: 80: INTEDG = 0;
	bcf	(1038/8)^080h,(1038)&7
	line	81
	
l15120:	
;MS83FXX02_KEY.C: 81: GPIO_INTConfig(GPIOC, ((uint8_t)0x00000002), ENABLE);
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_GPIO_INTConfig)
	clrf	0+(?_GPIO_INTConfig)+01h
	incf	0+(?_GPIO_INTConfig)+01h,f
	movlw	(01h)
	fcall	_GPIO_INTConfig
	line	82
	
l5526:	
	return
	opt stack 0
GLOBAL	__end_of_KEY_Init
	__end_of_KEY_Init:
;; =============== function _KEY_Init ends ============

	signat	_KEY_Init,88
	global	_LED_Init
psect	text1675,local,class=CODE,delta=2
global __ptext1675
__ptext1675:

;; *************** function _LED_Init *****************
;; Defined at:
;;		line 24 in file "ms83fxx02_led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  GPIO_InitStr    2    3[BANK0 ] struct .
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
psect	text1675
	file	"ms83fxx02_led.c"
	line	24
	global	__size_of_LED_Init
	__size_of_LED_Init	equ	__end_of_LED_Init-_LED_Init
	
_LED_Init:	
	opt	stack 0
; Regs used in _LED_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	27
	
l15084:	
;ms83fxx02_led.c: 25: GPIO_InitTypeDef GPIO_InitStruct;
;ms83fxx02_led.c: 27: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	bcf	status, 5	;RP0=0, select bank0
	clrf	0+(LED_Init@GPIO_InitStruct)+01h
	incf	0+(LED_Init@GPIO_InitStruct)+01h,f
	line	28
	
l15086:	
;ms83fxx02_led.c: 28: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000004);
	movlw	(04h)
	movwf	(LED_Init@GPIO_InitStruct)
	line	29
	
l15088:	
;ms83fxx02_led.c: 29: GPIO_Init(GPIOA, &GPIO_InitStruct);
	movlw	(LED_Init@GPIO_InitStruct)&0ffh
	movwf	(?_GPIO_Init)
	movlw	(0)
	fcall	_GPIO_Init
	line	31
	
l15090:	
;ms83fxx02_led.c: 31: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	bcf	status, 5	;RP0=0, select bank0
	clrf	0+(LED_Init@GPIO_InitStruct)+01h
	incf	0+(LED_Init@GPIO_InitStruct)+01h,f
	line	32
	
l15092:	
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
	
l15094:	
;ms83fxx02_led.c: 35: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	bcf	status, 5	;RP0=0, select bank0
	clrf	0+(LED_Init@GPIO_InitStruct)+01h
	incf	0+(LED_Init@GPIO_InitStruct)+01h,f
	line	36
	
l15096:	
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
	
l15098:	
;ms83fxx02_led.c: 43: GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	bcf	status, 5	;RP0=0, select bank0
	clrf	0+(LED_Init@GPIO_InitStruct)+01h
	incf	0+(LED_Init@GPIO_InitStruct)+01h,f
	line	44
	
l15100:	
;ms83fxx02_led.c: 44: GPIO_InitStruct.GPIO_Pin = ((uint8_t)0x00000008);
	movlw	(08h)
	movwf	(LED_Init@GPIO_InitStruct)
	line	45
	
l15102:	
;ms83fxx02_led.c: 45: GPIO_Init(GPIOC, &GPIO_InitStruct);
	movlw	(LED_Init@GPIO_InitStruct)&0ffh
	movwf	(?_GPIO_Init)
	movlw	(01h)
	fcall	_GPIO_Init
	line	47
	
l15104:	
;ms83fxx02_led.c: 47: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000004), Bit_RESET);
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	48
	
l15106:	
;ms83fxx02_led.c: 48: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000008), Bit_RESET);
	movlw	(08h)
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	_GPIO_WriteBit
	line	49
	
l15108:	
;ms83fxx02_led.c: 49: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), Bit_RESET);
	clrf	(?_GPIO_WriteBit)
	incf	(?_GPIO_WriteBit),f
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	52
	
l15110:	
;ms83fxx02_led.c: 52: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000008), Bit_RESET);
	movlw	(08h)
	movwf	(?_GPIO_WriteBit)
	clrf	0+(?_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	_GPIO_WriteBit
	line	53
	
l6616:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Init
	__end_of_LED_Init:
;; =============== function _LED_Init ends ============

	signat	_LED_Init,88
	global	_Battery_HandleData
psect	text1676,local,class=CODE,delta=2
global __ptext1676
__ptext1676:

;; *************** function _Battery_HandleData *****************
;; Defined at:
;;		line 194 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp1           2   12[BANK0 ] unsigned short 
;;  average_data    2   10[BANK0 ] unsigned int 
;;  temp2           2    8[BANK0 ] unsigned short 
;;  i               1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       7       0       0
;;      Temps:          0       6       0       0
;;      Totals:         0      15       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1676
	file	"ms83fxx02_pwr.c"
	line	194
	global	__size_of_Battery_HandleData
	__size_of_Battery_HandleData	equ	__end_of_Battery_HandleData-_Battery_HandleData
	
_Battery_HandleData:	
	opt	stack 1
; Regs used in _Battery_HandleData: [wreg-fsr0h+status,2+status,0]
	line	195
	
l14914:	
	line	196
;ms83fxx02_pwr.c: 196: uint32_t average_data = 0;
	clrf	(Battery_HandleData@average_data)
	clrf	(Battery_HandleData@average_data+1)
	line	197
	
l14916:	
;ms83fxx02_pwr.c: 197: uint16_t temp1 = battery_value[0];
	movf	(_battery_value+1),w	;volatile
	movwf	(Battery_HandleData@temp1+1)
	movf	(_battery_value),w	;volatile
	movwf	(Battery_HandleData@temp1)
	line	198
	
l14918:	
;ms83fxx02_pwr.c: 198: uint16_t temp2 = battery_value[0];
	movf	(_battery_value+1),w	;volatile
	movwf	(Battery_HandleData@temp2+1)
	movf	(_battery_value),w	;volatile
	movwf	(Battery_HandleData@temp2)
	line	200
;ms83fxx02_pwr.c: 200: for(i=0; i<10; i++)
	clrf	(Battery_HandleData@i)
	line	202
	
l14924:	
;ms83fxx02_pwr.c: 201: {
;ms83fxx02_pwr.c: 202: if(temp1 > battery_value[i])
	clrc
	rlf	(Battery_HandleData@i),w
	addlw	_battery_value&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_Battery_HandleData+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_Battery_HandleData+0)+0+1
	movf	(Battery_HandleData@temp1+1),w
	subwf	1+(??_Battery_HandleData+0)+0,w
	skipz
	goto	u1925
	movf	(Battery_HandleData@temp1),w
	subwf	0+(??_Battery_HandleData+0)+0,w
u1925:
	skipnc
	goto	u1921
	goto	u1920
u1921:
	goto	l14930
u1920:
	line	204
	
l14926:	
;ms83fxx02_pwr.c: 203: {
;ms83fxx02_pwr.c: 204: temp2 = temp1;
	movf	(Battery_HandleData@temp1+1),w
	movwf	(Battery_HandleData@temp2+1)
	movf	(Battery_HandleData@temp1),w
	movwf	(Battery_HandleData@temp2)
	line	205
	
l14928:	
;ms83fxx02_pwr.c: 205: temp1 = battery_value[i];
	clrc
	rlf	(Battery_HandleData@i),w
	addlw	_battery_value&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(Battery_HandleData@temp1)
	incf	fsr0,f
	movf	indf,w
	movwf	(Battery_HandleData@temp1+1)
	line	207
	
l14930:	
;ms83fxx02_pwr.c: 206: }
;ms83fxx02_pwr.c: 207: average_data += battery_value[i];
	clrc
	rlf	(Battery_HandleData@i),w
	addlw	_battery_value&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_Battery_HandleData+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_Battery_HandleData+0)+0+1
	movf	0+(??_Battery_HandleData+0)+0,w
	addwf	(Battery_HandleData@average_data),f
	skipnc
	incf	(Battery_HandleData@average_data+1),f
	movf	1+(??_Battery_HandleData+0)+0,w
	addwf	(Battery_HandleData@average_data+1),f
	line	200
	
l14932:	
	incf	(Battery_HandleData@i),f
	
l14934:	
	movlw	(0Ah)
	subwf	(Battery_HandleData@i),w
	skipc
	goto	u1931
	goto	u1930
u1931:
	goto	l14924
u1930:
	line	210
	
l14936:	
;ms83fxx02_pwr.c: 208: }
;ms83fxx02_pwr.c: 210: average_data = (average_data - temp1 - temp2) / (10 - 2);
	comf	(Battery_HandleData@temp1),w
	movwf	(??_Battery_HandleData+0)+0
	comf	(Battery_HandleData@temp1+1),w
	movwf	((??_Battery_HandleData+0)+0+1)
	incf	(??_Battery_HandleData+0)+0,f
	skipnz
	incf	((??_Battery_HandleData+0)+0+1),f
	movf	(Battery_HandleData@temp2),w
	subwf	0+(??_Battery_HandleData+0)+0,w
	movwf	(??_Battery_HandleData+2)+0
	movf	(Battery_HandleData@temp2+1),w
	skipc
	incf	(Battery_HandleData@temp2+1),w
	subwf	1+(??_Battery_HandleData+0)+0,w
	movwf	1+(??_Battery_HandleData+2)+0
	movf	(Battery_HandleData@average_data),w
	addwf	0+(??_Battery_HandleData+2)+0,w
	movwf	(??_Battery_HandleData+4)+0
	movf	(Battery_HandleData@average_data+1),w
	skipnc
	incf	(Battery_HandleData@average_data+1),w
	addwf	1+(??_Battery_HandleData+2)+0,w
	movwf	1+(??_Battery_HandleData+4)+0
	clrc
	rrf	(??_Battery_HandleData+4)+1,f
	rrf	(??_Battery_HandleData+4)+0,f
	clrc
	rrf	(??_Battery_HandleData+4)+1,f
	rrf	(??_Battery_HandleData+4)+0,f
	clrc
	rrf	(??_Battery_HandleData+4)+1,f
	rrf	(??_Battery_HandleData+4)+0,f
	movf	0+(??_Battery_HandleData+4)+0,w
	movwf	(Battery_HandleData@average_data)
	movf	1+(??_Battery_HandleData+4)+0,w
	movwf	(Battery_HandleData@average_data+1)
	line	212
	
l14938:	
;ms83fxx02_pwr.c: 212: return average_data;
	movf	(Battery_HandleData@average_data+1),w
	movwf	(?_Battery_HandleData+1)
	movf	(Battery_HandleData@average_data),w
	movwf	(?_Battery_HandleData)
	line	213
	
l10059:	
	return
	opt stack 0
GLOBAL	__end_of_Battery_HandleData
	__end_of_Battery_HandleData:
;; =============== function _Battery_HandleData ends ============

	signat	_Battery_HandleData,90
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
;; Hardware stack levels required when called:    4
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
	opt	stack 2
; Regs used in _SwitchModeTimer_GetINTStatus: [wreg+status,2]
	line	101
	
l14892:	
;ms83fxx02_tim.c: 101: if(switch_mode_time_out)
	movf	(_switch_mode_time_out),w	;volatile
	skipz
	goto	u1910
	goto	l14902
u1910:
	line	103
	
l14894:	
;ms83fxx02_tim.c: 102: {
;ms83fxx02_tim.c: 103: switch_mode_time_out = 0;
	clrf	(_switch_mode_time_out)	;volatile
	line	105
	
l14896:	
;ms83fxx02_tim.c: 105: return SET;
	movlw	(01h)
	goto	l11152
	line	109
	
l14902:	
;ms83fxx02_tim.c: 107: else
;ms83fxx02_tim.c: 108: {
;ms83fxx02_tim.c: 109: return RESET;
	movlw	(0)
	line	111
	
l11152:	
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
;;		line 219 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  time            1    wreg     enum E1558
;; Auto vars:     Size  Location     Type
;;  time            1    0[BANK0 ] enum E1558
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1678
	file	"ms83fxx02_motor.c"
	line	219
	global	__size_of_MotorOperationTimer_Init
	__size_of_MotorOperationTimer_Init	equ	__end_of_MotorOperationTimer_Init-_MotorOperationTimer_Init
	
_MotorOperationTimer_Init:	
	opt	stack 2
; Regs used in _MotorOperationTimer_Init: [wreg+status,2]
;MotorOperationTimer_Init@time stored from wreg
	line	221
	movwf	(MotorOperationTimer_Init@time)
	
l14866:	
;ms83fxx02_motor.c: 221: TMR4ON = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2226/8)^0100h,(2226)&7
	line	223
	
l14868:	
;ms83fxx02_motor.c: 223: if(time == MotorOperationTimer_30s)
	bcf	status, 6	;RP1=0, select bank0
	decf	(MotorOperationTimer_Init@time),w
	skipz
	goto	u1891
	goto	u1890
u1891:
	goto	l14872
u1890:
	line	226
	
l14870:	
;ms83fxx02_motor.c: 224: {
;ms83fxx02_motor.c: 226: PWM4CR0 = 0b01110010;
	movlw	(072h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(277)^0100h	;volatile
	line	229
;ms83fxx02_motor.c: 229: PWM4CR1 = 0b00111000;
	movlw	(038h)
	movwf	(278)^0100h	;volatile
	line	234
;ms83fxx02_motor.c: 234: T4CKDIV = 182;
	movlw	(0B6h)
	movwf	(279)^0100h	;volatile
	line	235
;ms83fxx02_motor.c: 235: }
	goto	l8865
	line	236
	
l14872:	
;ms83fxx02_motor.c: 236: else if(time == MotorOperationTimer_0_3s)
	movf	(MotorOperationTimer_Init@time),w
	xorlw	02h
	skipz
	goto	u1901
	goto	u1900
u1901:
	goto	l14876
u1900:
	line	239
	
l14874:	
;ms83fxx02_motor.c: 237: {
;ms83fxx02_motor.c: 239: PWM4CR0 = 0b01100010;
	movlw	(062h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(277)^0100h	;volatile
	line	241
;ms83fxx02_motor.c: 241: PWM4CR1 = 0b00111000;
	movlw	(038h)
	movwf	(278)^0100h	;volatile
	line	245
;ms83fxx02_motor.c: 245: T4CKDIV = 8;
	movlw	(08h)
	movwf	(279)^0100h	;volatile
	line	246
;ms83fxx02_motor.c: 246: }
	goto	l8865
	line	250
	
l14876:	
;ms83fxx02_motor.c: 247: else
;ms83fxx02_motor.c: 248: {
;ms83fxx02_motor.c: 250: PWM4CR0 = 0b01110010;
	movlw	(072h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(277)^0100h	;volatile
	line	253
;ms83fxx02_motor.c: 253: PWM4CR1 = 0b00111000;
	movlw	(038h)
	movwf	(278)^0100h	;volatile
	line	256
;ms83fxx02_motor.c: 256: T4CKDIV = 243;
	movlw	(0F3h)
	movwf	(279)^0100h	;volatile
	line	257
	
l8865:	
	line	259
;ms83fxx02_motor.c: 257: }
;ms83fxx02_motor.c: 259: TMR4H = 0x0F;
	movlw	(0Fh)
	movwf	(275)^0100h	;volatile
	line	260
	
l14878:	
;ms83fxx02_motor.c: 260: TMR4L = 0;
	clrf	(274)^0100h	;volatile
	line	261
	
l14880:	
;ms83fxx02_motor.c: 261: PR4L = 0xFF;
	movlw	(0FFh)
	movwf	(276)^0100h	;volatile
	line	264
	
l14882:	
;ms83fxx02_motor.c: 264: TMR4IF = 0;
	bcf	(2224/8)^0100h,(2224)&7
	line	267
	
l14884:	
;ms83fxx02_motor.c: 267: TMR4ON = 1;
	bsf	(2226/8)^0100h,(2226)&7
	line	270
	
l14886:	
;ms83fxx02_motor.c: 270: TMR4IE = 1;
	bsf	(2225/8)^0100h,(2225)&7
	line	271
	
l14888:	
;ms83fxx02_motor.c: 271: PEIE = 1;
	bsf	(94/8),(94)&7
	line	272
	
l14890:	
;ms83fxx02_motor.c: 272: GIE = 1;
	bsf	(95/8),(95)&7
	line	273
	
l8868:	
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
;;		line 200 in file "ms83fxx02_motor.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MotorOperationTimer_Stop
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1679
	file	"ms83fxx02_motor.c"
	line	200
	global	__size_of_Motor_CheckRunLimit
	__size_of_Motor_CheckRunLimit	equ	__end_of_Motor_CheckRunLimit-_Motor_CheckRunLimit
	
_Motor_CheckRunLimit:	
	opt	stack 0
; Regs used in _Motor_CheckRunLimit: [wreg]
	line	204
	
l14856:	
;ms83fxx02_motor.c: 204: if(motor_oper_record >= 120)
	movlw	high(078h)
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_motor_oper_record+1),w	;volatile
	movlw	low(078h)
	skipnz
	subwf	(_motor_oper_record),w	;volatile
	skipc
	goto	u1881
	goto	u1880
u1881:
	goto	l14862
u1880:
	line	206
	
l14858:	
;ms83fxx02_motor.c: 205: {
;ms83fxx02_motor.c: 206: return 1;
	movlw	(01h)
	goto	l8861
	line	208
	
l14862:	
;ms83fxx02_motor.c: 207: }
;ms83fxx02_motor.c: 208: return 0;
	movlw	(0)
	line	209
	
l8861:	
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
;;		On entry : 20/0
;;		On exit  : 60/40
;;		Unchanged: FFF9F/0
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
psect	text1680
	file	"ms83fxx02_tim.c"
	line	79
	global	__size_of_SwitchModeTimer_INTConfig
	__size_of_SwitchModeTimer_INTConfig	equ	__end_of_SwitchModeTimer_INTConfig-_SwitchModeTimer_INTConfig
	
_SwitchModeTimer_INTConfig:	
	opt	stack 2
; Regs used in _SwitchModeTimer_INTConfig: [wreg]
;SwitchModeTimer_INTConfig@NewState stored from wreg
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SwitchModeTimer_INTConfig@NewState)
	line	80
	
l14852:	
;ms83fxx02_tim.c: 80: if(NewState != DISABLE)
	movf	(SwitchModeTimer_INTConfig@NewState),w
	skipz
	goto	u1870
	goto	l11146
u1870:
	line	83
	
l14854:	
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
	goto	l11148
	line	87
	
l11146:	
	line	90
;ms83fxx02_tim.c: 87: else
;ms83fxx02_tim.c: 88: {
;ms83fxx02_tim.c: 90: TMR5IE = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2273/8)^0100h,(2273)&7
	line	92
	
l11148:	
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
;;		On entry : 0/40
;;		On exit  : 60/40
;;		Unchanged: FFF9F/0
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
psect	text1681
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
	
l14836:	
;ms83fxx02_tim.c: 40: switch_mode_time_out = 0;
	clrf	(_switch_mode_time_out)	;volatile
	line	42
	
l14838:	
;ms83fxx02_tim.c: 42: if(NewState != DISABLE)
	movf	(SwitchModeTimer_Cmd@NewState),w
	skipz
	goto	u1860
	goto	l11141
u1860:
	line	45
	
l14840:	
;ms83fxx02_tim.c: 43: {
;ms83fxx02_tim.c: 45: TMR5ON = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2274/8)^0100h,(2274)&7
	line	47
	
l14842:	
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
	
l14844:	
;ms83fxx02_tim.c: 56: TMR5L = 0;
	clrf	(280)^0100h	;volatile
	line	57
	
l14846:	
;ms83fxx02_tim.c: 57: PR5L = 0xFF;
	movlw	(0FFh)
	movwf	(282)^0100h	;volatile
	line	60
	
l14848:	
;ms83fxx02_tim.c: 60: TMR5IF = 0;
	bcf	(2272/8)^0100h,(2272)&7
	line	63
	
l14850:	
;ms83fxx02_tim.c: 63: TMR5ON = 1;
	bsf	(2274/8)^0100h,(2274)&7
	line	64
;ms83fxx02_tim.c: 64: }
	goto	l11143
	line	65
	
l11141:	
	line	68
;ms83fxx02_tim.c: 65: else
;ms83fxx02_tim.c: 66: {
;ms83fxx02_tim.c: 68: TMR5ON = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2274/8)^0100h,(2274)&7
	line	70
	
l11143:	
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
;;  status          1    wreg     enum E1552
;; Auto vars:     Size  Location     Type
;;  status          1    0[BANK0 ] enum E1552
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
;; Hardware stack levels required when called:    4
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
	opt	stack 1
; Regs used in _Motor_Init: [wreg+status,2+status,0]
;Motor_Init@status stored from wreg
	line	67
	movwf	(Motor_Init@status)
	
l14800:	
;ms83fxx02_motor.c: 67: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	70
	
l14802:	
;ms83fxx02_motor.c: 70: CMCON0 |= 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(25),f	;volatile
	line	71
	
l14804:	
;ms83fxx02_motor.c: 71: T2CKSRC = 0;
	bcf	(221/8),(221)&7
	line	74
	
l14806:	
;ms83fxx02_motor.c: 74: TMR2 = 0;
	clrf	(17)	;volatile
	line	76
	
l14808:	
;ms83fxx02_motor.c: 76: T2CON = 0x03;
	movlw	(03h)
	movwf	(18)	;volatile
	line	78
	
l14810:	
;ms83fxx02_motor.c: 78: PR2 = 0x9C;
	movlw	(09Ch)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	79
	
l14812:	
;ms83fxx02_motor.c: 79: if(status == MOTOR_MODE_STOP)
	bcf	status, 5	;RP0=0, select bank0
	decf	(Motor_Init@status),w
	skipz
	goto	u1811
	goto	u1810
u1811:
	goto	l14818
u1810:
	goto	l8830
	line	83
	
l14818:	
;ms83fxx02_motor.c: 83: else if(status == MOTOR_MODE_DUTY_80)
	movf	(Motor_Init@status),w
	xorlw	04h
	skipz
	goto	u1821
	goto	u1820
u1821:
	goto	l14822
u1820:
	line	86
	
l14820:	
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
	goto	l8831
	line	89
	
l14822:	
;ms83fxx02_motor.c: 89: else if(status == MOTOR_MODE_DUTY_90)
	movf	(Motor_Init@status),w
	xorlw	03h
	skipz
	goto	u1831
	goto	u1830
u1831:
	goto	l14826
u1830:
	line	92
	
l14824:	
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
	goto	l8831
	line	97
	
l14826:	
;ms83fxx02_motor.c: 95: else
;ms83fxx02_motor.c: 96: {
;ms83fxx02_motor.c: 97: if(status == MOTOR_MODE_DUTY_100)
	movf	(Motor_Init@status),w
	xorlw	02h
	skipz
	goto	u1841
	goto	u1840
u1841:
	goto	l8831
u1840:
	line	99
	
l14828:	
;ms83fxx02_motor.c: 98: {
;ms83fxx02_motor.c: 99: CCP1CON = 0;
	clrf	(21)	;volatile
	line	100
	
l14830:	
;ms83fxx02_motor.c: 100: TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1084/8)^080h,(1084)&7
	line	102
	
l14832:	
;ms83fxx02_motor.c: 102: PC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(60/8),(60)&7
	goto	l8830
	line	106
	
l8831:	
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
	
l8837:	
	btfss	(97/8),(97)&7
	goto	u1851
	goto	u1850
u1851:
	goto	l8837
u1850:
	
l8839:	
	line	113
;ms83fxx02_motor.c: 113: TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1084/8)^080h,(1084)&7
	line	114
	
l8830:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_Init
	__end_of_Motor_Init:
;; =============== function _Motor_Init ends ============

	signat	_Motor_Init,4216
	global	_LEDTimer_DispUnderVoltCmd
psect	text1683,local,class=CODE,delta=2
global __ptext1683
__ptext1683:

;; *************** function _LEDTimer_DispUnderVoltCmd *****************
;; Defined at:
;;		line 141 in file "ms83fxx02_led_timer.c"
;; Parameters:    Size  Location     Type
;;  NewState        1    wreg     enum E1482
;; Auto vars:     Size  Location     Type
;;  NewState        1    0[BANK0 ] enum E1482
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1683
	file	"ms83fxx02_led_timer.c"
	line	141
	global	__size_of_LEDTimer_DispUnderVoltCmd
	__size_of_LEDTimer_DispUnderVoltCmd	equ	__end_of_LEDTimer_DispUnderVoltCmd-_LEDTimer_DispUnderVoltCmd
	
_LEDTimer_DispUnderVoltCmd:	
	opt	stack 1
; Regs used in _LEDTimer_DispUnderVoltCmd: [wreg+status,2]
;LEDTimer_DispUnderVoltCmd@NewState stored from wreg
	movwf	(LEDTimer_DispUnderVoltCmd@NewState)
	line	142
	
l14784:	
;ms83fxx02_led_timer.c: 142: if(NewState != DISABLE)
	movf	(LEDTimer_DispUnderVoltCmd@NewState),w
	skipz
	goto	u1800
	goto	l14788
u1800:
	line	144
	
l14786:	
;ms83fxx02_led_timer.c: 143: {
;ms83fxx02_led_timer.c: 144: under_volt_display_En = 1;
	clrf	(_under_volt_display_En)	;volatile
	incf	(_under_volt_display_En),f	;volatile
	line	145
;ms83fxx02_led_timer.c: 145: }
	goto	l7721
	line	148
	
l14788:	
;ms83fxx02_led_timer.c: 146: else
;ms83fxx02_led_timer.c: 147: {
;ms83fxx02_led_timer.c: 148: under_volt_display_En = 0;
	clrf	(_under_volt_display_En)	;volatile
	line	172
	
l7721:	
	return
	opt stack 0
GLOBAL	__end_of_LEDTimer_DispUnderVoltCmd
	__end_of_LEDTimer_DispUnderVoltCmd:
;; =============== function _LEDTimer_DispUnderVoltCmd ends ============

	signat	_LEDTimer_DispUnderVoltCmd,4216
	global	_KEY_GetPressStatus
psect	text1684,local,class=CODE,delta=2
global __ptext1684
__ptext1684:

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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1684
	file	"MS83FXX02_KEY.C"
	line	98
	global	__size_of_KEY_GetPressStatus
	__size_of_KEY_GetPressStatus	equ	__end_of_KEY_GetPressStatus-_KEY_GetPressStatus
	
_KEY_GetPressStatus:	
	opt	stack 2
; Regs used in _KEY_GetPressStatus: [wreg+status,2]
	line	99
	
l14770:	
;MS83FXX02_KEY.C: 99: if(key_press)
	movf	(_key_press),w	;volatile
	skipz
	goto	u1790
	goto	l14778
u1790:
	line	101
	
l14772:	
;MS83FXX02_KEY.C: 100: {
;MS83FXX02_KEY.C: 101: key_press = 0;
	clrf	(_key_press)	;volatile
	line	102
	
l14774:	
;MS83FXX02_KEY.C: 102: return SET;
	movlw	(01h)
	goto	l5534
	line	105
	
l14778:	
;MS83FXX02_KEY.C: 103: }
;MS83FXX02_KEY.C: 105: return RESET;
	movlw	(0)
	line	106
	
l5534:	
	return
	opt stack 0
GLOBAL	__end_of_KEY_GetPressStatus
	__end_of_KEY_GetPressStatus:
;; =============== function _KEY_GetPressStatus ends ============

	signat	_KEY_GetPressStatus,89
	global	_KEY_GetReleaseStatus
psect	text1685,local,class=CODE,delta=2
global __ptext1685
__ptext1685:

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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1685
	file	"MS83FXX02_KEY.C"
	line	85
	global	__size_of_KEY_GetReleaseStatus
	__size_of_KEY_GetReleaseStatus	equ	__end_of_KEY_GetReleaseStatus-_KEY_GetReleaseStatus
	
_KEY_GetReleaseStatus:	
	opt	stack 2
; Regs used in _KEY_GetReleaseStatus: [wreg+status,2]
	line	86
	
l14758:	
;MS83FXX02_KEY.C: 86: if(key_release)
	movf	(_key_release),w	;volatile
	skipz
	goto	u1780
	goto	l14766
u1780:
	line	88
	
l14760:	
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
	
l14762:	
;MS83FXX02_KEY.C: 91: return SET;
	movlw	(01h)
	goto	l5530
	line	94
	
l14766:	
;MS83FXX02_KEY.C: 92: }
;MS83FXX02_KEY.C: 94: return RESET;
	movlw	(0)
	line	95
	
l5530:	
	return
	opt stack 0
GLOBAL	__end_of_KEY_GetReleaseStatus
	__end_of_KEY_GetReleaseStatus:
;; =============== function _KEY_GetReleaseStatus ends ============

	signat	_KEY_GetReleaseStatus,89
	global	_EEPROM_Read
psect	text1686,local,class=CODE,delta=2
global __ptext1686
__ptext1686:

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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_EEPROM_RestoreMotorData
;;		_EEPROM_GetFlag
;;		_EEPROM_RestoreDeviceModeData
;; This function uses a non-reentrant model
;;
psect	text1686
	file	"ms83fxx02_eeprom.c"
	line	28
	global	__size_of_EEPROM_Read
	__size_of_EEPROM_Read	equ	__end_of_EEPROM_Read-_EEPROM_Read
	
_EEPROM_Read:	
	opt	stack 2
; Regs used in _EEPROM_Read: [wreg+status,2]
;EEPROM_Read@addr stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(EEPROM_Read@addr)
	line	29
	
l14728:	
	line	31
	
l14730:	
;ms83fxx02_eeprom.c: 31: EEADR = addr;
	movf	(EEPROM_Read@addr),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	32
	
l14732:	
;ms83fxx02_eeprom.c: 32: RD = 1;
	bsf	(1248/8)^080h,(1248)&7
	line	33
	
l14734:	
;ms83fxx02_eeprom.c: 33: data = EEDAT;
	movf	(154)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(EEPROM_Read@data)
	line	34
	
l14736:	
;ms83fxx02_eeprom.c: 34: RD = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1248/8)^080h,(1248)&7
	line	35
	
l14738:	
;ms83fxx02_eeprom.c: 35: return data;
	bcf	status, 5	;RP0=0, select bank0
	movf	(EEPROM_Read@data),w
	line	36
	
l3338:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_Read
	__end_of_EEPROM_Read:
;; =============== function _EEPROM_Read ends ============

	signat	_EEPROM_Read,4217
	global	_EEPROM_Write
psect	text1687,local,class=CODE,delta=2
global __ptext1687
__ptext1687:

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
psect	text1687
	file	"ms83fxx02_eeprom.c"
	line	39
	global	__size_of_EEPROM_Write
	__size_of_EEPROM_Write	equ	__end_of_EEPROM_Write-_EEPROM_Write
	
_EEPROM_Write:	
	opt	stack 0
; Regs used in _EEPROM_Write: [wreg]
;EEPROM_Write@addr stored from wreg
	movwf	(EEPROM_Write@addr)
	line	40
	
l14716:	
;ms83fxx02_eeprom.c: 40: EEADR = addr;
	movf	(EEPROM_Write@addr),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	41
	
l14718:	
# 41 "ms83fxx02_eeprom.c"
nop ;#
psect	text1687
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
	
l14720:	
;ms83fxx02_eeprom.c: 44: WR = 1;
	bsf	(1256/8)^080h,(1256)&7
	line	45
	
l14722:	
# 45 "ms83fxx02_eeprom.c"
nop ;#
psect	text1687
	line	46
	
l14724:	
# 46 "ms83fxx02_eeprom.c"
nop ;#
psect	text1687
	line	47
	
l14726:	
# 47 "ms83fxx02_eeprom.c"
nop ;#
psect	text1687
	line	49
;ms83fxx02_eeprom.c: 49: while(WR == 1);
	
l3341:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1256/8)^080h,(1256)&7
	goto	u1771
	goto	u1770
u1771:
	goto	l3341
u1770:
	
l3343:	
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
	
l3344:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_Write
	__end_of_EEPROM_Write:
;; =============== function _EEPROM_Write ends ============

	signat	_EEPROM_Write,8312
	global	_GPIO_INTConfig
psect	text1688,local,class=CODE,delta=2
global __ptext1688
__ptext1688:

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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ChargeDetect_Init
;;		_KEY_Init
;; This function uses a non-reentrant model
;;
psect	text1688
	file	"ms83fxx02_gpio.c"
	line	134
	global	__size_of_GPIO_INTConfig
	__size_of_GPIO_INTConfig	equ	__end_of_GPIO_INTConfig-_GPIO_INTConfig
	
_GPIO_INTConfig:	
	opt	stack 0
; Regs used in _GPIO_INTConfig: [wreg+status,2+status,0]
;GPIO_INTConfig@GPIOx stored from wreg
	movwf	(GPIO_INTConfig@GPIOx)
	line	135
	
l14690:	
;ms83fxx02_gpio.c: 135: if(GPIOx == GPIOA)
	movf	(GPIO_INTConfig@GPIOx),f
	skipz
	goto	u1721
	goto	u1720
u1721:
	goto	l14700
u1720:
	line	137
	
l14692:	
;ms83fxx02_gpio.c: 136: {
;ms83fxx02_gpio.c: 137: if (NewState != DISABLE)
	movf	(GPIO_INTConfig@NewState),w
	skipz
	goto	u1730
	goto	l14698
u1730:
	line	140
	
l14694:	
;ms83fxx02_gpio.c: 138: {
;ms83fxx02_gpio.c: 140: PAIE = 1;
	bsf	(91/8),(91)&7
	line	141
;ms83fxx02_gpio.c: 141: GIE = 1;
	bsf	(95/8),(95)&7
	line	142
	
l14696:	
;ms83fxx02_gpio.c: 142: IOCA |= GPIO_Pin;
	movf	(GPIO_INTConfig@GPIO_Pin),w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(150)^080h,f	;volatile
	line	143
;ms83fxx02_gpio.c: 143: }
	goto	l14700
	line	147
	
l14698:	
;ms83fxx02_gpio.c: 144: else
;ms83fxx02_gpio.c: 145: {
;ms83fxx02_gpio.c: 147: IOCA &= ~GPIO_Pin;
	comf	(GPIO_INTConfig@GPIO_Pin),w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(150)^080h,f	;volatile
	line	151
	
l14700:	
;ms83fxx02_gpio.c: 148: }
;ms83fxx02_gpio.c: 149: }
;ms83fxx02_gpio.c: 151: if((GPIOx == GPIOC) && (GPIO_Pin == ((uint8_t)0x00000002)))
	bcf	status, 5	;RP0=0, select bank0
	decf	(GPIO_INTConfig@GPIOx),w
	skipz
	goto	u1741
	goto	u1740
u1741:
	goto	l4441
u1740:
	
l14702:	
	movf	(GPIO_INTConfig@GPIO_Pin),w
	xorlw	02h
	skipz
	goto	u1751
	goto	u1750
u1751:
	goto	l4441
u1750:
	line	154
	
l14704:	
;ms83fxx02_gpio.c: 152: {
;ms83fxx02_gpio.c: 154: if (NewState != DISABLE)
	movf	(GPIO_INTConfig@NewState),w
	skipz
	goto	u1760
	goto	l4439
u1760:
	line	157
	
l14706:	
;ms83fxx02_gpio.c: 155: {
;ms83fxx02_gpio.c: 157: ANSEL5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1165/8)^080h,(1165)&7
	line	158
	
l14708:	
;ms83fxx02_gpio.c: 158: CMCON0 |= 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(25),f	;volatile
	line	160
	
l14710:	
;ms83fxx02_gpio.c: 160: GIE = 1;
	bsf	(95/8),(95)&7
	line	161
	
l14712:	
;ms83fxx02_gpio.c: 161: INTF = 0;
	bcf	(89/8),(89)&7
	line	162
	
l14714:	
;ms83fxx02_gpio.c: 162: INTE = 1;
	bsf	(92/8),(92)&7
	line	163
;ms83fxx02_gpio.c: 163: }
	goto	l4441
	line	164
	
l4439:	
	line	167
;ms83fxx02_gpio.c: 164: else
;ms83fxx02_gpio.c: 165: {
;ms83fxx02_gpio.c: 167: INTE = 0;
	bcf	(92/8),(92)&7
	line	170
	
l4441:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_INTConfig
	__end_of_GPIO_INTConfig:
;; =============== function _GPIO_INTConfig ends ============

	signat	_GPIO_INTConfig,12408
	global	_GPIO_ReadInputDataBit
psect	text1689,local,class=CODE,delta=2
global __ptext1689
__ptext1689:

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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ChargeDetect_Init
;;		_ChargeDetect_GetStatus
;; This function uses a non-reentrant model
;;
psect	text1689
	file	"ms83fxx02_gpio.c"
	line	101
	global	__size_of_GPIO_ReadInputDataBit
	__size_of_GPIO_ReadInputDataBit	equ	__end_of_GPIO_ReadInputDataBit-_GPIO_ReadInputDataBit
	
_GPIO_ReadInputDataBit:	
	opt	stack 2
; Regs used in _GPIO_ReadInputDataBit: [wreg+status,2+status,0]
;GPIO_ReadInputDataBit@GPIOx stored from wreg
	movwf	(GPIO_ReadInputDataBit@GPIOx)
	line	102
	
l14672:	
;ms83fxx02_gpio.c: 102: uint8_t bitstatus = RESET;
	clrf	(GPIO_ReadInputDataBit@bitstatus)
	line	104
	
l14674:	
;ms83fxx02_gpio.c: 104: if(GPIOx == GPIOA)
	movf	(GPIO_ReadInputDataBit@GPIOx),f
	skipz
	goto	u1681
	goto	u1680
u1681:
	goto	l14680
u1680:
	line	106
	
l14676:	
;ms83fxx02_gpio.c: 105: {
;ms83fxx02_gpio.c: 106: if (PORTA & GPIO_Pin)
	movf	(5),w	;volatile
	andwf	(GPIO_ReadInputDataBit@GPIO_Pin),w
	btfsc	status,2
	goto	u1691
	goto	u1690
u1691:
	goto	l14686
u1690:
	line	108
	
l14678:	
;ms83fxx02_gpio.c: 107: {
;ms83fxx02_gpio.c: 108: bitstatus = (uint8_t)SET;
	clrf	(GPIO_ReadInputDataBit@bitstatus)
	incf	(GPIO_ReadInputDataBit@bitstatus),f
	goto	l14686
	line	113
	
l14680:	
;ms83fxx02_gpio.c: 111: else
;ms83fxx02_gpio.c: 112: {
;ms83fxx02_gpio.c: 113: if(GPIOx == GPIOC)
	decf	(GPIO_ReadInputDataBit@GPIOx),w
	skipz
	goto	u1701
	goto	u1700
u1701:
	goto	l14686
u1700:
	line	115
	
l14682:	
;ms83fxx02_gpio.c: 114: {
;ms83fxx02_gpio.c: 115: if (PORTC & GPIO_Pin)
	movf	(7),w	;volatile
	andwf	(GPIO_ReadInputDataBit@GPIO_Pin),w
	btfsc	status,2
	goto	u1711
	goto	u1710
u1711:
	goto	l14686
u1710:
	goto	l14678
	line	122
	
l14686:	
;ms83fxx02_gpio.c: 118: }
;ms83fxx02_gpio.c: 119: }
;ms83fxx02_gpio.c: 120: }
;ms83fxx02_gpio.c: 122: return bitstatus;
	movf	(GPIO_ReadInputDataBit@bitstatus),w
	line	123
	
l4432:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_ReadInputDataBit
	__end_of_GPIO_ReadInputDataBit:
;; =============== function _GPIO_ReadInputDataBit ends ============

	signat	_GPIO_ReadInputDataBit,8313
	global	_GPIO_Init
psect	text1690,local,class=CODE,delta=2
global __ptext1690
__ptext1690:

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
psect	text1690
	file	"ms83fxx02_gpio.c"
	line	27
	global	__size_of_GPIO_Init
	__size_of_GPIO_Init	equ	__end_of_GPIO_Init-_GPIO_Init
	
_GPIO_Init:	
	opt	stack 0
; Regs used in _GPIO_Init: [wreg-fsr0h+status,2+status,0]
;GPIO_Init@GPIOx stored from wreg
	movwf	(GPIO_Init@GPIOx)
	line	28
	
l14658:	
;ms83fxx02_gpio.c: 28: if(GPIOx == GPIOA)
	movf	(GPIO_Init@GPIOx),f
	skipz
	goto	u1651
	goto	u1650
u1651:
	goto	l14666
u1650:
	line	30
	
l14660:	
;ms83fxx02_gpio.c: 29: {
;ms83fxx02_gpio.c: 30: if(GPIO_InitStruct->GPIO_Mode == GPIO_Mode_OUT)
	movf	(GPIO_Init@GPIO_InitStruct),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	decf	indf,w
	skipz
	goto	u1661
	goto	u1660
u1661:
	goto	l14664
u1660:
	line	33
	
l14662:	
;ms83fxx02_gpio.c: 31: {
;ms83fxx02_gpio.c: 33: TRISA &= ~(GPIO_InitStruct->GPIO_Pin);
	movf	(GPIO_Init@GPIO_InitStruct),w
	movwf	fsr0
	comf	indf,w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(133)^080h,f	;volatile
	line	34
;ms83fxx02_gpio.c: 34: }
	goto	l4415
	line	38
	
l14664:	
;ms83fxx02_gpio.c: 35: else
;ms83fxx02_gpio.c: 36: {
;ms83fxx02_gpio.c: 38: TRISA |= GPIO_InitStruct->GPIO_Pin;
	movf	(GPIO_Init@GPIO_InitStruct),w
	movwf	fsr0
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	goto	l4415
	line	43
	
l14666:	
;ms83fxx02_gpio.c: 41: else
;ms83fxx02_gpio.c: 42: {
;ms83fxx02_gpio.c: 43: if(GPIO_InitStruct->GPIO_Mode == GPIO_Mode_OUT)
	movf	(GPIO_Init@GPIO_InitStruct),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	decf	indf,w
	skipz
	goto	u1671
	goto	u1670
u1671:
	goto	l14670
u1670:
	line	46
	
l14668:	
;ms83fxx02_gpio.c: 44: {
;ms83fxx02_gpio.c: 46: TRISC &= ~(GPIO_InitStruct->GPIO_Pin);
	movf	(GPIO_Init@GPIO_InitStruct),w
	movwf	fsr0
	comf	indf,w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(135)^080h,f	;volatile
	line	47
;ms83fxx02_gpio.c: 47: }
	goto	l4415
	line	51
	
l14670:	
;ms83fxx02_gpio.c: 48: else
;ms83fxx02_gpio.c: 49: {
;ms83fxx02_gpio.c: 51: TRISC |= GPIO_InitStruct->GPIO_Pin;
	movf	(GPIO_Init@GPIO_InitStruct),w
	movwf	fsr0
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(135)^080h,f	;volatile
	line	54
	
l4415:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_Init
	__end_of_GPIO_Init:
;; =============== function _GPIO_Init ends ============

	signat	_GPIO_Init,8312
	global	_GetDeviceMode
psect	text1691,local,class=CODE,delta=2
global __ptext1691
__ptext1691:

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
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
psect	text1691
	file	"ms83fxx02_pwr.c"
	line	45
	global	__size_of_GetDeviceMode
	__size_of_GetDeviceMode	equ	__end_of_GetDeviceMode-_GetDeviceMode
	
_GetDeviceMode:	
	opt	stack 3
; Regs used in _GetDeviceMode: [wreg]
	line	46
	
l14524:	
;ms83fxx02_pwr.c: 46: return device_mode;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_device_mode),w	;volatile
	line	47
	
l10018:	
	return
	opt stack 0
GLOBAL	__end_of_GetDeviceMode
	__end_of_GetDeviceMode:
;; =============== function _GetDeviceMode ends ============

	signat	_GetDeviceMode,89
	global	_ChargeTimer_INTConfig
psect	text1692,local,class=CODE,delta=2
global __ptext1692
__ptext1692:

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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1692
	file	"ms83fxx02_charge_timer.c"
	line	81
	global	__size_of_ChargeTimer_INTConfig
	__size_of_ChargeTimer_INTConfig	equ	__end_of_ChargeTimer_INTConfig-_ChargeTimer_INTConfig
	
_ChargeTimer_INTConfig:	
	opt	stack 3
; Regs used in _ChargeTimer_INTConfig: [wreg]
;ChargeTimer_INTConfig@NewState stored from wreg
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ChargeTimer_INTConfig@NewState)
	line	82
	
l14520:	
;ms83fxx02_charge_timer.c: 82: if(NewState != DISABLE)
	movf	(ChargeTimer_INTConfig@NewState),w
	skipz
	goto	u1390
	goto	l12229
u1390:
	line	85
	
l14522:	
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
	goto	l12231
	line	89
	
l12229:	
	line	92
;ms83fxx02_charge_timer.c: 89: else
;ms83fxx02_charge_timer.c: 90: {
;ms83fxx02_charge_timer.c: 92: TMR5IE = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2273/8)^0100h,(2273)&7
	line	94
	
l12231:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeTimer_INTConfig
	__end_of_ChargeTimer_INTConfig:
;; =============== function _ChargeTimer_INTConfig ends ============

	signat	_ChargeTimer_INTConfig,4216
	global	_ChargeTimer_Cmd
psect	text1693,local,class=CODE,delta=2
global __ptext1693
__ptext1693:

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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1693
	file	"ms83fxx02_charge_timer.c"
	line	41
	global	__size_of_ChargeTimer_Cmd
	__size_of_ChargeTimer_Cmd	equ	__end_of_ChargeTimer_Cmd-_ChargeTimer_Cmd
	
_ChargeTimer_Cmd:	
	opt	stack 3
; Regs used in _ChargeTimer_Cmd: [wreg+status,2]
;ChargeTimer_Cmd@NewState stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ChargeTimer_Cmd@NewState)
	line	42
	
l14504:	
;ms83fxx02_charge_timer.c: 42: charge_time_out = 0;
	clrf	(_charge_time_out)	;volatile
	clrf	(_charge_time_out+1)	;volatile
	line	44
	
l14506:	
;ms83fxx02_charge_timer.c: 44: if(NewState != DISABLE)
	movf	(ChargeTimer_Cmd@NewState),w
	skipz
	goto	u1380
	goto	l12224
u1380:
	line	47
	
l14508:	
;ms83fxx02_charge_timer.c: 45: {
;ms83fxx02_charge_timer.c: 47: TMR5ON = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2274/8)^0100h,(2274)&7
	line	49
	
l14510:	
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
	
l14512:	
;ms83fxx02_charge_timer.c: 58: TMR5L = 0;
	clrf	(280)^0100h	;volatile
	line	59
	
l14514:	
;ms83fxx02_charge_timer.c: 59: PR5L = 0xFF;
	movlw	(0FFh)
	movwf	(282)^0100h	;volatile
	line	62
	
l14516:	
;ms83fxx02_charge_timer.c: 62: TMR5IF = 0;
	bcf	(2272/8)^0100h,(2272)&7
	line	65
	
l14518:	
;ms83fxx02_charge_timer.c: 65: TMR5ON = 1;
	bsf	(2274/8)^0100h,(2274)&7
	line	66
;ms83fxx02_charge_timer.c: 66: }
	goto	l12226
	line	67
	
l12224:	
	line	70
;ms83fxx02_charge_timer.c: 67: else
;ms83fxx02_charge_timer.c: 68: {
;ms83fxx02_charge_timer.c: 70: TMR5ON = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2274/8)^0100h,(2274)&7
	line	72
	
l12226:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeTimer_Cmd
	__end_of_ChargeTimer_Cmd:
;; =============== function _ChargeTimer_Cmd ends ============

	signat	_ChargeTimer_Cmd,4216
	global	_LEDTimer_DispRunLimitCmd
psect	text1694,local,class=CODE,delta=2
global __ptext1694
__ptext1694:

;; *************** function _LEDTimer_DispRunLimitCmd *****************
;; Defined at:
;;		line 181 in file "ms83fxx02_led_timer.c"
;; Parameters:    Size  Location     Type
;;  NewState        1    wreg     enum E1482
;; Auto vars:     Size  Location     Type
;;  NewState        1    0[BANK0 ] enum E1482
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Motor_HandleStatusChangeEvt
;; This function uses a non-reentrant model
;;
psect	text1694
	file	"ms83fxx02_led_timer.c"
	line	181
	global	__size_of_LEDTimer_DispRunLimitCmd
	__size_of_LEDTimer_DispRunLimitCmd	equ	__end_of_LEDTimer_DispRunLimitCmd-_LEDTimer_DispRunLimitCmd
	
_LEDTimer_DispRunLimitCmd:	
	opt	stack 3
; Regs used in _LEDTimer_DispRunLimitCmd: [wreg+status,2]
;LEDTimer_DispRunLimitCmd@NewState stored from wreg
	movwf	(LEDTimer_DispRunLimitCmd@NewState)
	line	182
	
l14498:	
;ms83fxx02_led_timer.c: 182: if(NewState != DISABLE)
	movf	(LEDTimer_DispRunLimitCmd@NewState),w
	skipz
	goto	u1370
	goto	l14502
u1370:
	line	184
	
l14500:	
;ms83fxx02_led_timer.c: 183: {
;ms83fxx02_led_timer.c: 184: run_limit_display_en = 1;
	clrf	(_run_limit_display_en)	;volatile
	incf	(_run_limit_display_en),f	;volatile
	line	185
;ms83fxx02_led_timer.c: 185: }
	goto	l7726
	line	188
	
l14502:	
;ms83fxx02_led_timer.c: 186: else
;ms83fxx02_led_timer.c: 187: {
;ms83fxx02_led_timer.c: 188: run_limit_display_en = 0;
	clrf	(_run_limit_display_en)	;volatile
	line	205
	
l7726:	
	return
	opt stack 0
GLOBAL	__end_of_LEDTimer_DispRunLimitCmd
	__end_of_LEDTimer_DispRunLimitCmd:
;; =============== function _LEDTimer_DispRunLimitCmd ends ============

	signat	_LEDTimer_DispRunLimitCmd,4216
	global	_Motor_SetStatus
psect	text1695,local,class=CODE,delta=2
global __ptext1695
__ptext1695:

;; *************** function _Motor_SetStatus *****************
;; Defined at:
;;		line 122 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     enum E1552
;; Auto vars:     Size  Location     Type
;;  status          1    0[BANK0 ] enum E1552
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Motor_HandleStatusChangeEvt
;;		_Battery_Detect
;; This function uses a non-reentrant model
;;
psect	text1695
	file	"ms83fxx02_motor.c"
	line	122
	global	__size_of_Motor_SetStatus
	__size_of_Motor_SetStatus	equ	__end_of_Motor_SetStatus-_Motor_SetStatus
	
_Motor_SetStatus:	
	opt	stack 1
; Regs used in _Motor_SetStatus: [wreg]
;Motor_SetStatus@status stored from wreg
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Motor_SetStatus@status)
	line	123
	
l14496:	
;ms83fxx02_motor.c: 123: motor_status = status;
	movf	(Motor_SetStatus@status),w
	movwf	(_motor_status)	;volatile
	line	124
	
l8842:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_SetStatus
	__end_of_Motor_SetStatus:
;; =============== function _Motor_SetStatus ends ============

	signat	_Motor_SetStatus,4216
	global	_SetDeviceMode
psect	text1696,local,class=CODE,delta=2
global __ptext1696
__ptext1696:

;; *************** function _SetDeviceMode *****************
;; Defined at:
;;		line 55 in file "ms83fxx02_pwr.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1696
	file	"ms83fxx02_pwr.c"
	line	55
	global	__size_of_SetDeviceMode
	__size_of_SetDeviceMode	equ	__end_of_SetDeviceMode-_SetDeviceMode
	
_SetDeviceMode:	
	opt	stack 3
; Regs used in _SetDeviceMode: [wreg]
;SetDeviceMode@mode stored from wreg
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SetDeviceMode@mode)
	line	56
	
l14494:	
;ms83fxx02_pwr.c: 56: device_mode = mode;
	movf	(SetDeviceMode@mode),w
	movwf	(_device_mode)	;volatile
	line	57
	
l10021:	
	return
	opt stack 0
GLOBAL	__end_of_SetDeviceMode
	__end_of_SetDeviceMode:
;; =============== function _SetDeviceMode ends ============

	signat	_SetDeviceMode,4216
	global	_ChargeTimer_ResetCount
psect	text1697,local,class=CODE,delta=2
global __ptext1697
__ptext1697:

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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1697
	file	"ms83fxx02_charge_timer.c"
	line	102
	global	__size_of_ChargeTimer_ResetCount
	__size_of_ChargeTimer_ResetCount	equ	__end_of_ChargeTimer_ResetCount-_ChargeTimer_ResetCount
	
_ChargeTimer_ResetCount:	
	opt	stack 3
; Regs used in _ChargeTimer_ResetCount: [status,2]
	line	103
	
l14492:	
;ms83fxx02_charge_timer.c: 103: charge_time_out = 0;
	clrf	(_charge_time_out)	;volatile
	clrf	(_charge_time_out+1)	;volatile
	line	104
	
l12234:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeTimer_ResetCount
	__end_of_ChargeTimer_ResetCount:
;; =============== function _ChargeTimer_ResetCount ends ============

	signat	_ChargeTimer_ResetCount,88
	global	_Motor_GetStatus
psect	text1698,local,class=CODE,delta=2
global __ptext1698
__ptext1698:

;; *************** function _Motor_GetStatus *****************
;; Defined at:
;;		line 132 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E1552
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1698
	file	"ms83fxx02_motor.c"
	line	132
	global	__size_of_Motor_GetStatus
	__size_of_Motor_GetStatus	equ	__end_of_Motor_GetStatus-_Motor_GetStatus
	
_Motor_GetStatus:	
	opt	stack 3
; Regs used in _Motor_GetStatus: [wreg]
	line	133
	
l14488:	
;ms83fxx02_motor.c: 133: return motor_status;
	movf	(_motor_status),w	;volatile
	line	134
	
l8845:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_GetStatus
	__end_of_Motor_GetStatus:
;; =============== function _Motor_GetStatus ends ============

	signat	_Motor_GetStatus,89
	global	_GPIO_WriteBit
psect	text1699,local,class=CODE,delta=2
global __ptext1699
__ptext1699:

;; *************** function _GPIO_WriteBit *****************
;; Defined at:
;;		line 68 in file "ms83fxx02_gpio.c"
;; Parameters:    Size  Location     Type
;;  GPIOx           1    wreg     enum E1491
;;  GPIO_Pin        1    0[BANK0 ] unsigned char 
;;  BitVal          1    1[BANK0 ] enum E1499
;; Auto vars:     Size  Location     Type
;;  GPIOx           1    2[BANK0 ] enum E1491
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
psect	text1699
	file	"ms83fxx02_gpio.c"
	line	68
	global	__size_of_GPIO_WriteBit
	__size_of_GPIO_WriteBit	equ	__end_of_GPIO_WriteBit-_GPIO_WriteBit
	
_GPIO_WriteBit:	
	opt	stack 2
; Regs used in _GPIO_WriteBit: [wreg+status,2+status,0]
;GPIO_WriteBit@GPIOx stored from wreg
	movwf	(GPIO_WriteBit@GPIOx)
	line	69
	
l14474:	
;ms83fxx02_gpio.c: 69: if(GPIOx == GPIOA)
	movf	(GPIO_WriteBit@GPIOx),f
	skipz
	goto	u1341
	goto	u1340
u1341:
	goto	l14482
u1340:
	line	71
	
l14476:	
;ms83fxx02_gpio.c: 70: {
;ms83fxx02_gpio.c: 71: if (BitVal != Bit_RESET)
	movf	(GPIO_WriteBit@BitVal),w
	skipz
	goto	u1350
	goto	l14480
u1350:
	line	73
	
l14478:	
;ms83fxx02_gpio.c: 72: {
;ms83fxx02_gpio.c: 73: PORTA |= GPIO_Pin;
	movf	(GPIO_WriteBit@GPIO_Pin),w
	iorwf	(5),f	;volatile
	line	74
;ms83fxx02_gpio.c: 74: }
	goto	l4424
	line	77
	
l14480:	
;ms83fxx02_gpio.c: 75: else
;ms83fxx02_gpio.c: 76: {
;ms83fxx02_gpio.c: 77: PORTA &= ~(GPIO_Pin);
	comf	(GPIO_WriteBit@GPIO_Pin),w
	andwf	(5),f	;volatile
	goto	l4424
	line	82
	
l14482:	
;ms83fxx02_gpio.c: 80: else
;ms83fxx02_gpio.c: 81: {
;ms83fxx02_gpio.c: 82: if (BitVal != Bit_RESET)
	movf	(GPIO_WriteBit@BitVal),w
	skipz
	goto	u1360
	goto	l14486
u1360:
	line	84
	
l14484:	
;ms83fxx02_gpio.c: 83: {
;ms83fxx02_gpio.c: 84: PORTC |= GPIO_Pin;
	movf	(GPIO_WriteBit@GPIO_Pin),w
	iorwf	(7),f	;volatile
	line	85
;ms83fxx02_gpio.c: 85: }
	goto	l4424
	line	88
	
l14486:	
;ms83fxx02_gpio.c: 86: else
;ms83fxx02_gpio.c: 87: {
;ms83fxx02_gpio.c: 88: PORTC &= ~(GPIO_Pin);
	comf	(GPIO_WriteBit@GPIO_Pin),w
	andwf	(7),f	;volatile
	line	91
	
l4424:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_WriteBit
	__end_of_GPIO_WriteBit:
;; =============== function _GPIO_WriteBit ends ============

	signat	_GPIO_WriteBit,12408
	global	_ChargeTimer_GetCount
psect	text1700,local,class=CODE,delta=2
global __ptext1700
__ptext1700:

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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_charge_control
;; This function uses a non-reentrant model
;;
psect	text1700
	file	"ms83fxx02_charge_timer.c"
	line	112
	global	__size_of_ChargeTimer_GetCount
	__size_of_ChargeTimer_GetCount	equ	__end_of_ChargeTimer_GetCount-_ChargeTimer_GetCount
	
_ChargeTimer_GetCount:	
	opt	stack 2
; Regs used in _ChargeTimer_GetCount: [wreg]
	line	113
	
l14470:	
;ms83fxx02_charge_timer.c: 113: return charge_time_out;
	bcf	status, 6	;RP1=0, select bank0
	movf	(_charge_time_out+1),w	;volatile
	movwf	(?_ChargeTimer_GetCount+1)
	movf	(_charge_time_out),w	;volatile
	movwf	(?_ChargeTimer_GetCount)
	line	114
	
l12237:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeTimer_GetCount
	__end_of_ChargeTimer_GetCount:
;; =============== function _ChargeTimer_GetCount ends ============

	signat	_ChargeTimer_GetCount,90
	global	_LEDTimer_INTConfig
psect	text1701,local,class=CODE,delta=2
global __ptext1701
__ptext1701:

;; *************** function _LEDTimer_INTConfig *****************
;; Defined at:
;;		line 119 in file "ms83fxx02_led_timer.c"
;; Parameters:    Size  Location     Type
;;  NewState        1    wreg     enum E1482
;; Auto vars:     Size  Location     Type
;;  NewState        1    0[BANK0 ] enum E1482
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 160/40
;;		On exit  : 160/40
;;		Unchanged: FFE9F/0
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
;; This function uses a non-reentrant model
;;
psect	text1701
	file	"ms83fxx02_led_timer.c"
	line	119
	global	__size_of_LEDTimer_INTConfig
	__size_of_LEDTimer_INTConfig	equ	__end_of_LEDTimer_INTConfig-_LEDTimer_INTConfig
	
_LEDTimer_INTConfig:	
	opt	stack 2
; Regs used in _LEDTimer_INTConfig: [wreg]
;LEDTimer_INTConfig@NewState stored from wreg
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LEDTimer_INTConfig@NewState)
	line	120
	
l14466:	
;ms83fxx02_led_timer.c: 120: if(NewState != DISABLE)
	movf	(LEDTimer_INTConfig@NewState),w
	skipz
	goto	u1330
	goto	l7714
u1330:
	line	123
	
l14468:	
;ms83fxx02_led_timer.c: 121: {
;ms83fxx02_led_timer.c: 123: TMR3IE = 1;
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
	goto	l7716
	line	127
	
l7714:	
	line	130
;ms83fxx02_led_timer.c: 127: else
;ms83fxx02_led_timer.c: 128: {
;ms83fxx02_led_timer.c: 130: TMR3IE = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2177/8)^0100h,(2177)&7
	line	132
	
l7716:	
	return
	opt stack 0
GLOBAL	__end_of_LEDTimer_INTConfig
	__end_of_LEDTimer_INTConfig:
;; =============== function _LEDTimer_INTConfig ends ============

	signat	_LEDTimer_INTConfig,4216
	global	_LEDTimer_Cmd
psect	text1702,local,class=CODE,delta=2
global __ptext1702
__ptext1702:

;; *************** function _LEDTimer_Cmd *****************
;; Defined at:
;;		line 43 in file "ms83fxx02_led_timer.c"
;; Parameters:    Size  Location     Type
;;  period_type     1    wreg     enum E1491
;;  NewState        1    0[BANK0 ] enum E1482
;; Auto vars:     Size  Location     Type
;;  period_type     1    1[BANK0 ] enum E1491
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/40
;;		Unchanged: FFE9F/0
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
;;		_Driver_Init
;; This function uses a non-reentrant model
;;
psect	text1702
	file	"ms83fxx02_led_timer.c"
	line	43
	global	__size_of_LEDTimer_Cmd
	__size_of_LEDTimer_Cmd	equ	__end_of_LEDTimer_Cmd-_LEDTimer_Cmd
	
_LEDTimer_Cmd:	
	opt	stack 2
; Regs used in _LEDTimer_Cmd: [wreg+status,2]
;LEDTimer_Cmd@period_type stored from wreg
	movwf	(LEDTimer_Cmd@period_type)
	line	44
	
l14440:	
;ms83fxx02_led_timer.c: 44: if(NewState != DISABLE)
	movf	(LEDTimer_Cmd@NewState),w
	skipz
	goto	u1310
	goto	l7707
u1310:
	line	46
	
l14442:	
;ms83fxx02_led_timer.c: 45: {
;ms83fxx02_led_timer.c: 46: if(period_type == TIM_PERIOD_0_33ms)
	movf	(LEDTimer_Cmd@period_type),w
	xorlw	02h
	skipz
	goto	u1321
	goto	u1320
u1321:
	goto	l7708
u1320:
	line	48
	
l14444:	
;ms83fxx02_led_timer.c: 47: {
;ms83fxx02_led_timer.c: 48: current_period_type = TIM_PERIOD_0_33ms;
	movlw	(02h)
	movwf	(_current_period_type)	;volatile
	line	54
	
l14446:	
;ms83fxx02_led_timer.c: 54: TMR3ON = 0;
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
	
l14448:	
;ms83fxx02_led_timer.c: 66: TMR3L = 0;
	clrf	(268)^0100h	;volatile
	line	67
	
l14450:	
;ms83fxx02_led_timer.c: 67: PR3L = 0xFF;
	movlw	(0FFh)
	movwf	(270)^0100h	;volatile
	line	70
	
l14452:	
;ms83fxx02_led_timer.c: 70: TMR3IF = 0;
	bcf	(2176/8)^0100h,(2176)&7
	line	73
	
l14454:	
;ms83fxx02_led_timer.c: 73: TMR3ON = 1;
	bsf	(2178/8)^0100h,(2178)&7
	line	74
;ms83fxx02_led_timer.c: 74: }
	goto	l7711
	line	75
	
l7708:	
	line	77
;ms83fxx02_led_timer.c: 75: else
;ms83fxx02_led_timer.c: 76: {
;ms83fxx02_led_timer.c: 77: current_period_type = TIM_PERIOD_1s;
	clrf	(_current_period_type)	;volatile
	incf	(_current_period_type),f	;volatile
	line	83
;ms83fxx02_led_timer.c: 83: TMR3ON = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2178/8)^0100h,(2178)&7
	line	86
	
l14456:	
;ms83fxx02_led_timer.c: 86: PWM3CR0 = 0b01100010;
	movlw	(062h)
	movwf	(271)^0100h	;volatile
	line	89
;ms83fxx02_led_timer.c: 89: PWM3CR1 = 0b00111000;
	movlw	(038h)
	movwf	(272)^0100h	;volatile
	line	92
;ms83fxx02_led_timer.c: 92: T3CKDIV = 60;
	movlw	(03Ch)
	movwf	(273)^0100h	;volatile
	line	94
;ms83fxx02_led_timer.c: 94: TMR3H = 0x0F;
	movlw	(0Fh)
	movwf	(269)^0100h	;volatile
	goto	l14448
	line	105
	
l7707:	
	line	108
;ms83fxx02_led_timer.c: 105: else
;ms83fxx02_led_timer.c: 106: {
;ms83fxx02_led_timer.c: 108: TMR3ON = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2178/8)^0100h,(2178)&7
	line	110
	
l7711:	
	return
	opt stack 0
GLOBAL	__end_of_LEDTimer_Cmd
	__end_of_LEDTimer_Cmd:
;; =============== function _LEDTimer_Cmd ends ============

	signat	_LEDTimer_Cmd,8312
	global	_ADC_Init
psect	text1703,local,class=CODE,delta=2
global __ptext1703
__ptext1703:

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 77 in file "ms83fxx02_pwr.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Driver_Init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1703
	file	"ms83fxx02_pwr.c"
	line	77
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
	opt	stack 3
; Regs used in _ADC_Init: [wreg+status,2+status,0]
;ADC_Init@channel stored from wreg
	line	79
	movwf	(ADC_Init@channel)
	
l14430:	
;ms83fxx02_pwr.c: 79: ANSEL |= (0x01 << channel);
	movlw	(01h)
	movwf	(??_ADC_Init+0)+0
	incf	(ADC_Init@channel),w
	goto	u1304
u1305:
	clrc
	rlf	(??_ADC_Init+0)+0,f
u1304:
	addlw	-1
	skipz
	goto	u1305
	movf	0+(??_ADC_Init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(145)^080h,f	;volatile
	line	81
	
l14432:	
;ms83fxx02_pwr.c: 81: TRISC |= 0b00000100;
	bsf	(135)^080h+(2/8),(2)&7	;volatile
	line	84
	
l14434:	
;ms83fxx02_pwr.c: 84: ADCON1 = 0b01010000;
	movlw	(050h)
	movwf	(159)^080h	;volatile
	line	87
	
l14436:	
;ms83fxx02_pwr.c: 87: ADCON0 = 0b10100000;
	movlw	(0A0h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	89
	
l14438:	
;ms83fxx02_pwr.c: 89: ADIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1129/8)^080h,(1129)&7
	line	90
	
l10030:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
;; =============== function _ADC_Init ends ============

	signat	_ADC_Init,4216
	global	_Board_Init
psect	text1704,local,class=CODE,delta=2
global __ptext1704
__ptext1704:

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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1704
	file	"main.c"
	line	33
	global	__size_of_Board_Init
	__size_of_Board_Init	equ	__end_of_Board_Init-_Board_Init
	
_Board_Init:	
	opt	stack 3
; Regs used in _Board_Init: [wreg+status,2]
	line	34
	
l14412:	
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
	
l14414:	
;main.c: 40: INTCON = 0b00000000;
	clrf	(11)	;volatile
	line	41
	
l14416:	
;main.c: 41: PIE1 = 0b00000000;
	clrf	(140)^080h	;volatile
	line	42
	
l14418:	
;main.c: 42: PIE2 = 0b00000000;
	clrf	(141)^080h	;volatile
	line	43
	
l14420:	
;main.c: 43: PIR1 = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(12)	;volatile
	line	44
	
l14422:	
;main.c: 44: PIR2 = 0b00000000;
	clrf	(13)	;volatile
	line	45
	
l14424:	
;main.c: 45: WPD = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	46
;main.c: 46: ANSEL = 0b01000000;
	movlw	(040h)
	movwf	(145)^080h	;volatile
	line	47
	
l14426:	
;main.c: 47: TRISA = 0b00000000;
	clrf	(133)^080h	;volatile
	line	48
	
l14428:	
;main.c: 48: WPUA = 0b00000000;
	clrf	(149)^080h	;volatile
	line	49
	
l1137:	
	return
	opt stack 0
GLOBAL	__end_of_Board_Init
	__end_of_Board_Init:
;; =============== function _Board_Init ends ============

	signat	_Board_Init,88
	global	_ISR
psect	text1705,local,class=CODE,delta=2
global __ptext1705
__ptext1705:

;; *************** function _ISR *****************
;; Defined at:
;;		line 208 in file "main.c"
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
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          4       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_KEY_IntrHandler
;;		_DebounceTimer_IntrHandler
;;		i1_GetDeviceMode
;;		_SwitchModeTimer_IntrHandler
;;		_ChargeTimer_IntrHandler
;;		_MotorOperTimer_IntrHandler
;;		_LEDTimer_IntrHandler
;;		_ChargeDetect_IntrHandler
;;		_ADC_IntrHandler
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1705
	file	"main.c"
	line	208
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
psect	text1705
	line	209
	
i1l14528:	
;main.c: 209: KEY_IntrHandler();
	fcall	_KEY_IntrHandler
	line	210
	
i1l14530:	
;main.c: 210: DebounceTimer_IntrHandler();
	fcall	_DebounceTimer_IntrHandler
	line	212
	
i1l14532:	
;main.c: 212: if(RUN_MODE == GetDeviceMode())
	fcall	i1_GetDeviceMode
	iorlw	0
	skipz
	goto	u140_21
	goto	u140_20
u140_21:
	goto	i1l14536
u140_20:
	line	214
	
i1l14534:	
;main.c: 213: {
;main.c: 214: SwitchModeTimer_IntrHandler();
	fcall	_SwitchModeTimer_IntrHandler
	line	215
;main.c: 215: }
	goto	i1l14538
	line	218
	
i1l14536:	
;main.c: 216: else
;main.c: 217: {
;main.c: 218: ChargeTimer_IntrHandler();
	fcall	_ChargeTimer_IntrHandler
	line	221
	
i1l14538:	
;main.c: 219: }
;main.c: 221: MotorOperTimer_IntrHandler();
	fcall	_MotorOperTimer_IntrHandler
	line	223
	
i1l14540:	
;main.c: 223: LEDTimer_IntrHandler();
	fcall	_LEDTimer_IntrHandler
	line	225
	
i1l14542:	
;main.c: 225: ChargeDetect_IntrHandler();
	fcall	_ChargeDetect_IntrHandler
	line	227
	
i1l14544:	
;main.c: 227: ADC_IntrHandler();
	fcall	_ADC_IntrHandler
	line	228
	
i1l1172:	
	movf	(??_ISR+3),w
	bcf	status, 5	;RP0=0, select bank0
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
	global	_LEDTimer_IntrHandler
psect	text1706,local,class=CODE,delta=2
global __ptext1706
__ptext1706:

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
;;		On entry : 60/40
;;		On exit  : 60/40
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
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
psect	text1706
	file	"ms83fxx02_led_timer.c"
	line	233
	global	__size_of_LEDTimer_IntrHandler
	__size_of_LEDTimer_IntrHandler	equ	__end_of_LEDTimer_IntrHandler-_LEDTimer_IntrHandler
	
_LEDTimer_IntrHandler:	
	opt	stack 0
; Regs used in _LEDTimer_IntrHandler: [wreg+status,2+status,0+pclath+cstack]
	line	234
	
i1l14622:	
;ms83fxx02_led_timer.c: 234: if(TMR3IE && TMR3IF)
	btfss	(2177/8)^0100h,(2177)&7
	goto	u157_21
	goto	u157_20
u157_21:
	goto	i1l7732
u157_20:
	
i1l14624:	
	btfss	(2176/8)^0100h,(2176)&7
	goto	u158_21
	goto	u158_20
u158_21:
	goto	i1l7732
u158_20:
	line	238
	
i1l14626:	
;ms83fxx02_led_timer.c: 235: {
;ms83fxx02_led_timer.c: 238: if(under_volt_display_En)
	bcf	status, 6	;RP1=0, select bank0
	movf	(_under_volt_display_En),w	;volatile
	skipz
	goto	u159_20
	goto	i1l14630
u159_20:
	line	240
	
i1l14628:	
;ms83fxx02_led_timer.c: 239: {
;ms83fxx02_led_timer.c: 240: LED_UnderVoltageOutput((BitAction)(1 - GPIO_ReadInputDataBit(GPIOC, ((uint8_t)0x00000008))));
	movlw	(08h)
	movwf	(?i1_GPIO_ReadInputDataBit)
	movlw	(01h)
	fcall	i1_GPIO_ReadInputDataBit
	sublw	01h
	fcall	i1_LED_UnderVoltageOutput
	line	243
	
i1l14630:	
;ms83fxx02_led_timer.c: 241: }
;ms83fxx02_led_timer.c: 243: if(run_limit_display_en)
	movf	(_run_limit_display_en),w	;volatile
	skipz
	goto	u160_20
	goto	i1l7731
u160_20:
	line	245
	
i1l14632:	
;ms83fxx02_led_timer.c: 244: {
;ms83fxx02_led_timer.c: 245: LED_DisplayRunLimit();
	fcall	_LED_DisplayRunLimit
	line	246
	
i1l7731:	
	line	248
;ms83fxx02_led_timer.c: 246: }
;ms83fxx02_led_timer.c: 248: ADC_Enable((0x06));
	movlw	(06h)
	fcall	_ADC_Enable
	line	251
	
i1l14634:	
;ms83fxx02_led_timer.c: 251: TMR3IF = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2176/8)^0100h,(2176)&7
	line	253
	
i1l7732:	
	return
	opt stack 0
GLOBAL	__end_of_LEDTimer_IntrHandler
	__end_of_LEDTimer_IntrHandler:
;; =============== function _LEDTimer_IntrHandler ends ============

	signat	_LEDTimer_IntrHandler,88
	global	_MotorOperTimer_IntrHandler
psect	text1707,local,class=CODE,delta=2
global __ptext1707
__ptext1707:

;; *************** function _MotorOperTimer_IntrHandler *****************
;; Defined at:
;;		line 323 in file "ms83fxx02_motor.c"
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
;; Hardware stack levels required when called:    2
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
	line	323
	global	__size_of_MotorOperTimer_IntrHandler
	__size_of_MotorOperTimer_IntrHandler	equ	__end_of_MotorOperTimer_IntrHandler-_MotorOperTimer_IntrHandler
	
_MotorOperTimer_IntrHandler:	
	opt	stack 0
; Regs used in _MotorOperTimer_IntrHandler: [wreg+status,2+status,0+pclath+cstack]
	line	324
	
i1l14586:	
;ms83fxx02_motor.c: 324: if(TMR4IE && TMR4IF)
	btfss	(2225/8)^0100h,(2225)&7
	goto	u151_21
	goto	u151_20
u151_21:
	goto	i1l8888
u151_20:
	
i1l14588:	
	btfss	(2224/8)^0100h,(2224)&7
	goto	u152_21
	goto	u152_20
u152_21:
	goto	i1l8888
u152_20:
	line	326
	
i1l14590:	
;ms83fxx02_motor.c: 325: {
;ms83fxx02_motor.c: 326: if(!Motor_CheckRunLimit())
	fcall	i1_Motor_CheckRunLimit
	iorlw	0
	skipz
	goto	u153_21
	goto	u153_20
u153_21:
	goto	i1l8881
u153_20:
	line	328
	
i1l14592:	
;ms83fxx02_motor.c: 327: {
;ms83fxx02_motor.c: 328: if(motor_timing_running_flag)
	movf	(_motor_timing_running_flag),w
	skipz
	goto	u154_20
	goto	i1l14602
u154_20:
	line	330
	
i1l14594:	
;ms83fxx02_motor.c: 329: {
;ms83fxx02_motor.c: 330: motor_intr_count++;
	incf	(_motor_intr_count),f	;volatile
	line	331
	
i1l14596:	
;ms83fxx02_motor.c: 331: if((motor_intr_count % 5) == 0)
	movlw	(05h)
	movwf	(?___lbmod)
	movf	(_motor_intr_count),w	;volatile
	fcall	___lbmod
	iorlw	0
	skipz
	goto	u155_21
	goto	u155_20
u155_21:
	goto	i1l14620
u155_20:
	line	333
	
i1l14598:	
;ms83fxx02_motor.c: 332: {
;ms83fxx02_motor.c: 333: motor_timing_running_flag = 0;
	clrf	(_motor_timing_running_flag)
	line	334
	
i1l14600:	
;ms83fxx02_motor.c: 334: MotorOperationTimer_Init(MotorOperationTimer_0_3s);
	movlw	(02h)
	fcall	i1_MotorOperationTimer_Init
	goto	i1l14620
	line	339
	
i1l14602:	
;ms83fxx02_motor.c: 337: else
;ms83fxx02_motor.c: 338: {
;ms83fxx02_motor.c: 339: if(motor_intr_count >= 20)
	movlw	(014h)
	subwf	(_motor_intr_count),w	;volatile
	skipc
	goto	u156_21
	goto	u156_20
u156_21:
	goto	i1l14614
u156_20:
	line	341
	
i1l14604:	
;ms83fxx02_motor.c: 340: {
;ms83fxx02_motor.c: 341: motor_intr_count = 0;
	clrf	(_motor_intr_count)	;volatile
	line	342
	
i1l14606:	
;ms83fxx02_motor.c: 342: motor_oper_record++;
	incf	(_motor_oper_record),f	;volatile
	skipnz
	incf	(_motor_oper_record+1),f	;volatile
	line	343
	
i1l14608:	
;ms83fxx02_motor.c: 343: Motor_Stop();
	fcall	i1_Motor_Stop
	line	344
	
i1l14610:	
;ms83fxx02_motor.c: 344: MotorOperationTimer_Stop();
	fcall	i1_MotorOperationTimer_Stop
	line	345
	
i1l14612:	
;ms83fxx02_motor.c: 345: Motor_SetStatus(MOTOR_MODE_STOP);
	movlw	(01h)
	fcall	i1_Motor_SetStatus
	line	346
;ms83fxx02_motor.c: 346: }
	goto	i1l14616
	line	349
	
i1l14614:	
;ms83fxx02_motor.c: 347: else
;ms83fxx02_motor.c: 348: {
;ms83fxx02_motor.c: 349: Motor_Init(motor_status);
	movf	(_motor_status),w	;volatile
	fcall	i1_Motor_Init
	line	350
;ms83fxx02_motor.c: 350: MotorOperationTimer_Init(MotorOperationTimer_30s);
	movlw	(01h)
	fcall	i1_MotorOperationTimer_Init
	line	353
	
i1l14616:	
;ms83fxx02_motor.c: 351: }
;ms83fxx02_motor.c: 353: motor_timing_running_flag = 1;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_motor_timing_running_flag)
	incf	(_motor_timing_running_flag),f
	goto	i1l14620
	line	356
	
i1l8881:	
	line	358
;ms83fxx02_motor.c: 356: else
;ms83fxx02_motor.c: 357: {
;ms83fxx02_motor.c: 358: key_press_time_count = 1;
	clrf	(_key_press_time_count)	;volatile
	incf	(_key_press_time_count),f	;volatile
	line	359
	
i1l14618:	
;ms83fxx02_motor.c: 359: MotorOperationTimer_Stop();
	fcall	i1_MotorOperationTimer_Stop
	line	361
	
i1l14620:	
;ms83fxx02_motor.c: 360: }
;ms83fxx02_motor.c: 361: TMR4IF = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2224/8)^0100h,(2224)&7
	line	363
	
i1l8888:	
	return
	opt stack 0
GLOBAL	__end_of_MotorOperTimer_IntrHandler
	__end_of_MotorOperTimer_IntrHandler:
;; =============== function _MotorOperTimer_IntrHandler ends ============

	signat	_MotorOperTimer_IntrHandler,88
	global	i1_MotorOperationTimer_Stop
psect	text1708,local,class=CODE,delta=2
global __ptext1708
__ptext1708:

;; *************** function i1_MotorOperationTimer_Stop *****************
;; Defined at:
;;		line 281 in file "ms83fxx02_motor.c"
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
psect	text1708
	file	"ms83fxx02_motor.c"
	line	281
	global	__size_ofi1_MotorOperationTimer_Stop
	__size_ofi1_MotorOperationTimer_Stop	equ	__end_ofi1_MotorOperationTimer_Stop-i1_MotorOperationTimer_Stop
	
i1_MotorOperationTimer_Stop:	
	opt	stack 0
; Regs used in i1_MotorOperationTimer_Stop: [wreg+status,2+pclath+cstack]
	line	283
	
i1l15072:	
;ms83fxx02_motor.c: 283: TMR4ON = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2226/8)^0100h,(2226)&7
	line	285
;ms83fxx02_motor.c: 285: TMR4IE = 0;
	bcf	(2225/8)^0100h,(2225)&7
	line	287
	
i1l15074:	
;ms83fxx02_motor.c: 287: if(!Motor_CheckRunLimit())
	fcall	i1_Motor_CheckRunLimit
	iorlw	0
	skipz
	goto	u212_21
	goto	u212_20
u212_21:
	goto	i1l8872
u212_20:
	line	290
	
i1l15076:	
;ms83fxx02_motor.c: 288: {
;ms83fxx02_motor.c: 290: motor_timing_running_flag = 1;
	clrf	(_motor_timing_running_flag)
	incf	(_motor_timing_running_flag),f
	line	291
	
i1l15078:	
;ms83fxx02_motor.c: 291: motor_intr_count = 0;
	clrf	(_motor_intr_count)	;volatile
	line	293
	
i1l8872:	
	return
	opt stack 0
GLOBAL	__end_ofi1_MotorOperationTimer_Stop
	__end_ofi1_MotorOperationTimer_Stop:
;; =============== function i1_MotorOperationTimer_Stop ends ============

	signat	i1_MotorOperationTimer_Stop,88
	global	i1_Motor_Stop
psect	text1709,local,class=CODE,delta=2
global __ptext1709
__ptext1709:

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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_GPIO_WriteBit
;; This function is called by:
;;		_MotorOperTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1709
	file	"ms83fxx02_motor.c"
	line	184
	global	__size_ofi1_Motor_Stop
	__size_ofi1_Motor_Stop	equ	__end_ofi1_Motor_Stop-i1_Motor_Stop
	
i1_Motor_Stop:	
	opt	stack 0
; Regs used in i1_Motor_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	188
	
i1l15032:	
;ms83fxx02_motor.c: 188: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	190
;ms83fxx02_motor.c: 190: TMR2ON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(146/8),(146)&7
	line	194
	
i1l15034:	
;ms83fxx02_motor.c: 194: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000004), Bit_RESET);
	movlw	(04h)
	movwf	(?i1_GPIO_WriteBit)
	clrf	0+(?i1_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	i1_GPIO_WriteBit
	line	195
;ms83fxx02_motor.c: 195: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000008), Bit_RESET);
	movlw	(08h)
	movwf	(?i1_GPIO_WriteBit)
	clrf	0+(?i1_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	i1_GPIO_WriteBit
	line	196
;ms83fxx02_motor.c: 196: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), Bit_RESET);
	clrf	(?i1_GPIO_WriteBit)
	incf	(?i1_GPIO_WriteBit),f
	clrf	0+(?i1_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	i1_GPIO_WriteBit
	line	197
	
i1l8857:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Motor_Stop
	__end_ofi1_Motor_Stop:
;; =============== function i1_Motor_Stop ends ============

	signat	i1_Motor_Stop,88
	global	i1_LED_UnderVoltageOutput
psect	text1710,local,class=CODE,delta=2
global __ptext1710
__ptext1710:

;; *************** function i1_LED_UnderVoltageOutput *****************
;; Defined at:
;;		line 85 in file "ms83fxx02_led.c"
;; Parameters:    Size  Location     Type
;;  LED_UnderVol    1    wreg     enum E1499
;; Auto vars:     Size  Location     Type
;;  LED_UnderVol    1    6[COMMON] enum E1499
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
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_GPIO_WriteBit
;; This function is called by:
;;		_LEDTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1710
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
	
i1l14992:	
;ms83fxx02_led.c: 86: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000008), BitVal);
	movlw	(08h)
	movwf	(?i1_GPIO_WriteBit)
	movf	(i1LED_UnderVoltageOutput@BitVal),w
	movwf	0+(?i1_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	i1_GPIO_WriteBit
	line	87
	
i1l6628:	
	return
	opt stack 0
GLOBAL	__end_ofi1_LED_UnderVoltageOutput
	__end_ofi1_LED_UnderVoltageOutput:
;; =============== function i1_LED_UnderVoltageOutput ends ============

	signat	i1_LED_UnderVoltageOutput,88
	global	_LED_DisplayRunLimit
psect	text1711,local,class=CODE,delta=2
global __ptext1711
__ptext1711:

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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_GPIO_ReadInputDataBit
;;		i1_GPIO_WriteBit
;; This function is called by:
;;		_LEDTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1711
	file	"ms83fxx02_led.c"
	line	64
	global	__size_of_LED_DisplayRunLimit
	__size_of_LED_DisplayRunLimit	equ	__end_of_LED_DisplayRunLimit-_LED_DisplayRunLimit
	
_LED_DisplayRunLimit:	
	opt	stack 0
; Regs used in _LED_DisplayRunLimit: [wreg+status,2+status,0+pclath+cstack]
	line	65
	
i1l14782:	
;ms83fxx02_led.c: 65: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000004), (BitAction)(1 - GPIO_ReadInputDataBit(GPIOA, ((uint8_t)0x00000004))));
	movlw	(04h)
	movwf	(?i1_GPIO_WriteBit)
	movlw	(04h)
	movwf	(?i1_GPIO_ReadInputDataBit)
	movlw	(0)
	fcall	i1_GPIO_ReadInputDataBit
	sublw	01h
	movwf	0+(?i1_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	i1_GPIO_WriteBit
	line	66
;ms83fxx02_led.c: 66: GPIO_WriteBit(GPIOA, ((uint8_t)0x00000008), (BitAction)(1 - GPIO_ReadInputDataBit(GPIOA, ((uint8_t)0x00000008))));
	movlw	(08h)
	movwf	(?i1_GPIO_WriteBit)
	movlw	(08h)
	movwf	(?i1_GPIO_ReadInputDataBit)
	movlw	(0)
	fcall	i1_GPIO_ReadInputDataBit
	sublw	01h
	movwf	0+(?i1_GPIO_WriteBit)+01h
	movlw	(0)
	fcall	i1_GPIO_WriteBit
	line	67
;ms83fxx02_led.c: 67: GPIO_WriteBit(GPIOC, ((uint8_t)0x00000001), (BitAction)(1 - GPIO_ReadInputDataBit(GPIOC, ((uint8_t)0x00000001))));
	clrf	(?i1_GPIO_WriteBit)
	incf	(?i1_GPIO_WriteBit),f
	clrf	(?i1_GPIO_ReadInputDataBit)
	incf	(?i1_GPIO_ReadInputDataBit),f
	movlw	(01h)
	fcall	i1_GPIO_ReadInputDataBit
	sublw	01h
	movwf	0+(?i1_GPIO_WriteBit)+01h
	movlw	(01h)
	fcall	i1_GPIO_WriteBit
	line	68
	
i1l6622:	
	return
	opt stack 0
GLOBAL	__end_of_LED_DisplayRunLimit
	__end_of_LED_DisplayRunLimit:
;; =============== function _LED_DisplayRunLimit ends ============

	signat	_LED_DisplayRunLimit,88
	global	_ADC_IntrHandler
psect	text1712,local,class=CODE,delta=2
global __ptext1712
__ptext1712:

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
;;		On entry : 20/40
;;		On exit  : 40/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ADC_ReadData
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1712
	file	"ms83fxx02_pwr.c"
	line	159
	global	__size_of_ADC_IntrHandler
	__size_of_ADC_IntrHandler	equ	__end_of_ADC_IntrHandler-_ADC_IntrHandler
	
_ADC_IntrHandler:	
	opt	stack 1
; Regs used in _ADC_IntrHandler: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	160
	
i1l14642:	
;ms83fxx02_pwr.c: 160: if(ADIE && ADIF)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1129/8)^080h,(1129)&7
	goto	u162_21
	goto	u162_20
u162_21:
	goto	i1l10041
u162_20:
	
i1l14644:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7
	goto	u163_21
	goto	u163_20
u163_21:
	goto	i1l10041
u163_20:
	line	162
	
i1l14646:	
;ms83fxx02_pwr.c: 161: {
;ms83fxx02_pwr.c: 162: battery_value[battery_sample_count++] = ADC_ReadData();
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
	
i1l14648:	
	incf	(_battery_sample_count),f	;volatile
	line	164
	
i1l14650:	
;ms83fxx02_pwr.c: 164: if(battery_sample_count >= 10)
	movlw	(0Ah)
	subwf	(_battery_sample_count),w	;volatile
	skipc
	goto	u164_21
	goto	u164_20
u164_21:
	goto	i1l14656
u164_20:
	line	166
	
i1l14652:	
;ms83fxx02_pwr.c: 165: {
;ms83fxx02_pwr.c: 166: battery_sample_count = 0;
	clrf	(_battery_sample_count)	;volatile
	line	167
	
i1l14654:	
;ms83fxx02_pwr.c: 167: battery_handle_flag = 1;
	clrf	(_battery_handle_flag)	;volatile
	incf	(_battery_handle_flag),f	;volatile
	line	169
	
i1l14656:	
;ms83fxx02_pwr.c: 168: }
;ms83fxx02_pwr.c: 169: ADIF = 0;
	bcf	(105/8),(105)&7
	line	171
	
i1l10041:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_IntrHandler
	__end_of_ADC_IntrHandler:
;; =============== function _ADC_IntrHandler ends ============

	signat	_ADC_IntrHandler,88
	global	_ChargeDetect_IntrHandler
psect	text1713,local,class=CODE,delta=2
global __ptext1713
__ptext1713:

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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_GPIO_ReadInputDataBit
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1713
	file	"ms83fxx02_charge.c"
	line	80
	global	__size_of_ChargeDetect_IntrHandler
	__size_of_ChargeDetect_IntrHandler	equ	__end_of_ChargeDetect_IntrHandler-_ChargeDetect_IntrHandler
	
_ChargeDetect_IntrHandler:	
	opt	stack 1
; Regs used in _ChargeDetect_IntrHandler: [wreg+status,2+status,0+pclath+cstack]
	line	81
	
i1l14636:	
;ms83fxx02_charge.c: 81: if(PAIE & PAIF)
	movlw	1
	btfss	(91/8),(91)&7
	andlw	0
	btfss	(88/8),(88)&7
	andlw	0
	iorlw	0
	skipnz
	goto	u161_21
	goto	u161_20
u161_21:
	goto	i1l2268
u161_20:
	line	83
	
i1l14638:	
;ms83fxx02_charge.c: 82: {
;ms83fxx02_charge.c: 83: GPIO_ReadInputDataBit(GPIOA, ((uint8_t)0x00000010));
	movlw	(010h)
	movwf	(?i1_GPIO_ReadInputDataBit)
	movlw	(0)
	fcall	i1_GPIO_ReadInputDataBit
	line	85
	
i1l14640:	
;ms83fxx02_charge.c: 85: PAIF = 0;
	bcf	(88/8),(88)&7
	line	87
	
i1l2268:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeDetect_IntrHandler
	__end_of_ChargeDetect_IntrHandler:
;; =============== function _ChargeDetect_IntrHandler ends ============

	signat	_ChargeDetect_IntrHandler,88
	global	_DebounceTimer_IntrHandler
psect	text1714,local,class=CODE,delta=2
global __ptext1714
__ptext1714:

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
psect	text1714
	file	"MS83FXX02_KEY.C"
	line	132
	global	__size_of_DebounceTimer_IntrHandler
	__size_of_DebounceTimer_IntrHandler	equ	__end_of_DebounceTimer_IntrHandler-_DebounceTimer_IntrHandler
	
_DebounceTimer_IntrHandler:	
	opt	stack 1
; Regs used in _DebounceTimer_IntrHandler: [wreg+status,2+status,0+pclath+cstack]
	line	133
	
i1l14558:	
;MS83FXX02_KEY.C: 133: if(TMR1IE && TMR1IF)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1120/8)^080h,(1120)&7
	goto	u143_21
	goto	u143_20
u143_21:
	goto	i1l5543
u143_20:
	
i1l14560:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(96/8),(96)&7
	goto	u144_21
	goto	u144_20
u144_21:
	goto	i1l5543
u144_20:
	line	135
	
i1l14562:	
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
	
i1l14564:	
;MS83FXX02_KEY.C: 139: if(key_status != GPIO_ReadInputDataBit(GPIOC, ((uint8_t)0x00000002)))
	movlw	(02h)
	movwf	(?i1_GPIO_ReadInputDataBit)
	movlw	(01h)
	fcall	i1_GPIO_ReadInputDataBit
	xorwf	(_key_status),w	;volatile
	skipnz
	goto	u145_21
	goto	u145_20
u145_21:
	goto	i1l14568
u145_20:
	line	142
	
i1l14566:	
;MS83FXX02_KEY.C: 140: {
;MS83FXX02_KEY.C: 142: INTF = 0;
	bcf	(89/8),(89)&7
	line	143
;MS83FXX02_KEY.C: 143: INTE = 1;
	bsf	(92/8),(92)&7
	line	144
;MS83FXX02_KEY.C: 144: return ;
	goto	i1l5543
	line	147
	
i1l14568:	
;MS83FXX02_KEY.C: 145: }
;MS83FXX02_KEY.C: 147: if(!key_status)
	movf	(_key_status),f
	skipz	;volatile
	goto	u146_21
	goto	u146_20
u146_21:
	goto	i1l5544
u146_20:
	line	150
	
i1l14570:	
;MS83FXX02_KEY.C: 148: {
;MS83FXX02_KEY.C: 150: key_press = 1;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_key_press)	;volatile
	incf	(_key_press),f	;volatile
	line	153
;MS83FXX02_KEY.C: 153: INTEDG = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1038/8)^080h,(1038)&7
	line	154
;MS83FXX02_KEY.C: 154: }
	goto	i1l14566
	line	155
	
i1l5544:	
	line	158
;MS83FXX02_KEY.C: 155: else
;MS83FXX02_KEY.C: 156: {
;MS83FXX02_KEY.C: 158: key_release = 1;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_key_release)	;volatile
	incf	(_key_release),f	;volatile
	line	161
;MS83FXX02_KEY.C: 161: INTEDG = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1038/8)^080h,(1038)&7
	goto	i1l14566
	line	168
	
i1l5543:	
	return
	opt stack 0
GLOBAL	__end_of_DebounceTimer_IntrHandler
	__end_of_DebounceTimer_IntrHandler:
;; =============== function _DebounceTimer_IntrHandler ends ============

	signat	_DebounceTimer_IntrHandler,88
	global	_KEY_IntrHandler
psect	text1715,local,class=CODE,delta=2
global __ptext1715
__ptext1715:

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
psect	text1715
	file	"MS83FXX02_KEY.C"
	line	114
	global	__size_of_KEY_IntrHandler
	__size_of_KEY_IntrHandler	equ	__end_of_KEY_IntrHandler-_KEY_IntrHandler
	
_KEY_IntrHandler:	
	opt	stack 1
; Regs used in _KEY_IntrHandler: [wreg+status,2+status,0+pclath+cstack]
	line	115
	
i1l14546:	
;MS83FXX02_KEY.C: 115: if(INTE && INTF)
	btfss	(92/8),(92)&7
	goto	u141_21
	goto	u141_20
u141_21:
	goto	i1l5538
u141_20:
	
i1l14548:	
	btfss	(89/8),(89)&7
	goto	u142_21
	goto	u142_20
u142_21:
	goto	i1l5538
u142_20:
	line	118
	
i1l14550:	
;MS83FXX02_KEY.C: 116: {
;MS83FXX02_KEY.C: 118: INTF = 0;
	bcf	(89/8),(89)&7
	line	119
;MS83FXX02_KEY.C: 119: INTE = 0;
	bcf	(92/8),(92)&7
	line	120
	
i1l14552:	
;MS83FXX02_KEY.C: 120: key_status = INTEDG;
	movlw	0
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1038/8)^080h,(1038)&7
	movlw	1
	movwf	(_key_status)	;volatile
	line	121
	
i1l14554:	
;MS83FXX02_KEY.C: 121: key_press_flag= 1;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_key_press_flag)	;volatile
	incf	(_key_press_flag),f	;volatile
	line	122
	
i1l14556:	
;MS83FXX02_KEY.C: 122: TIM1_Init();
	fcall	_TIM1_Init
	line	124
	
i1l5538:	
	return
	opt stack 0
GLOBAL	__end_of_KEY_IntrHandler
	__end_of_KEY_IntrHandler:
;; =============== function _KEY_IntrHandler ends ============

	signat	_KEY_IntrHandler,88
	global	i1_GetDeviceMode
psect	text1716,local,class=CODE,delta=2
global __ptext1716
__ptext1716:

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
psect	text1716
	file	"ms83fxx02_pwr.c"
	line	45
	global	__size_ofi1_GetDeviceMode
	__size_ofi1_GetDeviceMode	equ	__end_ofi1_GetDeviceMode-i1_GetDeviceMode
	
i1_GetDeviceMode:	
	opt	stack 2
; Regs used in i1_GetDeviceMode: [wreg]
	line	46
	
i1l15080:	
;ms83fxx02_pwr.c: 46: return device_mode;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_device_mode),w	;volatile
	line	47
	
i1l10018:	
	return
	opt stack 0
GLOBAL	__end_ofi1_GetDeviceMode
	__end_ofi1_GetDeviceMode:
;; =============== function i1_GetDeviceMode ends ============

	signat	i1_GetDeviceMode,89
	global	i1_MotorOperationTimer_Init
psect	text1717,local,class=CODE,delta=2
global __ptext1717
__ptext1717:

;; *************** function i1_MotorOperationTimer_Init *****************
;; Defined at:
;;		line 219 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  MotorOperati    1    wreg     enum E1558
;; Auto vars:     Size  Location     Type
;;  MotorOperati    1    0[COMMON] enum E1558
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
psect	text1717
	file	"ms83fxx02_motor.c"
	line	219
	global	__size_ofi1_MotorOperationTimer_Init
	__size_ofi1_MotorOperationTimer_Init	equ	__end_ofi1_MotorOperationTimer_Init-i1_MotorOperationTimer_Init
	
i1_MotorOperationTimer_Init:	
	opt	stack 1
; Regs used in i1_MotorOperationTimer_Init: [wreg+status,2]
;i1MotorOperationTimer_Init@time stored from wreg
	line	221
	movwf	(i1MotorOperationTimer_Init@time)
	
i1l15046:	
;ms83fxx02_motor.c: 221: TMR4ON = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2226/8)^0100h,(2226)&7
	line	223
	
i1l15048:	
;ms83fxx02_motor.c: 223: if(time == MotorOperationTimer_30s)
	decf	(i1MotorOperationTimer_Init@time),w
	skipz
	goto	u210_21
	goto	u210_20
u210_21:
	goto	i1l15052
u210_20:
	line	226
	
i1l15050:	
;ms83fxx02_motor.c: 224: {
;ms83fxx02_motor.c: 226: PWM4CR0 = 0b01110010;
	movlw	(072h)
	movwf	(277)^0100h	;volatile
	line	229
;ms83fxx02_motor.c: 229: PWM4CR1 = 0b00111000;
	movlw	(038h)
	movwf	(278)^0100h	;volatile
	line	234
;ms83fxx02_motor.c: 234: T4CKDIV = 182;
	movlw	(0B6h)
	movwf	(279)^0100h	;volatile
	line	235
;ms83fxx02_motor.c: 235: }
	goto	i1l8865
	line	236
	
i1l15052:	
;ms83fxx02_motor.c: 236: else if(time == MotorOperationTimer_0_3s)
	movf	(i1MotorOperationTimer_Init@time),w
	xorlw	02h
	skipz
	goto	u211_21
	goto	u211_20
u211_21:
	goto	i1l15056
u211_20:
	line	239
	
i1l15054:	
;ms83fxx02_motor.c: 237: {
;ms83fxx02_motor.c: 239: PWM4CR0 = 0b01100010;
	movlw	(062h)
	movwf	(277)^0100h	;volatile
	line	241
;ms83fxx02_motor.c: 241: PWM4CR1 = 0b00111000;
	movlw	(038h)
	movwf	(278)^0100h	;volatile
	line	245
;ms83fxx02_motor.c: 245: T4CKDIV = 8;
	movlw	(08h)
	movwf	(279)^0100h	;volatile
	line	246
;ms83fxx02_motor.c: 246: }
	goto	i1l8865
	line	250
	
i1l15056:	
;ms83fxx02_motor.c: 247: else
;ms83fxx02_motor.c: 248: {
;ms83fxx02_motor.c: 250: PWM4CR0 = 0b01110010;
	movlw	(072h)
	movwf	(277)^0100h	;volatile
	line	253
;ms83fxx02_motor.c: 253: PWM4CR1 = 0b00111000;
	movlw	(038h)
	movwf	(278)^0100h	;volatile
	line	256
;ms83fxx02_motor.c: 256: T4CKDIV = 243;
	movlw	(0F3h)
	movwf	(279)^0100h	;volatile
	line	257
	
i1l8865:	
	line	259
;ms83fxx02_motor.c: 257: }
;ms83fxx02_motor.c: 259: TMR4H = 0x0F;
	movlw	(0Fh)
	movwf	(275)^0100h	;volatile
	line	260
	
i1l15058:	
;ms83fxx02_motor.c: 260: TMR4L = 0;
	clrf	(274)^0100h	;volatile
	line	261
	
i1l15060:	
;ms83fxx02_motor.c: 261: PR4L = 0xFF;
	movlw	(0FFh)
	movwf	(276)^0100h	;volatile
	line	264
	
i1l15062:	
;ms83fxx02_motor.c: 264: TMR4IF = 0;
	bcf	(2224/8)^0100h,(2224)&7
	line	267
	
i1l15064:	
;ms83fxx02_motor.c: 267: TMR4ON = 1;
	bsf	(2226/8)^0100h,(2226)&7
	line	270
	
i1l15066:	
;ms83fxx02_motor.c: 270: TMR4IE = 1;
	bsf	(2225/8)^0100h,(2225)&7
	line	271
	
i1l15068:	
;ms83fxx02_motor.c: 271: PEIE = 1;
	bsf	(94/8),(94)&7
	line	272
	
i1l15070:	
;ms83fxx02_motor.c: 272: GIE = 1;
	bsf	(95/8),(95)&7
	line	273
	
i1l8868:	
	return
	opt stack 0
GLOBAL	__end_ofi1_MotorOperationTimer_Init
	__end_ofi1_MotorOperationTimer_Init:
;; =============== function i1_MotorOperationTimer_Init ends ============

	signat	i1_MotorOperationTimer_Init,88
	global	i1_Motor_CheckRunLimit
psect	text1718,local,class=CODE,delta=2
global __ptext1718
__ptext1718:

;; *************** function i1_Motor_CheckRunLimit *****************
;; Defined at:
;;		line 200 in file "ms83fxx02_motor.c"
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
psect	text1718
	file	"ms83fxx02_motor.c"
	line	200
	global	__size_ofi1_Motor_CheckRunLimit
	__size_ofi1_Motor_CheckRunLimit	equ	__end_ofi1_Motor_CheckRunLimit-i1_Motor_CheckRunLimit
	
i1_Motor_CheckRunLimit:	
	opt	stack 0
; Regs used in i1_Motor_CheckRunLimit: [wreg]
	line	204
	
i1l15036:	
;ms83fxx02_motor.c: 204: if(motor_oper_record >= 120)
	movlw	high(078h)
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_motor_oper_record+1),w	;volatile
	movlw	low(078h)
	skipnz
	subwf	(_motor_oper_record),w	;volatile
	skipc
	goto	u209_21
	goto	u209_20
u209_21:
	goto	i1l15042
u209_20:
	line	206
	
i1l15038:	
;ms83fxx02_motor.c: 205: {
;ms83fxx02_motor.c: 206: return 1;
	movlw	(01h)
	goto	i1l8861
	line	208
	
i1l15042:	
;ms83fxx02_motor.c: 207: }
;ms83fxx02_motor.c: 208: return 0;
	movlw	(0)
	line	209
	
i1l8861:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Motor_CheckRunLimit
	__end_ofi1_Motor_CheckRunLimit:
;; =============== function i1_Motor_CheckRunLimit ends ============

	signat	i1_Motor_CheckRunLimit,89
	global	i1_Motor_SetStatus
psect	text1719,local,class=CODE,delta=2
global __ptext1719
__ptext1719:

;; *************** function i1_Motor_SetStatus *****************
;; Defined at:
;;		line 122 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  Motor_SetSta    1    wreg     enum E1552
;; Auto vars:     Size  Location     Type
;;  Motor_SetSta    1    0[COMMON] enum E1552
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
psect	text1719
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
	
i1l15030:	
;ms83fxx02_motor.c: 123: motor_status = status;
	movf	(i1Motor_SetStatus@status),w
	movwf	(_motor_status)	;volatile
	line	124
	
i1l8842:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Motor_SetStatus
	__end_ofi1_Motor_SetStatus:
;; =============== function i1_Motor_SetStatus ends ============

	signat	i1_Motor_SetStatus,88
	global	i1_Motor_Init
psect	text1720,local,class=CODE,delta=2
global __ptext1720
__ptext1720:

;; *************** function i1_Motor_Init *****************
;; Defined at:
;;		line 65 in file "ms83fxx02_motor.c"
;; Parameters:    Size  Location     Type
;;  Motor_Init      1    wreg     enum E1552
;; Auto vars:     Size  Location     Type
;;  Motor_Init      1    0[COMMON] enum E1552
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
psect	text1720
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
	
i1l14994:	
;ms83fxx02_motor.c: 67: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	70
	
i1l14996:	
;ms83fxx02_motor.c: 70: CMCON0 |= 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(25),f	;volatile
	line	71
	
i1l14998:	
;ms83fxx02_motor.c: 71: T2CKSRC = 0;
	bcf	(221/8),(221)&7
	line	74
	
i1l15000:	
;ms83fxx02_motor.c: 74: TMR2 = 0;
	clrf	(17)	;volatile
	line	76
	
i1l15002:	
;ms83fxx02_motor.c: 76: T2CON = 0x03;
	movlw	(03h)
	movwf	(18)	;volatile
	line	78
	
i1l15004:	
;ms83fxx02_motor.c: 78: PR2 = 0x9C;
	movlw	(09Ch)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	79
	
i1l15006:	
;ms83fxx02_motor.c: 79: if(status == MOTOR_MODE_STOP)
	decf	(i1Motor_Init@status),w
	skipz
	goto	u204_21
	goto	u204_20
u204_21:
	goto	i1l15012
u204_20:
	goto	i1l8830
	line	83
	
i1l15012:	
;ms83fxx02_motor.c: 83: else if(status == MOTOR_MODE_DUTY_80)
	movf	(i1Motor_Init@status),w
	xorlw	04h
	skipz
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l15016
u205_20:
	line	86
	
i1l15014:	
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
	goto	i1l8831
	line	89
	
i1l15016:	
;ms83fxx02_motor.c: 89: else if(status == MOTOR_MODE_DUTY_90)
	movf	(i1Motor_Init@status),w
	xorlw	03h
	skipz
	goto	u206_21
	goto	u206_20
u206_21:
	goto	i1l15020
u206_20:
	line	92
	
i1l15018:	
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
	goto	i1l8831
	line	97
	
i1l15020:	
;ms83fxx02_motor.c: 95: else
;ms83fxx02_motor.c: 96: {
;ms83fxx02_motor.c: 97: if(status == MOTOR_MODE_DUTY_100)
	movf	(i1Motor_Init@status),w
	xorlw	02h
	skipz
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l8831
u207_20:
	line	99
	
i1l15022:	
;ms83fxx02_motor.c: 98: {
;ms83fxx02_motor.c: 99: CCP1CON = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	100
	
i1l15024:	
;ms83fxx02_motor.c: 100: TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1084/8)^080h,(1084)&7
	line	102
	
i1l15026:	
;ms83fxx02_motor.c: 102: PC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(60/8),(60)&7
	goto	i1l8830
	line	106
	
i1l8831:	
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
	
i1l8837:	
	btfss	(97/8),(97)&7
	goto	u208_21
	goto	u208_20
u208_21:
	goto	i1l8837
u208_20:
	
i1l8839:	
	line	113
;ms83fxx02_motor.c: 113: TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1084/8)^080h,(1084)&7
	line	114
	
i1l8830:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Motor_Init
	__end_ofi1_Motor_Init:
;; =============== function i1_Motor_Init ends ============

	signat	i1_Motor_Init,88
	global	i1_GPIO_ReadInputDataBit
psect	text1721,local,class=CODE,delta=2
global __ptext1721
__ptext1721:

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
;;		On entry : 20/0
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
;;		_LED_DisplayRunLimit
;;		_LEDTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1721
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
	
i1l14974:	
;ms83fxx02_gpio.c: 102: uint8_t bitstatus = RESET;
	clrf	(i1GPIO_ReadInputDataBit@bitstatus)
	line	104
	
i1l14976:	
;ms83fxx02_gpio.c: 104: if(GPIOx == GPIOA)
	movf	(i1GPIO_ReadInputDataBit@GPIOx),f
	skipz
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l14982
u200_20:
	line	106
	
i1l14978:	
;ms83fxx02_gpio.c: 105: {
;ms83fxx02_gpio.c: 106: if (PORTA & GPIO_Pin)
	bcf	status, 6	;RP1=0, select bank0
	movf	(5),w	;volatile
	andwf	(i1GPIO_ReadInputDataBit@GPIO_Pin),w
	btfsc	status,2
	goto	u201_21
	goto	u201_20
u201_21:
	goto	i1l14988
u201_20:
	line	108
	
i1l14980:	
;ms83fxx02_gpio.c: 107: {
;ms83fxx02_gpio.c: 108: bitstatus = (uint8_t)SET;
	clrf	(i1GPIO_ReadInputDataBit@bitstatus)
	incf	(i1GPIO_ReadInputDataBit@bitstatus),f
	goto	i1l14988
	line	113
	
i1l14982:	
;ms83fxx02_gpio.c: 111: else
;ms83fxx02_gpio.c: 112: {
;ms83fxx02_gpio.c: 113: if(GPIOx == GPIOC)
	decf	(i1GPIO_ReadInputDataBit@GPIOx),w
	skipz
	goto	u202_21
	goto	u202_20
u202_21:
	goto	i1l14988
u202_20:
	line	115
	
i1l14984:	
;ms83fxx02_gpio.c: 114: {
;ms83fxx02_gpio.c: 115: if (PORTC & GPIO_Pin)
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w	;volatile
	andwf	(i1GPIO_ReadInputDataBit@GPIO_Pin),w
	btfsc	status,2
	goto	u203_21
	goto	u203_20
u203_21:
	goto	i1l14988
u203_20:
	goto	i1l14980
	line	122
	
i1l14988:	
;ms83fxx02_gpio.c: 118: }
;ms83fxx02_gpio.c: 119: }
;ms83fxx02_gpio.c: 120: }
;ms83fxx02_gpio.c: 122: return bitstatus;
	movf	(i1GPIO_ReadInputDataBit@bitstatus),w
	line	123
	
i1l4432:	
	return
	opt stack 0
GLOBAL	__end_ofi1_GPIO_ReadInputDataBit
	__end_ofi1_GPIO_ReadInputDataBit:
;; =============== function i1_GPIO_ReadInputDataBit ends ============

	signat	i1_GPIO_ReadInputDataBit,89
	global	i1_GPIO_WriteBit
psect	text1722,local,class=CODE,delta=2
global __ptext1722
__ptext1722:

;; *************** function i1_GPIO_WriteBit *****************
;; Defined at:
;;		line 68 in file "ms83fxx02_gpio.c"
;; Parameters:    Size  Location     Type
;;  GPIO_WriteBi    1    wreg     enum E1491
;;  GPIO_WriteBi    1    3[COMMON] unsigned char 
;;  GPIO_WriteBi    1    4[COMMON] enum E1499
;; Auto vars:     Size  Location     Type
;;  GPIO_WriteBi    1    5[COMMON] enum E1491
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 20/0
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
;;		_LED_DisplayRunLimit
;;		i1_LED_UnderVoltageOutput
;;		i1_Motor_Stop
;; This function uses a non-reentrant model
;;
psect	text1722
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
	
i1l14960:	
;ms83fxx02_gpio.c: 69: if(GPIOx == GPIOA)
	movf	(i1GPIO_WriteBit@GPIOx),f
	skipz
	goto	u197_21
	goto	u197_20
u197_21:
	goto	i1l14968
u197_20:
	line	71
	
i1l14962:	
;ms83fxx02_gpio.c: 70: {
;ms83fxx02_gpio.c: 71: if (BitVal != Bit_RESET)
	movf	(i1GPIO_WriteBit@BitVal),w
	skipz
	goto	u198_20
	goto	i1l14966
u198_20:
	line	73
	
i1l14964:	
;ms83fxx02_gpio.c: 72: {
;ms83fxx02_gpio.c: 73: PORTA |= GPIO_Pin;
	movf	(i1GPIO_WriteBit@GPIO_Pin),w
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(5),f	;volatile
	line	74
;ms83fxx02_gpio.c: 74: }
	goto	i1l4424
	line	77
	
i1l14966:	
;ms83fxx02_gpio.c: 75: else
;ms83fxx02_gpio.c: 76: {
;ms83fxx02_gpio.c: 77: PORTA &= ~(GPIO_Pin);
	comf	(i1GPIO_WriteBit@GPIO_Pin),w
	bcf	status, 6	;RP1=0, select bank0
	andwf	(5),f	;volatile
	goto	i1l4424
	line	82
	
i1l14968:	
;ms83fxx02_gpio.c: 80: else
;ms83fxx02_gpio.c: 81: {
;ms83fxx02_gpio.c: 82: if (BitVal != Bit_RESET)
	movf	(i1GPIO_WriteBit@BitVal),w
	skipz
	goto	u199_20
	goto	i1l14972
u199_20:
	line	84
	
i1l14970:	
;ms83fxx02_gpio.c: 83: {
;ms83fxx02_gpio.c: 84: PORTC |= GPIO_Pin;
	movf	(i1GPIO_WriteBit@GPIO_Pin),w
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(7),f	;volatile
	line	85
;ms83fxx02_gpio.c: 85: }
	goto	i1l4424
	line	88
	
i1l14972:	
;ms83fxx02_gpio.c: 86: else
;ms83fxx02_gpio.c: 87: {
;ms83fxx02_gpio.c: 88: PORTC &= ~(GPIO_Pin);
	comf	(i1GPIO_WriteBit@GPIO_Pin),w
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	91
	
i1l4424:	
	return
	opt stack 0
GLOBAL	__end_ofi1_GPIO_WriteBit
	__end_ofi1_GPIO_WriteBit:
;; =============== function i1_GPIO_WriteBit ends ============

	signat	i1_GPIO_WriteBit,88
	global	___lbmod
psect	text1723,local,class=CODE,delta=2
global __ptext1723
__ptext1723:

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
psect	text1723
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
	
i1l14942:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
i1l14944:	
	clrf	(___lbmod@rem)
	line	12
	
i1l14946:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u194_25:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u194_25
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
i1l14948:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
i1l14950:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u195_21
	goto	u195_20
u195_21:
	goto	i1l14954
u195_20:
	line	15
	
i1l14952:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
i1l14954:	
	decfsz	(___lbmod@counter),f
	goto	u196_21
	goto	u196_20
u196_21:
	goto	i1l14946
u196_20:
	line	17
	
i1l14956:	
	movf	(___lbmod@rem),w
	line	18
	
i1l12949:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	_ADC_ReadData
psect	text1724,local,class=CODE,delta=2
global __ptext1724
__ptext1724:

;; *************** function _ADC_ReadData *****************
;; Defined at:
;;		line 141 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  battery_valu    2    3[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned short 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ADC_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1724
	file	"ms83fxx02_pwr.c"
	line	141
	global	__size_of_ADC_ReadData
	__size_of_ADC_ReadData	equ	__end_of_ADC_ReadData-_ADC_ReadData
	
_ADC_ReadData:	
	opt	stack 1
; Regs used in _ADC_ReadData: [wreg+status,2]
	line	142
	
i1l14906:	
	line	144
	
i1l14908:	
;ms83fxx02_pwr.c: 144: battery_value = ADRESH & 0x03;
	movf	(30),w
	andlw	03h
	movwf	(ADC_ReadData@battery_value)
	clrf	(ADC_ReadData@battery_value+1)
	line	145
;ms83fxx02_pwr.c: 145: battery_value = (battery_value << 8) | ADRESL;
	movf	(ADC_ReadData@battery_value),w
	movwf	(??_ADC_ReadData+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(ADC_ReadData@battery_value)
	movf	(??_ADC_ReadData+0)+0,w
	movwf	(ADC_ReadData@battery_value+1)
	line	148
	
i1l14910:	
;ms83fxx02_pwr.c: 148: ADON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(248/8),(248)&7
	line	149
;ms83fxx02_pwr.c: 149: return battery_value;
	movf	(ADC_ReadData@battery_value+1),w
	movwf	(?_ADC_ReadData+1)
	movf	(ADC_ReadData@battery_value),w
	movwf	(?_ADC_ReadData)
	line	150
	
i1l10036:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_ReadData
	__end_of_ADC_ReadData:
;; =============== function _ADC_ReadData ends ============

	signat	_ADC_ReadData,90
	global	_ADC_Enable
psect	text1725,local,class=CODE,delta=2
global __ptext1725
__ptext1725:

;; *************** function _ADC_Enable *****************
;; Defined at:
;;		line 124 in file "ms83fxx02_pwr.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
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
;;		_LEDTimer_IntrHandler
;; This function uses a non-reentrant model
;;
psect	text1725
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
	
i1l14790:	
;ms83fxx02_pwr.c: 125: ADCON0 |= (channel << 2);
	movf	(ADC_Enable@channel),w
	movwf	(??_ADC_Enable+0)+0
	clrc
	rlf	(??_ADC_Enable+0)+0,f
	clrc
	rlf	(??_ADC_Enable+0)+0,w
	iorwf	(31),f	;volatile
	line	127
	
i1l14792:	
;ms83fxx02_pwr.c: 127: ADON = 1;
	bsf	(248/8),(248)&7
	line	128
	
i1l14794:	
# 128 "ms83fxx02_pwr.c"
nop ;#
psect	text1725
	line	129
	
i1l14796:	
# 129 "ms83fxx02_pwr.c"
nop ;#
psect	text1725
	line	132
	
i1l14798:	
;ms83fxx02_pwr.c: 132: GO_DONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	133
	
i1l10033:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Enable
	__end_of_ADC_Enable:
;; =============== function _ADC_Enable ends ============

	signat	_ADC_Enable,4216
	global	_TIM1_Init
psect	text1726,local,class=CODE,delta=2
global __ptext1726
__ptext1726:

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
psect	text1726
	file	"MS83FXX02_KEY.C"
	line	38
	global	__size_of_TIM1_Init
	__size_of_TIM1_Init	equ	__end_of_TIM1_Init-_TIM1_Init
	
_TIM1_Init:	
	opt	stack 1
; Regs used in _TIM1_Init: [wreg+status,2]
	line	39
	
i1l14742:	
;MS83FXX02_KEY.C: 39: TMR1ON = 0;
	bcf	(128/8),(128)&7
	line	44
	
i1l14744:	
;MS83FXX02_KEY.C: 44: TMR1L = 0xF0;
	movlw	(0F0h)
	movwf	(14)	;volatile
	line	45
;MS83FXX02_KEY.C: 45: TMR1H = 0xD8;
	movlw	(0D8h)
	movwf	(15)	;volatile
	line	48
	
i1l14746:	
;MS83FXX02_KEY.C: 48: T1CON = 0b00000000;
	clrf	(16)	;volatile
	line	49
	
i1l14748:	
;MS83FXX02_KEY.C: 49: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	51
	
i1l14750:	
;MS83FXX02_KEY.C: 51: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	53
	
i1l14752:	
;MS83FXX02_KEY.C: 53: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	54
	
i1l14754:	
;MS83FXX02_KEY.C: 54: PEIE = 1;
	bsf	(94/8),(94)&7
	line	55
	
i1l14756:	
;MS83FXX02_KEY.C: 55: GIE = 1;
	bsf	(95/8),(95)&7
	line	56
	
i1l5520:	
	return
	opt stack 0
GLOBAL	__end_of_TIM1_Init
	__end_of_TIM1_Init:
;; =============== function _TIM1_Init ends ============

	signat	_TIM1_Init,88
	global	_ChargeTimer_IntrHandler
psect	text1727,local,class=CODE,delta=2
global __ptext1727
__ptext1727:

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
psect	text1727
	file	"ms83fxx02_charge_timer.c"
	line	122
	global	__size_of_ChargeTimer_IntrHandler
	__size_of_ChargeTimer_IntrHandler	equ	__end_of_ChargeTimer_IntrHandler-_ChargeTimer_IntrHandler
	
_ChargeTimer_IntrHandler:	
	opt	stack 2
; Regs used in _ChargeTimer_IntrHandler: [status]
	line	123
	
i1l14578:	
;ms83fxx02_charge_timer.c: 123: if(TMR5IE && TMR5IF)
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2273/8)^0100h,(2273)&7
	goto	u149_21
	goto	u149_20
u149_21:
	goto	i1l12241
u149_20:
	
i1l14580:	
	btfss	(2272/8)^0100h,(2272)&7
	goto	u150_21
	goto	u150_20
u150_21:
	goto	i1l12241
u150_20:
	line	126
	
i1l14582:	
;ms83fxx02_charge_timer.c: 124: {
;ms83fxx02_charge_timer.c: 126: charge_time_out++;
	bcf	status, 6	;RP1=0, select bank0
	incf	(_charge_time_out),f	;volatile
	skipnz
	incf	(_charge_time_out+1),f	;volatile
	line	127
	
i1l14584:	
;ms83fxx02_charge_timer.c: 127: TMR5IF = 0;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2272/8)^0100h,(2272)&7
	line	134
	
i1l12241:	
	return
	opt stack 0
GLOBAL	__end_of_ChargeTimer_IntrHandler
	__end_of_ChargeTimer_IntrHandler:
;; =============== function _ChargeTimer_IntrHandler ends ============

	signat	_ChargeTimer_IntrHandler,88
	global	_SwitchModeTimer_IntrHandler
psect	text1728,local,class=CODE,delta=2
global __ptext1728
__ptext1728:

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
psect	text1728
	file	"ms83fxx02_tim.c"
	line	119
	global	__size_of_SwitchModeTimer_IntrHandler
	__size_of_SwitchModeTimer_IntrHandler	equ	__end_of_SwitchModeTimer_IntrHandler-_SwitchModeTimer_IntrHandler
	
_SwitchModeTimer_IntrHandler:	
	opt	stack 2
; Regs used in _SwitchModeTimer_IntrHandler: []
	line	120
	
i1l14572:	
;ms83fxx02_tim.c: 120: if(TMR5IE && TMR5IF)
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2273/8)^0100h,(2273)&7
	goto	u147_21
	goto	u147_20
u147_21:
	goto	i1l11157
u147_20:
	
i1l14574:	
	btfss	(2272/8)^0100h,(2272)&7
	goto	u148_21
	goto	u148_20
u148_21:
	goto	i1l11157
u148_20:
	line	123
	
i1l14576:	
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
	
i1l11157:	
	return
	opt stack 0
GLOBAL	__end_of_SwitchModeTimer_IntrHandler
	__end_of_SwitchModeTimer_IntrHandler:
;; =============== function _SwitchModeTimer_IntrHandler ends ============

	signat	_SwitchModeTimer_IntrHandler,88
psect	text1729,local,class=CODE,delta=2
global __ptext1729
__ptext1729:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end

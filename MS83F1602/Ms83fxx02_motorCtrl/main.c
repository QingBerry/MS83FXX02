/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   main.c
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-09-23
* @version	 v1.0
* *********************************************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "MS83Fxx02.h" 
#include "ms83fxx02_tim.h"
#include "ms83fxx02_led.h"
#include "ms83fxx02_motor.h"
#include "ms83fxx02_key.h"
#include "ms83fxx02_pwr.h"
#include "ms83fxx02_charge.h"
#include "ms83fxx02_eeprom.h"
#include "ms83fxx02_led_timer.h"
#include "ms83fxx02_charge_timer.h"
#include "ms83fxx02_sleepled.h"

/**
  * @brief  initialization of board.
  * @param   No parameter.
  * @return  void
  */
void Board_Init(void)
{
	PCON = 0b00000011;
	MSCKCON = 0b00010000;
	/* clk source: 32K, prescaler 1:4096, Enable software Watch dog timer */
	WDTCON = 0b00001110;
	/* WDT 32KHZ IRCF=101=2MHZ/2=1MHZ,1us/T */
	OSCCON = 0b01010000;
	INTCON = 0b00000000;
	PIE1 = 0b00000000;
	PIE2 = 0b00000000;
	PIR1 = 0b00000000;
	PIR2 = 0b00000000;
	WPD = 0b00000000;
	ANSEL = 0b01000000;
	TRISA = 0b00000000;
	WPUA =	0b00000000;
}

/**
  * @brief  initialize peripherals.
  * @param   No parameter.
  * @return  void
  */
void Driver_Init(void)
{	
	/* Initialize all LEDs */
	LED_Init();
	
	/* Initialize key */
	KEY_Init();
	
	/* Initialize charge module */
	Charge_Init();

	/* Battery voltage collection */
	ADC_Init(Battery_Channel_AN6);

	LEDTimer_Cmd(TIM_PERIOD_0_33ms, ENABLE);
	LEDTimer_INTConfig(ENABLE);

	/* Initialize EEPROM */
	EEPROM_Init();
}

/**
  * @brief  Charge control in charge mode.
  * @param   No parameter.
  * @return  void
  */
void charge_control(void)
{
	uint32_t charge_count = ChargeTimer_GetCount(); 

	/* Charge time over 5s */
	if((charge_count >= 1) && (charge_count < 5760))
	{
		Battery_Detect();
	}
	else
	{
		if(charge_count >= 5760)
		{
			LED_VoltageChargeOutput(Bit_RESET);
			// Charge full
			GPIO_WriteBit(LED_PORT_DUTY_80, LED_PIN_DUTY_80, SET);
		}
	}
}

/**
* @brief  main() is the entry of user code.
* @param   No parameter.
* @return  void
*/
void main(void)
{
#if 0
	/* Initialize EEPROM */
	EEPROM_Init();
	
	/* Check restore data */
	if(EEPROM_GetFlag() == EEPROM_Set_STORE_RESTORE_FLAG)
	{
		EEPROM_RestoreDeviceModeData();
		EEPROM_RestoreMotorData();
	}
#endif

	while(1)
	{
		switch(GetDeviceMode())
		{
			case RUN_MODE:
			{
				Board_Init();
				Driver_Init();
				
				while(1)
				{	
					Motor_HandleStatusChangeEvt(Motor_GetStatus());
#if 0
					/* Check charge status */
					if(ChargeDetect_GetStatus())
					{
						/* Reset charge time data */
						ChargeTimer_ResetCount();
						SetDeviceMode(CHARGE_MODE);
						break;
					}
#endif	
					/* Check Battery status */
					//Battery_Detect();
				}
				break;
			}
			case CHARGE_MODE:
			{
				/* Initialize all LEDs */
				LED_Init();
				KEY_DeInit();
				Motor_Stop();
				Motor_SetStatus(MOTOR_MODE_STOP);
				MotorOperationTimer_Stop();
				LEDTimer_DispRunLimitCmd(DISABLE);

				LEDTimer_Cmd(TIM_PERIOD_0_33ms, DISABLE);
				LEDTimer_INTConfig(DISABLE);

				ChargeCtrl_Output(Bit_SET);
				LED_VoltageChargeOutput(Bit_SET);
				/* Battery voltage collection */
				ADC_Init(Battery_Channel_AN6);
				/* Charge time control */
				ChargeTimer_Cmd(ENABLE);
				ChargeTimer_INTConfig(ENABLE);
				/* Sleep led display */
				SleepLedTimer_Init();
				while(1);
				
				while(1)
				{
					charge_control();

					/* Check charge status */
					if(!ChargeDetect_GetStatus())
					{
						/* Disable charge timer */
						ChargeTimer_Cmd(DISABLE);
						ChargeTimer_INTConfig(DISABLE);
						
						SetDeviceMode(RUN_MODE);
						break;
					}
				}
				
				break;
			}
			case SLEEP_MODE:
			{
				/* Initialize all LEDs */
				LED_Init();
				asm("SLEEP");

				break;
			}
			default:
			{
				break;
			}
		}
	}
}

/**
* @brief system interrupt handler function.
* @param   No parameter.
* @return  void
*/
void interrupt ISR(void)
{
	KEY_IntrHandler();
	DebounceTimer_IntrHandler();

	if(RUN_MODE == GetDeviceMode())
	{
		SwitchModeTimer_IntrHandler();
		LEDTimer_IntrHandler();
	}
	else
	{
		ChargeTimer_IntrHandler();
		SleepLedTimer_IntrHandler();
	}
	
	MotorOperTimer_IntrHandler();
	
	ChargeDetect_IntrHandler();

	ADC_IntrHandler();
}

/******************* (C) COPYRIGHT 2017  *****END OF FILE****/


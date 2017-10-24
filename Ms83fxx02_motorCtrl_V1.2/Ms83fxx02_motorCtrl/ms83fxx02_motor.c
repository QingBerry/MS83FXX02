/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_motor.c
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-10-01
* @version	 v1.0
* *********************************************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "ms83fxx02_motor.h"
#include "ms83fxx02_eeprom.h"
#include "ms83fxx02_led.h"
#include "ms83fxx02_led_timer.h"
//#include "ms83fxx02_pwr.h"


/* Defines -------------------------------------------------------------------*/

/* Motor operation time control defines */
#define OPERAT_TIME_CTRL_PWMxCR0		PWM4CR0
#define	OPERAT_TIME_CTRL_PWMxCR1 		PWM4CR1
#define OPERAT_TIME_CTRL_TxCKDIV		T4CKDIV
#define OPERAT_TIME_CTRL_TMRxH			TMR4H
#define OPERAT_TIME_CTRL_TMRxL			TMR4L
#define OPERAT_TIME_CTRL_PRxL			PR4L
#define OPERAT_TIME_CTRL_TMRxIF			TMR4IF
#define OPERAT_TIME_CTRL_TMRxIE			TMR4IE
#define OPERAT_TIME_CTRL_TMRxON			TMR4ON

/* Motor output pin */
#define MOTOR_DIR						TRISC4
#define MOTO_OUT 						PC4

/* Globals ------------------------------------------------------------------*/

/* Motor operation status */
volatile MOTOR_STATUS motor_status = MOTOR_MODE_STOP;

/* Motor operation timer interrupt count */
volatile uint8_t motor_intr_count = 0;

/* Motor operation count */
volatile uint32_t motor_oper_record = 0; 

/* Motor running flag */
BOOL motor_timing_running_flag = true; 

/* Key Press time record */
volatile uint8_t key_press_time_count = false;

extern volatile BOOL key_press_flag;

/**
  * @brief  PWM output whose period is 5ms.
  * @param  status: status: new state of the motor
  * @retval None
  */
void Motor_Init(MOTOR_STATUS status)
{
	/* Disable output */
	MOTOR_DIR = 1;
	
	//ANSEL5 = 0;
	CMCON0 |= 0x07;
	T2CKSRC = 0;

	/* Disable TIM2 */
	TMR2 = 0;
	/* Clock prescale is 16 */
	T2CON = 0x03;

	PR2 = 0x9C;
	if(status == MOTOR_MODE_STOP)
	{
		return ;
	}
	else if(status == MOTOR_MODE_DUTY_80)
	{
		//80%
		CCPR1L = 0x7D;
		CCP1CON = 0x8D | (0x00 << 4);
	}
	else if(status == MOTOR_MODE_DUTY_90)
	{
		//90%
		CCPR1L = 0x8C;
		CCP1CON = 0x8D | (0x00 << 4);
	}
	else
	{
		if(status == MOTOR_MODE_DUTY_100)
		{
			CCP1CON = 0;
			MOTOR_DIR = 0;
			/* Enable output */
			MOTO_OUT = 1;

			return ;
		}
	}

	/* Clear interrupt flag */
	TMR2IF = 0;
	TMR2ON = 1;
	while(TMR2IF == 0){;}
	
	MOTOR_DIR = 0;
}

/**
  * @brief  Set Motor status.
  * @param  status: new state of the motor.
  * @retval None
  */
void Motor_SetStatus(MOTOR_STATUS status)
{
	motor_status = status;	
}

/**
  * @brief  Get Motor status.
  * @param  : none.
  * @retval current state of the motor
  */
MOTOR_STATUS Motor_GetStatus(void)
{
	return motor_status;	
}

/**
  * @brief  Enables or disables Motor.
  * @param  status: status: new state of the motor
  * @retval None
  */
static void Motor_Start(MOTOR_STATUS status)
{
	/* LED control */
	switch(status)
	{
		case MOTOR_MODE_DUTY_100:
		{
			LED_DisplayMotorStatus(LED_PORT_DUTY_100, LED_PIN_DUTY_100);
			break;
		}
		case MOTOR_MODE_DUTY_90:
		{
			LED_DisplayMotorStatus(LED_PORT_DUTY_90, LED_PIN_DUTY_90);
			break;
		}
		case MOTOR_MODE_DUTY_80:
		{
			LED_DisplayMotorStatus(LED_PORT_DUTY_80, LED_PIN_DUTY_80);
			break;
		}
		default:
		{
			break;
		}
	}

	Motor_Init(status);

	/* Initialize mode switching timer */
	SwitchModeTimer_Cmd(ENABLE);
	SwitchModeTimer_INTConfig(ENABLE);

	//EEPROM_SetFlag();
	//EEPROM_StoreModeData();
	//EEPROM_StoreMotorData();
}

/**
  * @brief  Stop PWM output.
  * @param  status: status: new state of the motor
  * @retval None
  */
void Motor_Stop(void)
{
	//while(MOTOR_TMRxIF == 0);

	/* Disable output */
	MOTOR_DIR = 1;	
	/* Disable TIM2 */
	TMR2ON = 0;

	LED_CloseMotorStatus();
}

BOOL Motor_CheckRunLimit(void)
{
	//reach 120 
	// three led twinkle, 3Hz
	//key press 8s enter sleep mode and clear 120
	if(motor_oper_record >= MOTOR_OPER_TOTAL_COUNT)
	{
		return true;
	}
	return false;
}

/**
  * @brief  Initialize TIM peripheral for motor operation time control.
  * @param  time: timer period.
  * @param  NewState: new state of the TIMx peripheral.
  *   This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void MotorOperationTimer_Init(MOTOR_OPERATION_TIME time)
{
	/* Disable TMRx */
	OPERAT_TIME_CTRL_TMRxON = 0;

	if(time == MotorOperationTimer_30s)
	{
		/* Period width is 12 bit */
		OPERAT_TIME_CTRL_PWMxCR0 = 0b01110010;

		/* TMRx is timer mode */
		OPERAT_TIME_CTRL_PWMxCR1 = 0b00111000;
		
		/* T = (2^0)*(2^12)*(182+1)*128/16000000 = 6s */ 
		//5s->152.58
		//6s->183.105
		OPERAT_TIME_CTRL_TxCKDIV = 182;
	}
	else if(time == MotorOperationTimer_0_3s)
	{
		/* Period width is 11 bit, internal RC Fast clock */
		OPERAT_TIME_CTRL_PWMxCR0 = 0b01100010;
		/* TMRx is timer mode */
		OPERAT_TIME_CTRL_PWMxCR1 = 0b00111000;
		
		/* T = (2^0)*(2^12)*(17+1)*128/16000000 = 0.6s */
		/* T = (2^0)*(2^12)*(8+1)*128/16000000 = 0.3s */
		OPERAT_TIME_CTRL_TxCKDIV = 8;
	}
	else
	{
		/* Period width is 12 bit */
		OPERAT_TIME_CTRL_PWMxCR0 = 0b01110010;

		/* TMRx is timer mode */
		OPERAT_TIME_CTRL_PWMxCR1 = 0b00111000;
		
		/* T = (2^0)*(2^12)*(243+1)*128/16000000 = 8s */ 
		OPERAT_TIME_CTRL_TxCKDIV = 243;
	}

	OPERAT_TIME_CTRL_TMRxH = 0x0F;
	OPERAT_TIME_CTRL_TMRxL = 0;
	OPERAT_TIME_CTRL_PRxL = 0xFF;
	
	/* Clear interrupt flag */
	OPERAT_TIME_CTRL_TMRxIF = 0;

	/* Enable TMRx */
	OPERAT_TIME_CTRL_TMRxON = 1;

	/* Enable the Interrupt sources */
    OPERAT_TIME_CTRL_TMRxIE = 1;
	PEIE = 1;
	GIE = 1;
}

/**
  * @brief  TIM peripheral for motor operation time control.
  * @param void
  * @retval None
  */
void MotorOperationTimer_Stop(void)
{
	/* Disable TMRx */
	OPERAT_TIME_CTRL_TMRxON = 0;
	/* Disable the Interrupt sources */
    OPERAT_TIME_CTRL_TMRxIE = 0;

	if(!Motor_CheckRunLimit())
	{
		/* Clear record data */
		motor_timing_running_flag = true;
		motor_intr_count = 0;
	}
}

/**
  * @brief  Enables or disables the specified TIM interrupt.
  * @param  NewState: new state of the TIMx peripheral.
  *   This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void MotorOperationTimer_INTConfig(FunctionalState NewState)
{
    if (NewState != DISABLE)
    {
        /* Enable the Interrupt sources */
        OPERAT_TIME_CTRL_TMRxIE = 1;
		PEIE = 1;
		GIE = 1;
    }
    else
    {
        /* Disable the Interrupt sources */
        OPERAT_TIME_CTRL_TMRxIE = 0;
    }
}

/**
* @brief TIM interrupt handler function.
* @param   No parameter.
* @return  void
*/
void MotorOperTimer_IntrHandler(void)
{
	if(OPERAT_TIME_CTRL_TMRxIE && OPERAT_TIME_CTRL_TMRxIF)
	{
		if(!Motor_CheckRunLimit())
		{
			//RC4 = ~RC4;
			if(motor_timing_running_flag)
			{
				motor_intr_count++;
				if((motor_intr_count % 5) == 0)
				{
					motor_timing_running_flag = false;
					MotorOperationTimer_Init(MotorOperationTimer_0_3s);
				}
			}
			else
			{
				if(motor_intr_count >= 20)
				{
					motor_intr_count = 0;
					motor_oper_record++;
					Motor_Stop();
					MotorOperationTimer_Stop();
					Motor_SetStatus(MOTOR_MODE_STOP);
				}
				else
				{
					Motor_Init(motor_status);
					MotorOperationTimer_Init(MotorOperationTimer_30s);
				}

				motor_timing_running_flag = true;
			}
		}
		else
		{
			key_press_time_count = true;
			MotorOperationTimer_Stop();
		}
		OPERAT_TIME_CTRL_TMRxIF = 0;
	}
}

/**
  * @brief  Motor status machine handle.
  * @param  status: new status..
  * @retval   None.
  */
void Motor_HandleStatusChangeEvt(MOTOR_STATUS status)
{
	if(!Motor_CheckRunLimit())
	{
		switch(status)
		{
			case MOTOR_MODE_STOP:
			{
				if(KEY_GetReleaseStatus())
				{
					Motor_SetStatus(MOTOR_MODE_DUTY_100);
					Motor_Start(MOTOR_MODE_DUTY_100);

					/* Calculate operation status time */
					MotorOperationTimer_Stop();
					MotorOperationTimer_Init(MotorOperationTimer_30s);
				}
				else
				{
					if(!key_press_flag)
					{
						/* Go to sleep mode */
						asm("SLEEP");
					}
				}
				break;
			}
			case MOTOR_MODE_DUTY_100:
			{
				if(KEY_GetReleaseStatus())
				{
					/* Check time out */
					if(SwitchModeTimer_GetINTStatus())
					{
						Motor_Stop();
						Motor_SetStatus(MOTOR_MODE_STOP);
						MotorOperationTimer_Stop();
					}
					else
					{
						/* Disable mode switching timer */
						SwitchModeTimer_Cmd(DISABLE);
						SwitchModeTimer_INTConfig(DISABLE);
						
						Motor_SetStatus(MOTOR_MODE_DUTY_90);
						Motor_Start(MOTOR_MODE_DUTY_90);

						/* Calculate operation status time */
						MotorOperationTimer_Stop();
						MotorOperationTimer_Init(MotorOperationTimer_30s);
					}
				}
				break;
			}
			case MOTOR_MODE_DUTY_90:
			{
				if(KEY_GetReleaseStatus())
				{
					/* Check time out */
					if(SwitchModeTimer_GetINTStatus())
					{
						Motor_Stop();
						Motor_SetStatus(MOTOR_MODE_STOP);
						MotorOperationTimer_Stop();
					}
					else
					{
						/* Disable mode switching timer */
						SwitchModeTimer_Cmd(DISABLE);
						SwitchModeTimer_INTConfig(DISABLE);
						
						Motor_SetStatus(MOTOR_MODE_DUTY_80);
						Motor_Start(MOTOR_MODE_DUTY_80);

						/* Calculate operation status time */
						MotorOperationTimer_Stop();
						MotorOperationTimer_Init(MotorOperationTimer_30s);
					}
				}
				break;
			}
			case MOTOR_MODE_DUTY_80:
			{
				if(KEY_GetReleaseStatus())
				{
					Motor_Stop();
					Motor_SetStatus(MOTOR_MODE_STOP);
					MotorOperationTimer_Stop();
				}
				break;
			}
			default:
			{
				break;
			}
		}
	}
	else
	{
		/* LED Display */
		if(LEDTimer_GetOperationStatus() == 0)
		{
			/* Initialize LED control timer */
			LEDTimer_Cmd(ENABLE);
			LEDTimer_INTConfig(ENABLE);
		}

		if(LEDTimer_GetRunLimitINTStatus())
		{
			if(!key_press_time_count)
			{
				LED_DisplayRunLimit();
			}
		}
		
		/* Check key event */
		if(KEY_GetPressStatus())
		{
			key_press_time_count = false;
			/* Calculate operation status time */
			MotorOperationTimer_Init(MotorOperationTimer_8s);
		}

		if(key_press_time_count)
		{
			LED_CloseMotorStatus();

			/* Disable LED control timer */
			LEDTimer_Cmd(DISABLE);
			LEDTimer_INTConfig(DISABLE);
		}

		if(KEY_GetReleaseStatus())
		{
			if(key_press_time_count)
			{
				//Press over 8s
				motor_oper_record = 0;
				key_press_time_count = false;
			}
			else
			{
				MotorOperationTimer_Stop();
			}
		}
	}
}

void EEPROM_StoreMotorData(void)
{
	EEPROM_Write(EEPROM_MOTOR_STATUS_ADDR, motor_status);
	EEPROM_Write(EEPROM_MOTOR_INTR_COUNT_ADDR, motor_intr_count);
	EEPROM_Write(EEPROM_MOTOR_OPER_RECORD_ADDR, motor_oper_record);
	EEPROM_Write(EEPROM_MOTOR_TIM_RUN_FLAG_ADDR, motor_timing_running_flag);
}

void EEPROM_RestoreMotorData(void)
{
	motor_status = EEPROM_Read(EEPROM_MOTOR_STATUS_ADDR);
	motor_intr_count = EEPROM_Read(EEPROM_MOTOR_INTR_COUNT_ADDR);
	motor_oper_record = EEPROM_Read(EEPROM_MOTOR_OPER_RECORD_ADDR);
	motor_timing_running_flag = EEPROM_Read(EEPROM_MOTOR_TIM_RUN_FLAG_ADDR);
}

/******************* (C) COPYRIGHT 2017  *****END OF FILE****/


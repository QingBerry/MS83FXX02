/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_led_timer.c
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-09-24
* @version	 v1.0
* *********************************************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "ms83fxx02_led_timer.h"
#include "ms83fxx02_led.h"
#include "ms83fxx02_pwr.h"

/* Defines -------------------------------------------------------------------*/
#define LED_UNDER_VOLTAGE_PWMxCR0		PWM3CR0
#define	LED_UNDER_VOLTAGE_PWMxCR1 		PWM3CR1
#define LED_UNDER_VOLTAGE_TxCKDIV		T3CKDIV
#define LED_UNDER_VOLTAGE_TMRxH			TMR3H
#define LED_UNDER_VOLTAGE_TMRxL			TMR3L
#define LED_UNDER_VOLTAGE_PRxL			PR3L
#define LED_UNDER_VOLTAGE_TMRxIF		TMR3IF
#define LED_UNDER_VOLTAGE_TMRxIE		TMR3IE
#define LED_UNDER_VOLTAGE_TMRxON		TMR3ON

/* Globlas -------------------------------------------------------------------*/
volatile BOOL under_volt_display_En = false;
volatile BOOL run_limit_display_en = false;
volatile Timer_Peroid_Type current_period_type = TIM_PERIOD_1s;

/**
  * @brief  Initialize TIM peripheral.
  * @param  NewState: new state of the TIMx peripheral.
  *   This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void LEDTimer_Cmd(Timer_Peroid_Type period_type, FunctionalState NewState)
{
	if(NewState != DISABLE)
	{
		if(period_type == TIM_PERIOD_0_33ms)
		{
			current_period_type = TIM_PERIOD_0_33ms;
			
			/* Disable the Interrupt sources */
        	//LED_UNDER_VOLTAGE_TMRxIE = 0;
			
			/* Disable TMRx */
			LED_UNDER_VOLTAGE_TMRxON = 0;
			
			/* Period width is 11 bit, internal RC Fast clock */
			LED_UNDER_VOLTAGE_PWMxCR0 = 0b01100010;

			/* TMRx is timer mode, prescaler is 128 */
			LED_UNDER_VOLTAGE_PWMxCR1 = 0b00111000;

			/* T = (2^0)*(2^11)*(19+1)*128/16000000 = 0.33ms */
			LED_UNDER_VOLTAGE_TxCKDIV = 19;

			LED_UNDER_VOLTAGE_TMRxH = 0x0F;
			LED_UNDER_VOLTAGE_TMRxL = 0;
			LED_UNDER_VOLTAGE_PRxL = 0xFF;

			/* Clear interrupt flag */
			LED_UNDER_VOLTAGE_TMRxIF = 0;

			/* Enable TMRx */
			LED_UNDER_VOLTAGE_TMRxON = 1;
		}
		else
		{
			current_period_type = TIM_PERIOD_1s;
			
			/* Disable the Interrupt sources */
        	//LED_UNDER_VOLTAGE_TMRxIE = 0;
			
			/* Disable TMRx */
			LED_UNDER_VOLTAGE_TMRxON = 0;
			
			/* Period width is 11 bit, internal RC Fast clock */
			LED_UNDER_VOLTAGE_PWMxCR0 = 0b01100010;

			/* TMRx is timer mode, prescaler is 128 */
			LED_UNDER_VOLTAGE_PWMxCR1 = 0b00111000;

			/* T = (2^0)*(2^11)*(60+1)*128/16000000 = 1s */
			LED_UNDER_VOLTAGE_TxCKDIV = 60;

			LED_UNDER_VOLTAGE_TMRxH = 0x0F;
			LED_UNDER_VOLTAGE_TMRxL = 0;
			LED_UNDER_VOLTAGE_PRxL = 0xFF;

			/* Clear interrupt flag */
			LED_UNDER_VOLTAGE_TMRxIF = 0;

			/* Enable TMRx */
			LED_UNDER_VOLTAGE_TMRxON = 1;
		}
	}
	else
	{
		/* Disable TMRx */
		LED_UNDER_VOLTAGE_TMRxON = 0;
	}
}

/**
  * @brief  Enables or disables the specified TIM interrupt.
  * @param  NewState: new state of the TIMx peripheral.
  *   This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void LEDTimer_INTConfig(FunctionalState NewState)
{
    if(NewState != DISABLE)
    {
        /* Enable the Interrupt sources */
        LED_UNDER_VOLTAGE_TMRxIE = 1;
		PEIE = 1;
		GIE = 1;
    }
    else
    {
        /* Disable the Interrupt sources */
        LED_UNDER_VOLTAGE_TMRxIE = 0;
    }
}

/**
  * @brief  Display under voltage status control.
   * @param  NewState: new state of the TIMx peripheral.
  *   This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void LEDTimer_DispUnderVoltCmd(FunctionalState NewState)
{
	if(NewState != DISABLE)
    {
		under_volt_display_En = true; 
    }
    else
    {
        under_volt_display_En = false;
    }

#ifdef DYNAMIC_SWITCH
	if(run_limit_display_en || under_volt_display_En)
	{

		if(current_period_type == TIM_PERIOD_1s)
		{
			LEDTimer_INTConfig(DISABLE);
			LEDTimer_Cmd(TIM_PERIOD_0_33ms, ENABLE);
			LEDTimer_INTConfig(ENABLE);
		}
	}
	else
	{
		if(current_period_type == TIM_PERIOD_0_33ms)
		{
			LEDTimer_INTConfig(DISABLE);
			LEDTimer_Cmd(TIM_PERIOD_1s, ENABLE);
			LEDTimer_INTConfig(ENABLE);
		}
	}
#endif
}

/**
  * @brief  Display under voltage status control.
   * @param  NewState: new state of the TIMx peripheral.
  *   This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void LEDTimer_DispRunLimitCmd(FunctionalState NewState)
{
	if(NewState != DISABLE)
    {
		run_limit_display_en = true; 
    }
    else
    {
        run_limit_display_en = false;
    }
	
#ifdef DYNAMIC_SWITCH
	if(run_limit_display_en || under_volt_display_En)
	{
		LEDTimer_INTConfig(DISABLE);
		LEDTimer_Cmd(TIM_PERIOD_0_33ms, ENABLE);
		LEDTimer_INTConfig(ENABLE);
	}
	else
	{
		LEDTimer_INTConfig(DISABLE);
		LEDTimer_Cmd(TIM_PERIOD_1s, ENABLE);
		LEDTimer_INTConfig(ENABLE);
	}
#endif
}

#if 0
/**
  * @brief  Led timer period dynamic control.
   * @param  None.
  * @retval None
  */
static void LEDTimer_DynamicCmd(void)
{
	if(under_volt_display_En)
	{
		LED_UnderVoltageOutput((BitAction)(1 - GPIO_ReadInputDataBit(LED_UNDER_VOLTAGE_PORT, LED_UNDER_VOLTAGE_PIN)));
	}

	if(under_volt_display_En)
	{
		LED_DisplayRunLimit();
	}
}
#endif

/**
* @brief TIM interrupt handler function.
* @param   No parameter.
* @return  void
*/
void LEDTimer_IntrHandler(void)
{
	if(LED_UNDER_VOLTAGE_TMRxIE && LED_UNDER_VOLTAGE_TMRxIF)
	{
		//LEDTimer_DynamicCmd();

		if(under_volt_display_En)
		{
			LED_UnderVoltageOutput((BitAction)(1 - GPIO_ReadInputDataBit(LED_UNDER_VOLTAGE_PORT, LED_UNDER_VOLTAGE_PIN)));
		}

		if(run_limit_display_en)
		{
			LED_DisplayRunLimit();
		}
		
		ADC_Enable(Battery_Channel_AN6);

		//GPIO_WriteBit(LED_PORT_DUTY_80, LED_PIN_DUTY_80, (BitAction)(1 - GPIO_ReadInputDataBit(LED_PORT_DUTY_80, LED_PIN_DUTY_80)));
		LED_UNDER_VOLTAGE_TMRxIF = 0;
	}
}

/******************* (C) COPYRIGHT 2017  *****END OF FILE****/


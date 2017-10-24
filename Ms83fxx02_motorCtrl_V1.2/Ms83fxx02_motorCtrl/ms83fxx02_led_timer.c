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
volatile BOOL led_timer_int_status = false;
volatile BOOL run_limit_int_status = false;

/**
  * @brief  Initialize TIM peripheral.
  * @param  NewState: new state of the TIMx peripheral.
  *   This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void LEDTimer_Cmd(FunctionalState NewState)
{
	led_timer_int_status = false;
	run_limit_int_status = false;
	
	if(NewState != DISABLE)
	{
		/* Disable TMRx */
		LED_UNDER_VOLTAGE_TMRxON = 0;
		
		/* Period width is 11 bit, internal RC Fast clock */
		LED_UNDER_VOLTAGE_PWMxCR0 = 0b01100010;

		/* TMRx is timer mode, prescaler is 128 */
		LED_UNDER_VOLTAGE_PWMxCR1 = 0b00111000;

		/* T = (2^0)*(2^11)*(19+1)*128/16000000 = 2s */
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
  * @brief  Get switch mode time status.
  * @param  none.
  * @retval None
  */
uint8_t LEDTimer_GetOperationStatus(void)
{
	return LED_UNDER_VOLTAGE_TMRxON;
}

/**
  * @brief  Get switch mode time status.
  * @param  none.
  * @retval None
  */
ITStatus LEDTimer_GetINTStatus(void)
{
	if(led_timer_int_status)
	{
		led_timer_int_status = 0;
		
		return SET;
	}
	else
	{
		return RESET;
	}
}

/**
  * @brief  Get switch mode time status.
  * @param  none.
  * @retval None
  */
ITStatus LEDTimer_GetRunLimitINTStatus(void)
{
	if(run_limit_int_status)
	{
		run_limit_int_status = 0;
		
		return SET;
	}
	else
	{
		return RESET;
	}
}


/**
* @brief TIM interrupt handler function.
* @param   No parameter.
* @return  void
*/
void LEDTimer_IntrHandler(void)
{
	if(LED_UNDER_VOLTAGE_TMRxIE && LED_UNDER_VOLTAGE_TMRxIF)
	{
		LED_UNDER_VOLTAGE_TMRxIF = 0;
		led_timer_int_status = true;
		run_limit_int_status = true;

		/* Disable TMRx */
		//LED_UNDER_VOLTAGE_TMRxON = 0;
		/* Disable the Interrupt sources */
        //LED_UNDER_VOLTAGE_TMRxIE = 0;
	}
}

/******************* (C) COPYRIGHT 2017  *****END OF FILE****/


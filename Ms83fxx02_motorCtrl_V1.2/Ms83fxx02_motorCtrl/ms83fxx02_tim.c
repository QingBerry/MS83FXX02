/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_tim.c
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-09-24
* @version	 v1.0
* *********************************************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "ms83fxx02_tim.h"

/* Defines -------------------------------------------------------------------*/
#define SW_MODE_TIMER_PWMxCR0				PWM5CR0
#define	SW_MODE_TIMER_PWMxCR1 				PWM5CR1
#define SW_MODE_TIMER_TxCKDIV				T5CKDIV
#define SW_MODE_TIMER_TMRxH					TMR5H
#define SW_MODE_TIMER_TMRxL					TMR5L
#define SW_MODE_TIMER_PRxL					PR5L
#define SW_MODE_TIMER_TMRxIF				TMR5IF
#define SW_MODE_TIMER_TMRxIE				TMR5IE
#define SW_MODE_TIMER_TMRxON				TMR5ON

/* Globlas -------------------------------------------------------------------*/
volatile uint8_t switch_mode_time_out = 0;

/**
  * @brief  Initialize TIM peripheral.
  * @param  NewState: new state of the TIMx peripheral.
  *   This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void SwitchModeTimer_Cmd(FunctionalState NewState)
{
	switch_mode_time_out = 0;
	
	if(NewState != DISABLE)
	{
		/* Disable TMRx */
		SW_MODE_TIMER_TMRxON = 0;
		/* Period width is 12 bit, internal RC Fast clock */
		SW_MODE_TIMER_PWMxCR0 = 0b01110010;

		/* TMRx is timer mode, prescaler is 128 */
		SW_MODE_TIMER_PWMxCR1 = 0b00111000;

		/* T = (2^0)*(2^12)*(59+1)*128/16000000 = 2s */
		SW_MODE_TIMER_TxCKDIV = 59;

		SW_MODE_TIMER_TMRxH = 0x0F;
		SW_MODE_TIMER_TMRxL = 0;
		SW_MODE_TIMER_PRxL = 0xFF;

		/* Clear interrupt flag */
		SW_MODE_TIMER_TMRxIF = 0;

		/* Enable TMRx */
		SW_MODE_TIMER_TMRxON = 1;
	}
	else
	{
		/* Disable TMRx */
		SW_MODE_TIMER_TMRxON = 0;
	}
}

/**
  * @brief  Enables or disables the specified TIM interrupt.
  * @param  NewState: new state of the TIMx peripheral.
  *   This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void SwitchModeTimer_INTConfig(FunctionalState NewState)
{
    if(NewState != DISABLE)
    {
        /* Enable the Interrupt sources */
        SW_MODE_TIMER_TMRxIE = 1;
		PEIE = 1;
		GIE = 1;
    }
    else
    {
        /* Disable the Interrupt sources */
        SW_MODE_TIMER_TMRxIE = 0;
    }
}

/**
  * @brief  Get switch mode time status.
  * @param  none.
  * @retval None
  */
ITStatus SwitchModeTimer_GetINTStatus(void)
{
	if(switch_mode_time_out)
	{
		switch_mode_time_out = 0;
		
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
void SwitchModeTimer_IntrHandler(void)
{
	if(SW_MODE_TIMER_TMRxIE && SW_MODE_TIMER_TMRxIF)
	{
		//RC4 = ~RC4;
		switch_mode_time_out = 1;
		SW_MODE_TIMER_TMRxIF = 0;

		/* Disable TMRx */
		SW_MODE_TIMER_TMRxON = 0;
		/* Disable the Interrupt sources */
        SW_MODE_TIMER_TMRxIE = 0;
	}
}

/******************* (C) COPYRIGHT 2017  *****END OF FILE****/


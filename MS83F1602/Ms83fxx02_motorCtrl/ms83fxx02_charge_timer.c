/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_charge_timer.c
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-10-06
* @version	 v1.0
* *********************************************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "ms83fxx02_charge_timer.h"
#include "ms83fxx02_pwr.h"

/* Defines -------------------------------------------------------------------*/
#define CHARGE_TIMER_PWMxCR0				PWM5CR0
#define	CHARGE_TIMER_PWMxCR1 				PWM5CR1
#define CHARGE_TIMER_TxCKDIV				T5CKDIV
#define CHARGE_TIMER_TMRxH					TMR5H
#define CHARGE_TIMER_TMRxL					TMR5L
#define CHARGE_TIMER_PRxL					PR5L
#define CHARGE_TIMER_TMRxIF					TMR5IF
#define CHARGE_TIMER_TMRxIE					TMR5IE
#define CHARGE_TIMER_TMRxON					TMR5ON

/* Globlas -------------------------------------------------------------------*/
// 8h = 4500*4s
volatile uint32_t charge_time_out = 0;

/**
  * @brief  Initialize TIM peripheral.
  * @param  NewState: new state of the TIMx peripheral.
  *   This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void ChargeTimer_Cmd(FunctionalState NewState)
{
	charge_time_out = 0;
	
	if(NewState != DISABLE)
	{
		/* Disable TMRx */
		CHARGE_TIMER_TMRxON = 0;
		/* Period width is 12 bit, internal RC Fast clock */
		CHARGE_TIMER_PWMxCR0 = 0b01110010;

		/* TMRx is timer mode, prescaler is 128 */
		CHARGE_TIMER_PWMxCR1 = 0b00111000;

		/* T = (2^0)*(2^12)*(119+1)*128/16000000 = 4s */
		/* T = (2^0)*(2^12)*(151+1)*128/16000000 = 5s */
		CHARGE_TIMER_TxCKDIV = 151;

		CHARGE_TIMER_TMRxH = 0x0F;
		CHARGE_TIMER_TMRxL = 0;
		CHARGE_TIMER_PRxL = 0xFF;

		/* Clear interrupt flag */
		CHARGE_TIMER_TMRxIF = 0;

		/* Enable TMRx */
		CHARGE_TIMER_TMRxON = 1;
	}
	else
	{
		/* Disable TMRx */
		CHARGE_TIMER_TMRxON = 0;
	}
}

/**
  * @brief  Enables or disables the specified TIM interrupt.
  * @param  NewState: new state of the TIMx peripheral.
  *   This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void ChargeTimer_INTConfig(FunctionalState NewState)
{
    if(NewState != DISABLE)
    {
        /* Enable the Interrupt sources */
        CHARGE_TIMER_TMRxIE = 1;
		PEIE = 1;
		GIE = 1;
    }
    else
    {
        /* Disable the Interrupt sources */
        CHARGE_TIMER_TMRxIE = 0;
    }
}

/**
  * @brief  Reset charge timer count.
  * @param  none.
  * @retval None
  */
void ChargeTimer_ResetCount(void)
{
	charge_time_out = 0; 
}

/**
  * @brief  Get switch mode time status.
  * @param  none.
  * @retval None
  */
uint32_t ChargeTimer_GetCount(void)
{
	return charge_time_out; 
}

/**
* @brief TIM interrupt handler function.
* @param   No parameter.
* @return  void
*/
void ChargeTimer_IntrHandler(void)
{
	if(CHARGE_TIMER_TMRxIE && CHARGE_TIMER_TMRxIF)
	{
		//RC4 = ~RC4;
		charge_time_out++;
		CHARGE_TIMER_TMRxIF = 0;

		/* Disable TMRx */
		//CHARGE_TIMER_TMRxON = 0;
		/* Disable the Interrupt sources */
        //CHARGE_TIMER_TMRxIE = 0;
	}
}

/******************* (C) COPYRIGHT 2017  *****END OF FILE****/


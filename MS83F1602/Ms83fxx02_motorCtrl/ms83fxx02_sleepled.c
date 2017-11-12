/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_sleepled.c
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-10-29
* @version	 v1.0
* *********************************************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "ms83fxx02_sleepled.h"

/* Defines -------------------------------------------------------------------*/

/* PWM control defines */
#define SLEEP_LED_TRISCx				TRISC3
#define SLEEP_LED_PWMxCR0				PWM4CR0
#define	SLEEP_LED_PWMxCR1 				PWM4CR1
#define SLEEP_LED_TxCKDIV				T4CKDIV
#define SLEEP_LED_TMRxH					TMR4H
#define SLEEP_LED_TMRxL					TMR4L
#define SLEEP_LED_PRxL					PR4L
#define SLEEP_LED_TMRxIF				TMR4IF
#define SLEEP_LED_TMRxON				TMR4ON
#define SLEEP_LED_PCx					PC3

/* Operation time control defines */
#define SLEEP_LED_TIM_PWMxCR0			PWM3CR0
#define	SLEEP_LED_TIM_PWMxCR1 			PWM3CR1
#define SLEEP_LED_TIM_TxCKDIV			T3CKDIV
#define SLEEP_LED_TIM_TMRxH				TMR3H
#define SLEEP_LED_TIM_TMRxL				TMR3L
#define SLEEP_LED_TIM_PRxL				PR3L
#define SLEEP_LED_TIM_TMRxIF			TMR3IF
#define SLEEP_LED_TIM_TMRxIE			TMR3IE
#define SLEEP_LED_TIM_TMRxON			TMR3ON

#define SLEEP_LED_STEP					(0xFFF/100)

/* Globals ------------------------------------------------------------------*/
volatile uint16_t sleep_led_duty = 0;
volatile BOOL sleep_led_dir = false;

/**
  * @brief  PWM4 output by PC3 whose period is 5ms.
  * @param  duty: duty value.
  * @retval None
  */
void SleepLed_Init(uint16_t duty)
{
	/* Disable output */
	SLEEP_LED_TRISCx = 1;
	
	/* PWM4 period width is 11 bit, internal RC Fast clock , PWM output */
	SLEEP_LED_PWMxCR0 = 0b11100010;

	/* TMR4 is PWM/BUZZER mode */
	SLEEP_LED_PWMxCR1 = 0b10000000;

	/* T = (2^0)*(2^11)*(77+1)/16000000 = 10ms */
	SLEEP_LED_TxCKDIV = 77;

	SLEEP_LED_TMRxH = (duty >> 8) & 0xFF;
	SLEEP_LED_TMRxL = 0;
	SLEEP_LED_PRxL = duty & 0xFF;
#if 0
	else if(status == MOTOR_MODE_2)
	{
		/* 1843 */
		SLEEP_LED_TMRxH = 0x07;
		SLEEP_LED_PRxL = 0x33;
	}
#endif

	/* Clear interrupt flag */
	SLEEP_LED_TMRxIF = 0;

	/* Enable TMR4 */
	SLEEP_LED_TMRxON = 1;
	
	while(SLEEP_LED_TMRxIF == 0);
	SLEEP_LED_TRISCx = 0;
}

/**
  * @brief  Stop PWM output.
  * @param  None
  * @retval None
  */
void SleepLed_Stop(void)
{
	/* Disable output */
	SLEEP_LED_TRISCx = 1;	
	/* Disable TMR4 */
	SLEEP_LED_TMRxON = 0;
}
/**
  * @brief  PWM4 output by PC3 whose period is 5ms.
  * @param  duty: duty value.
  * @retval None
  */
void SleepLed_ChangeDuty(void)
{
	if(sleep_led_dir)
	{
		sleep_led_duty -= SLEEP_LED_STEP;
	}
	else
	{
		sleep_led_duty += SLEEP_LED_STEP;
	}

	if(sleep_led_duty >= (0xFFF - SLEEP_LED_STEP))
	{
		sleep_led_dir = true;		 
	}

	if(sleep_led_duty <= SLEEP_LED_STEP)
	{
		sleep_led_dir = false;		 
	}
	
	
	//SleepLed_Init(sleep_led_duty);
	SLEEP_LED_TMRxH = (sleep_led_duty >> 8) & 0xFF;
	SLEEP_LED_TMRxL = 0;
	SLEEP_LED_PRxL = sleep_led_duty & 0xFF;
}

/**
  * @brief  Initialize TIM peripheral for PWM duty control.
  * @param  time: timer period.
  * @retval None
  */
void SleepLedTimer_Init(void)
{
	/* Disable TMRx */
	SLEEP_LED_TIM_TMRxON = 0;

	/* Period width is 11 bit, internal RC Fast clock */
	SLEEP_LED_TIM_PWMxCR0 = 0b01100010;
	/* TMRx is timer mode */
	SLEEP_LED_TIM_PWMxCR1 = 0b00011000;
	
	/* T = (2^0)*(2^12)*(17+1)*8/16000000 = 0.0375s */
	SLEEP_LED_TIM_TxCKDIV = 17;

	SLEEP_LED_TIM_TMRxH = 0x0F;
	SLEEP_LED_TIM_TMRxL = 0;
	SLEEP_LED_TIM_PRxL = 0xFF;
	
	/* Clear interrupt flag */
	SLEEP_LED_TIM_TMRxIF = 0;

	/* Enable TMRx */
	SLEEP_LED_TIM_TMRxON = 1;

	/* Enable the Interrupt sources */
    SLEEP_LED_TIM_TMRxIE = 1;
	PEIE = 1;
	GIE = 1;

	SleepLed_Init(SLEEP_LED_STEP);
}

/**
  * @brief  Stop sleep led timer.
  * @param None
  * @retval None
  */
void SleepLedTimer_Stop(void)
{
	/* Disable TMRx */
	SLEEP_LED_TIM_TMRxON = 0;

	/* Disable the Interrupt sources */
    SLEEP_LED_TIM_TMRxIE = 0;
}

/**
  * @brief  Enables or disables the specified TIM interrupt.
  * @param  NewState: new state of the TIMx peripheral.
  *   This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void SleepLedTimer_INTConfig(FunctionalState NewState)
{
    if (NewState != DISABLE)
    {
        /* Enable the Interrupt sources */
        SLEEP_LED_TIM_TMRxIE = 1;
		PEIE = 1;
		GIE = 1;
    }
    else
    {
        /* Disable the Interrupt sources */
        SLEEP_LED_TIM_TMRxIE = 0;
    }
}

/**
* @brief TIM interrupt handler function.
* @param   No parameter.
* @return  void
*/
void SleepLedTimer_IntrHandler(void)
{
	if(SLEEP_LED_TIM_TMRxIE && SLEEP_LED_TIM_TMRxIF)
	{
		SleepLed_ChangeDuty();
		SLEEP_LED_TIM_TMRxIF = 0;
	}
}

/******************* (C) COPYRIGHT 2017  *****END OF FILE****/


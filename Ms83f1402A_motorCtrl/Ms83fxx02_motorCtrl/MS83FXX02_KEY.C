/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_button.c
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-09-24
* @version	 v1.0
* *********************************************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "MS83Fxx02.h"
#include "ms83fxx02_key.h"

/* Globals -------------------------------------------------------------------*/

/* Record key pin value */
volatile BOOL key_status = 1;

/* Record key press status */
volatile BOOL key_press = false;

/* Record key release status */
volatile BOOL key_release = false;

volatile BOOL key_press_flag = false;

/**
  * @brief  Initialize TIM peripheral.
  * @param  period: timer period.
  * @retval None
  */
void TIM1_Init(void)
{
	TMR1ON = 0;
	/* 16.46ms *2 */
	//TMR1L = 0x00;
	//TMR1H = 0x80;
	/* 10ms */
	TMR1L = 0xF0;
	TMR1H = 0xD8;
	
	/* prescaler 1:1 */
	T1CON = 0b00000000;
	TMR1IF = 0;
	/* Enable TIM1 */
	TMR1ON = 1; 

	TMR1IE = 1;
	PEIE = 1;
	GIE = 1;
}

void KEY_DeInit(void)
{
	GPIO_InitTypeDef GPIO_InitStruct;
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN;
	GPIO_InitStruct.GPIO_Pin = KEY_PIN;
	GPIO_Init(KEY_PORT, &GPIO_InitStruct);
	
	INTE = 0;
	key_status = 1;
	key_press = false;
	key_release = false;
	key_press_flag = false;
}

void KEY_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStruct;
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN;
	GPIO_InitStruct.GPIO_Pin = KEY_PIN;
	GPIO_Init(KEY_PORT, &GPIO_InitStruct);

	/* Falling edge trigger */
	INTEDG = 0;
	GPIO_INTConfig(KEY_PORT, KEY_PIN, ENABLE);
}

FlagStatus KEY_GetReleaseStatus(void)
{
	if(key_release)
	{
		key_press = false;
		key_release = false;
		key_press_flag = false;
		return SET;
	}
	
	return RESET;
}

FlagStatus KEY_GetPressStatus(void)
{
	if(key_press)
	{
		key_press = false;
		return SET;
	}

	return RESET;
}

/**
* @brief GPIO interrupt handler function.
* @param   No parameter.
* @return  void
*/
void KEY_IntrHandler(void)
{
	if(INTE && INTF)
	{
		/* Disable interrupt */
		INTF = 0;
		INTE = 0;
		key_status = INTEDG;
		key_press_flag= true;
		TIM1_Init();
	}
}

/**
* @brief TIM interrupt handler function.
* @param   No parameter.
* @return  void
*/
void DebounceTimer_IntrHandler(void)
{
	if(TMR1IE && TMR1IF)
	{
		TMR1IF = 0;
		TMR1IE = 0;
		TMR1ON = 0;
		
		if(key_status != GPIO_ReadInputDataBit(KEY_PORT, KEY_PIN))
		{
			/* Enable key detection again */
			INTF = 0;
			INTE = 1;
			return ;
		}

		if(!key_status)
		{
			/* key press */
			key_press = true;
			
			/* Rising edge trigger */
			INTEDG = 1;
		}
		else
		{
			/* key release */
			key_release = true;

			/* Falling edge trigger */
			INTEDG = 0;
		}
		
		/* Enable key detection again */
		INTF = 0;
		INTE = 1;
	}
}

/******************* (C) COPYRIGHT 2017  *****END OF FILE****/


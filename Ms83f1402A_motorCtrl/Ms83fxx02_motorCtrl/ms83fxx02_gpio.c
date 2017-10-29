/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_gpio.c
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-09-23
* @version	 v1.0
* *********************************************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "ms83fxx02_gpio.h"

/**
  * @brief  Initializes the GPIO peripheral according to the specified
  *         parameters in the GPIO_InitStruct.
  * @param  GPIOx: Select GPIO port group. 
  * @param  GPIO_InitStruct: pointer to a GPIO_InitTypeDef structure that
  *         contains the configuration information for the specified GPIO peripheral.
  * @retval None
  */
void GPIO_Init(GPIOPort_TypeDef GPIOx, GPIO_InitTypeDef *GPIO_InitStruct)
{
	if(GPIOx == GPIOA)
	{
		if(GPIO_InitStruct->GPIO_Mode == GPIO_Mode_OUT)
		{
			/* Configure output mode */
			TRISA &= ~(GPIO_InitStruct->GPIO_Pin);
		}
		else
		{
			/* Configure input mode */
			TRISA |= GPIO_InitStruct->GPIO_Pin;
		}
	}
	else
	{
		if(GPIO_InitStruct->GPIO_Mode == GPIO_Mode_OUT)
		{
			/* Configure output mode */
			TRISC &= ~(GPIO_InitStruct->GPIO_Pin);
		}
		else
		{
			/* Configure input mode */
			TRISC |= GPIO_InitStruct->GPIO_Pin;
		}
	}
}

/**
  * @brief  Sets or clears the selected data port bit.
  * @param  GPIOx: Select GPIO port group. 
  * @param  GPIO_Pin: specifies the port bit to be written.
  *   This parameter can be GPIO_Pin_x where x can be (0..7).
  * @param  BitVal: specifies the value to be written to the selected bit.
  *   This parameter can be one of the BitAction enum values:
  *     @arg Bit_RESET: to clear the port pin
  *     @arg Bit_SET: to set the port pin
  * @retval None
  */
void GPIO_WriteBit(GPIOPort_TypeDef GPIOx, uint8_t GPIO_Pin, BitAction BitVal)
{
	if(GPIOx == GPIOA)
	{
		if (BitVal != Bit_RESET)
		{
			PORTA |= GPIO_Pin;
		}
		else
		{
			PORTA &= ~(GPIO_Pin);
		}
	}
	else
	{
		if (BitVal != Bit_RESET)
		{
			PORTC |= GPIO_Pin;
		}
		else
		{
			PORTC &= ~(GPIO_Pin);
		}
	}
}

/**
  * @brief  Reads the specified input port pin.
  * @param  GPIOx: Select GPIO port group. 
  * @param  GPIO_Pin:  specifies the port bit to read.
  *   This parameter can be GPIOA_Pin_x where x can be (0..7).
  * @retval The input port pin value.
  */
uint8_t GPIO_ReadInputDataBit(GPIOPort_TypeDef GPIOx, uint8_t GPIO_Pin)
{
    uint8_t bitstatus = RESET;

	if(GPIOx == GPIOA)
    {
	    if (PORTA & GPIO_Pin)
	    {
	        bitstatus = (uint8_t)SET;
	    }
	}
	else
	{
		if(GPIOx == GPIOC)
		{
			if (PORTC & GPIO_Pin)
		    {
		        bitstatus = (uint8_t)SET;
		    }
		}
	}
    
    return bitstatus;
}

/**
  * @brief  Enables or disables the specified GPIO interrupt.
  * @param  GPIOx: Select GPIO port group. 
  * @param  GPIO_Pin:  specifies the port bit.
  * @param  NewState: new state of the TIMx peripheral.
  *   This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void GPIO_INTConfig(GPIOPort_TypeDef GPIOx, uint8_t GPIO_Pin, FunctionalState NewState)
{
	if(GPIOx == GPIOA)
    {
	    if (NewState != DISABLE)
	    {
	        /* Enable the Interrupt sources */
	        PAIE = 1;
			GIE = 1;
			IOCA |= GPIO_Pin;
	    }
	    else
	    {
	        /* Disable the Interrupt sources */
	        IOCA &= ~GPIO_Pin;
	    }
	}

	if((GPIOx == GPIOC) && (GPIO_Pin == GPIO_Pin_1))
	{
		
		if (NewState != DISABLE)
	    {
	  		/* Configure PC1/AN5 digital IO */
			ANSEL5 = 0;
			CMCON0 |= 0x07;
	        /* Enable the Interrupt sources */
	        GIE = 1;
			INTF = 0;
			INTE = 1;
	    }
	    else
	    {
	        /* Disable the Interrupt sources */
			INTE = 0;
	    }
	}
}

/******************* (C) COPYRIGHT 2017  *****END OF FILE****/


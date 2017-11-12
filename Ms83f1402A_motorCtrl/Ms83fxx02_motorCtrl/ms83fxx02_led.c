/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_led.c
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-09-30
* @version	 v1.0
* *********************************************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "MS83Fxx02.h"
#include "ms83fxx02_led.h"

/* Defines -------------------------------------------------------------------*/

/* Globals -------------------------------------------------------------------*/

void LED_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStruct;
	
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStruct.GPIO_Pin = LED_PIN_DUTY_100;
	GPIO_Init(LED_PORT_DUTY_100, &GPIO_InitStruct);

	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStruct.GPIO_Pin = LED_PIN_DUTY_90;
	GPIO_Init(LED_PORT_DUTY_90, &GPIO_InitStruct);

	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStruct.GPIO_Pin = LED_PIN_DUTY_80;
	GPIO_Init(LED_PORT_DUTY_80, &GPIO_InitStruct);

	//GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	//GPIO_InitStruct.GPIO_Pin = LED_VCHARGE_PIN;
	//GPIO_Init(LED_VCHARGE_PORT, &GPIO_InitStruct);

	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStruct.GPIO_Pin = LED_UNDER_VOLTAGE_PIN;
	GPIO_Init(LED_UNDER_VOLTAGE_PORT, &GPIO_InitStruct);

	GPIO_WriteBit(LED_PORT_DUTY_100, LED_PIN_DUTY_100, Bit_RESET);
	GPIO_WriteBit(LED_PORT_DUTY_90, LED_PIN_DUTY_90, Bit_RESET);
	GPIO_WriteBit(LED_PORT_DUTY_80, LED_PIN_DUTY_80, Bit_RESET);

	//GPIO_WriteBit(LED_VCHARGE_PORT, LED_VCHARGE_PIN, Bit_RESET);
	GPIO_WriteBit(LED_UNDER_VOLTAGE_PORT, LED_UNDER_VOLTAGE_PIN, Bit_RESET);
}

void LED_DisplayMotorStatus(GPIOPort_TypeDef GPIOx, uint8_t GPIO_Pin)
{
	GPIO_WriteBit(LED_PORT_DUTY_100, LED_PIN_DUTY_100, Bit_RESET);
	GPIO_WriteBit(LED_PORT_DUTY_90, LED_PIN_DUTY_90, Bit_RESET);
	GPIO_WriteBit(LED_PORT_DUTY_80, LED_PIN_DUTY_80, Bit_RESET);
	GPIO_WriteBit(GPIOx, GPIO_Pin, Bit_SET);
}

void LED_DisplayRunLimit(void)
{
	GPIO_WriteBit(LED_PORT_DUTY_100, LED_PIN_DUTY_100, (BitAction)(1 - GPIO_ReadInputDataBit(LED_PORT_DUTY_100, LED_PIN_DUTY_100)));
	GPIO_WriteBit(LED_PORT_DUTY_90, LED_PIN_DUTY_90, (BitAction)(1 - GPIO_ReadInputDataBit(LED_PORT_DUTY_90, LED_PIN_DUTY_90)));
	GPIO_WriteBit(LED_PORT_DUTY_80, LED_PIN_DUTY_80, (BitAction)(1 - GPIO_ReadInputDataBit(LED_PORT_DUTY_80, LED_PIN_DUTY_80)));
}

#if 0
void LED_CloseMotorStatus(void)
{
	GPIO_WriteBit(LED_PORT_DUTY_100, LED_PIN_DUTY_100, Bit_RESET);
	GPIO_WriteBit(LED_PORT_DUTY_90, LED_PIN_DUTY_90, Bit_RESET);
	GPIO_WriteBit(LED_PORT_DUTY_80, LED_PIN_DUTY_80, Bit_RESET);
}
#endif

void LED_VoltageChargeOutput(BitAction BitVal)
{
	GPIO_WriteBit(LED_VCHARGE_PORT, LED_VCHARGE_PIN, BitVal);
}

void LED_UnderVoltageOutput(BitAction BitVal)
{
	GPIO_WriteBit(LED_UNDER_VOLTAGE_PORT, LED_UNDER_VOLTAGE_PIN, BitVal);
}

/******************* (C) COPYRIGHT 2017  *****END OF FILE****/


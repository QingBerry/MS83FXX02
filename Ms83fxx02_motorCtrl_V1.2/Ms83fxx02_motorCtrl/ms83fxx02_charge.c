/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_charge.c
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
#include "ms83fxx02_charge.h"

/* Defines -------------------------------------------------------------------*/
#define CHARGE_VALID_THRESHOLD		30//60
#define CHARGE_VALID_CHECK_COUNT	50//100

/* Globals -------------------------------------------------------------------*/
uint8_t charge_detect_count = 0;

void ChargeDetect_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStruct;

	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN;
	GPIO_InitStruct.GPIO_Pin = CHARGE_DETECT_PIN;
	GPIO_Init(CHARGE_DETECT_PORT, &GPIO_InitStruct);

	GPIO_ReadInputDataBit(CHARGE_DETECT_PORT, CHARGE_DETECT_PIN);
	GPIO_INTConfig(CHARGE_DETECT_PORT, CHARGE_DETECT_PIN, ENABLE);
}

void ChargeCtrl_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStruct;

	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStruct.GPIO_Pin = CHARGE_CTRL_PIN;
	GPIO_Init(CHARGE_CTRL_PORT, &GPIO_InitStruct);
	GPIO_WriteBit(CHARGE_CTRL_PORT, CHARGE_CTRL_PIN, Bit_RESET);
}

void Charge_Init(void)
{
	ChargeDetect_Init();
	ChargeCtrl_Init();
}

void ChargeCtrl_Output(BitAction BitVal)
{
	GPIO_WriteBit(CHARGE_CTRL_PORT, CHARGE_CTRL_PIN, BitVal);
}

uint8_t ChargeDetect_GetStatus(void)
{
	uint32_t i = CHARGE_VALID_CHECK_COUNT;

	while(i--)
	{
		if(1 == GPIO_ReadInputDataBit(CHARGE_DETECT_PORT, CHARGE_DETECT_PIN))
		{
			charge_detect_count++;
			if(charge_detect_count >= CHARGE_VALID_THRESHOLD)
			{
				charge_detect_count = 0;
				return true;
			}
		}
	}

	return false;
}

void ChargeDetect_IntrHandler(void)
{
	if(PAIE & PAIF)
	{
		GPIO_ReadInputDataBit(CHARGE_DETECT_PORT, CHARGE_DETECT_PIN);
		//GPIO_INTConfig(CHARGE_DETECT_PORT, CHARGE_DETECT_PIN, DISABLE);
		PAIF = 0;
	}
}

/******************* (C) COPYRIGHT 2017  *****END OF FILE****/


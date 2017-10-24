/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_led.h
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-09-30
* @version	 v1.0
* *********************************************************************************************************
*/

#ifndef __MS83FXX02_LED_H
#define __MS83FXX02_LED_H

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "ms83fxxxx.h"
#include "MS83Fxx02.h"
#include "ms83fxx02_gpio.h"
#include "ms83fxx02_config.h"

/* External function -----------------------------------------------------------*/

void LED_Init(void);
void LED_DisplayMotorStatus(GPIOPort_TypeDef GPIOx, uint8_t GPIO_Pin);
void LED_DisplayRunLimit(void);
void LED_CloseMotorStatus(void);
void LED_VoltageChargeOutput(BitAction BitVal);
void LED_UnderVoltageOutput(BitAction BitVal);

#ifdef __cplusplus
}
#endif

#endif /*__MS83FXX02_LED_H*/

/******************* (C) COPYRIGHT 2017 *****END OF FILE****/


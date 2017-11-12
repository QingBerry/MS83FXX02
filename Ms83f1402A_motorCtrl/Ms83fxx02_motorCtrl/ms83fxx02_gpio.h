/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_gpio.h
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-09-23
* @version	 v1.0
* *********************************************************************************************************
*/

#ifndef __MS83FXX02_GPIO_H
#define __MS83FXX02_GPIO_H

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "MS83Fxx02.h"
#include "ms83fxxxx.h"

/* Defines ------------------------------------------------------------------*/

/** 
  * @brief GPIO port definition 
  */
typedef enum
{
	GPIOA  = 0x00, 	/*!< GPIOA port */
	GPIOC  = 0x01,	/*!< GPIOC port */
}GPIOPort_TypeDef;

/** 
  * @brief GPIO_pins_define GPIO Pins Define 
  */

#define GPIO_Pin_0                 ((uint8_t)0x00000001)  /*!< Pin 0 selected    */
#define GPIO_Pin_1                 ((uint8_t)0x00000002)  /*!< Pin 1 selected    */
#define GPIO_Pin_2                 ((uint8_t)0x00000004)  /*!< Pin 2 selected    */
#define GPIO_Pin_3                 ((uint8_t)0x00000008)  /*!< Pin 3 selected    */
#define GPIO_Pin_4                 ((uint8_t)0x00000010)  /*!< Pin 4 selected    */
#define GPIO_Pin_5                 ((uint8_t)0x00000020)  /*!< Pin 5 selected    */
#define GPIO_Pin_6                 ((uint8_t)0x00000040)  /*!< Pin 6 selected    */
#define GPIO_Pin_7                 ((uint8_t)0x00000080)  /*!< Pin 7 selected    */

/** 
  * @brief GPIO mode enumeration 
  */

typedef enum
{
    GPIO_Mode_IN   = 0x00, /*!< GPIO Input Mode */
    GPIO_Mode_OUT  = 0x01, /*!< GPIO Output Mode */
}GPIOMode_TypeDef;

/** 
  * @brief  Bit_SET and Bit_RESET enumeration  
  */
  
typedef enum
{ 
  Bit_RESET = 0,
  Bit_SET
}BitAction;

/** 
  * @brief GPIO Init structure definition
  */

typedef struct
{
	uint8_t 			GPIO_Pin;
	GPIOMode_TypeDef 	GPIO_Mode;
}GPIO_InitTypeDef;

/* Exported function ------------------------------------------------------*/

void GPIO_Init(GPIOPort_TypeDef GPIOx, GPIO_InitTypeDef *GPIO_InitStruct);
void GPIO_WriteBit(GPIOPort_TypeDef GPIOx, uint8_t GPIO_Pin, BitAction BitVal);
uint8_t GPIO_ReadInputDataBit(GPIOPort_TypeDef GPIOx, uint8_t GPIO_Pin);
void GPIO_INTConfig(GPIOPort_TypeDef GPIOx, uint8_t GPIO_Pin, FunctionalState NewState);

#ifdef __cplusplus
}
#endif

#endif /*__MS83FXX02_GPIO_H*/

/******************* (C) COPYRIGHT 2017 *****END OF FILE****/


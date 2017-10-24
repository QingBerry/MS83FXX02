/**
*********************************************************************************************************
*               Copyright(c) 2017. All rights reserved.
**********************************************************************************************************
* @file     ms83fxx02_config.h
* @brief    
* @details   
* @author   elliot chen
* @date     2017-09-26
* @version  v1.0
*********************************************************************************************************
*/

#ifndef __MS83FXX02_CONFIG_H
#define __MS83FXX02_CONFIG_H
    
#ifdef __cplusplus
    extern "C"  {
#endif      /* __cplusplus */

/* Includes ------------------------------------------------------------------*/
#include "ms83fxx02_gpio.h"

/** 
  * @brief  button pin definition   
  */

/* Battery voltage collection */
#define Battery_Channel_AN6				(0x06)

#define Battery_Threshold_1_3_4V		686//415
#define Battery_Threshold_1V			512//301
#define Battery_Threshols_0_9V			460//271

#define MOTOR_OPER_TOTAL_COUNT			120

/* Motor output pin is PC4 */

/* Key pin */
#define KEY_PORT						GPIOC
#define KEY_PIN							GPIO_Pin_1

#define BATTERY_DETECT_PORT				GPIOC
#define BATTERY_DETECT_PIN				GPIO_Pin_2

#define CHARGE_DETECT_PORT				GPIOA
#define CHARGE_DETECT_PIN				GPIO_Pin_4

#define CHARGE_CTRL_PORT				GPIOA
#define CHARGE_CTRL_PIN					GPIO_Pin_7

/* Add new LED */
#define LED_PORT_DUTY_100				GPIOA
#define LED_PIN_DUTY_100				GPIO_Pin_2

#define LED_PORT_DUTY_90				GPIOA
#define LED_PIN_DUTY_90					GPIO_Pin_3

#define LED_PORT_DUTY_80				GPIOC
#define LED_PIN_DUTY_80					GPIO_Pin_0

#define LED_VCHARGE_PORT				GPIOC
#define LED_VCHARGE_PIN					GPIO_Pin_3

#define LED_UNDER_VOLTAGE_PORT			GPIOC
#define LED_UNDER_VOLTAGE_PIN			GPIO_Pin_3

/** 
  * @brief  EEPROM data store address definition   
  */

#define EEPROM_DEVICE_STORE_FLAG_ADDR	0x16
#define EEPROM_Set_STORE_RESTORE_FLAG	0x01

#define EEPROM_DEVICE_MODE_ADDR			0x11

/* motor */
#define EEPROM_MOTOR_STATUS_ADDR		0x12
#define EEPROM_MOTOR_INTR_COUNT_ADDR 	0x13
#define EEPROM_MOTOR_OPER_RECORD_ADDR	0x14
#define EEPROM_MOTOR_TIM_RUN_FLAG_ADDR	0x15

#ifdef __cplusplus
}
#endif

#endif /* !defined (__MS83FXX02_CONFIG_H) */

/******************* (C) COPYRIGHT 2017 ****************************END OF FILE****/


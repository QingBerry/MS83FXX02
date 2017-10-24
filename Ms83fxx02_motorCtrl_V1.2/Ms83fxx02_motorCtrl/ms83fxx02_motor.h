/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_motor.h
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-09-23
* @version	 v1.0
* *********************************************************************************************************
*/

#ifndef __MS83FXX02_MOTOR_H
#define __MS83FXX02_MOTOR_H

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "MS83Fxx02.h"
#include "ms83fxxxx.h"
#include "ms83fxx02_key.h"
#include "ms83fxx02_led.h"
#include "ms83fxx02_tim.h"

/* Defines ------------------------------------------------------------------*/

/** 
  * @brief  Motor operation status  
  */
typedef enum
{
	MOTOR_MODE_STOP			= 1,
	MOTOR_MODE_DUTY_100		= 2,
	MOTOR_MODE_DUTY_90		= 3,
	MOTOR_MODE_DUTY_80		= 4,
}MOTOR_STATUS;

/** 
  * @brief  Motor operation time  
  */
typedef enum
{
	MotorOperationTimer_30s	 = 1,
	MotorOperationTimer_0_3s = 2,
	MotorOperationTimer_8s = 3,
}MOTOR_OPERATION_TIME;

extern volatile MOTOR_STATUS motor_status;
/* Exported functions ---------------------------------------------------------*/
void Motor_Stop(void);
void Motor_SetStatus(MOTOR_STATUS status);
MOTOR_STATUS Motor_GetStatus(void);
BOOL Motor_CheckRunLimit(void);
void MotorOperationTimer_Stop(void);
void Motor_HandleStatusChangeEvt(MOTOR_STATUS status);
void MotorOperTimer_IntrHandler(void);
void MotorOperationTimer_Init(MOTOR_OPERATION_TIME time);
void EEPROM_StoreMotorData(void);
void EEPROM_RestoreMotorData(void);

#ifdef __cplusplus
}
#endif

#endif /*__MS83FXX02_MOTOR_H*/

/******************* (C) COPYRIGHT 2017 *****END OF FILE****/


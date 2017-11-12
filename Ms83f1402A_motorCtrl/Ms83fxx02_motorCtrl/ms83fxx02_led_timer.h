/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_led_timer.h
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-09-24
* @version	 v1.0
* *********************************************************************************************************
*/

#ifndef __MS83FXX02_LED_TIMER_H
#define __MS83FXX02_LED_TIMER_H

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "MS83Fxx02.h"
#include "ms83fxxxx.h"

/* Defines ------------------------------------------------------------------*/

/** 
  * @brief  led timer timing type  
  */
typedef enum
{
	TIM_PERIOD_1s		= 1,
	TIM_PERIOD_0_33ms	= 2,
}Timer_Peroid_Type;

/* Exported function ----------------------------------------------------------*/
void LEDTimer_Cmd(Timer_Peroid_Type period_type, FunctionalState NewState);
void LEDTimer_INTConfig(FunctionalState NewState);
void LEDTimer_DispUnderVoltCmd(FunctionalState NewState);
void LEDTimer_DispRunLimitCmd(FunctionalState NewState);
void LEDTimer_IntrHandler(void);

#ifdef __cplusplus
}
#endif

#endif /*__MS83FXX02_LED_TIMER_H*/

/******************* (C) COPYRIGHT 2017 *****END OF FILE****/


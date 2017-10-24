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

/* Exported function ----------------------------------------------------------*/
void LEDTimer_Cmd(FunctionalState NewState);
void LEDTimer_INTConfig(FunctionalState NewState);
uint8_t LEDTimer_GetOperationStatus(void);;
ITStatus LEDTimer_GetINTStatus(void);
ITStatus LEDTimer_GetRunLimitINTStatus(void);
void LEDTimer_IntrHandler(void);

#ifdef __cplusplus
}
#endif

#endif /*__MS83FXX02_LED_TIMER_H*/

/******************* (C) COPYRIGHT 2017 *****END OF FILE****/


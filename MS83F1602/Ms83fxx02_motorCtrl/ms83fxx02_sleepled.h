/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_sleepled.h
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-10-29
* @version	 v1.0
* *********************************************************************************************************
*/

#ifndef __MS83FXX02_SLEEP_LED_H
#define __MS83FXX02_SLEEP_LED_H

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "MS83Fxx02.h"
#include "ms83fxxxx.h"

/* Defines ------------------------------------------------------------------*/

/* Exported functions ---------------------------------------------------------*/

void SleepLedTimer_Init(void);
void SleepLedTimer_Stop(void);
void SleepLedTimer_IntrHandler(void);

#ifdef __cplusplus
}
#endif

#endif /*__MS83FXX02_SLEEP_LED_H*/

/******************* (C) COPYRIGHT 2017 *****END OF FILE****/


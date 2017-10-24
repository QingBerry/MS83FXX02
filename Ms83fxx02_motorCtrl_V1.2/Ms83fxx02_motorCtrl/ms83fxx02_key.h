/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_key.h
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-09-24
* @version	 v1.0
* *********************************************************************************************************
*/

#ifndef __MS83FXX02_KEY_H
#define __MS83FXX02_KEY_H

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "ms83fxxxx.h"
#include "MS83Fxx02.h"
#include "ms83fxx02_tim.h"
#include "ms83fxx02_gpio.h"
#include "ms83fxx02_config.h"

/* Exrternal variables ---------------------------------------------------------*/
void KEY_DeInit(void);
void KEY_Init(void);
FlagStatus KEY_GetPressStatus(void);
FlagStatus KEY_GetReleaseStatus(void);
void DebounceTimer_IntrHandler(void);
void KEY_IntrHandler(void);

#ifdef __cplusplus
}
#endif

#endif /*__MS83FXX02_KEY_H*/

/******************* (C) COPYRIGHT 2017 *****END OF FILE****/


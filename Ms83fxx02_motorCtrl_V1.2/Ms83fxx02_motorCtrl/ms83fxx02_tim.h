/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_tim.h
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-09-24
* @version	 v1.0
* *********************************************************************************************************
*/

#ifndef __MS83FXX02_TIM_H
#define __MS83FXX02_TIM_H

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "MS83Fxx02.h"
#include "ms83fxxxx.h"

/* Exported function ----------------------------------------------------------*/
void SwitchModeTimer_Cmd(FunctionalState NewState);
void SwitchModeTimer_INTConfig(FunctionalState NewState);
ITStatus SwitchModeTimer_GetINTStatus(void);
void SwitchModeTimer_IntrHandler(void);

#ifdef __cplusplus
}
#endif

#endif /*__MS83FXX02_TIM_H*/

/******************* (C) COPYRIGHT 2017 *****END OF FILE****/


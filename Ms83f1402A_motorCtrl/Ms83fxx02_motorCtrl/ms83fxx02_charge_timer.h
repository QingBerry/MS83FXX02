/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_charge_timer.h
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-10-06
* @version	 v1.0
* *********************************************************************************************************
*/

#ifndef __MS83FXX02_CHARGE_TIMER_H
#define __MS83FXX02_CHARGE_TIMER_H

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "MS83Fxx02.h"
#include "ms83fxxxx.h"

/* Exported function ----------------------------------------------------------*/
void ChargeTimer_Cmd(FunctionalState NewState);
void ChargeTimer_INTConfig(FunctionalState NewState);
void ChargeTimer_ResetCount(void);
uint32_t ChargeTimer_GetCount(void);
void ChargeTimer_IntrHandler(void);

#ifdef __cplusplus
}
#endif

#endif /*__MS83FXX02_CHARGE_TIMER_H*/

/******************* (C) COPYRIGHT 2017 *****END OF FILE****/


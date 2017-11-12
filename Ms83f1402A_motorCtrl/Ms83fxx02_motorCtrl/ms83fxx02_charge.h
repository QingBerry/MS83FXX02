/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_charge.h
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-09-30
* @version	 v1.0
* *********************************************************************************************************
*/

#ifndef __MS83FXX02_CHARGE_H
#define __MS83FXX02_CHARGE_H

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "MS83Fxx02.h"
#include "ms83fxxxx.h"
#include "ms83fxx02_gpio.h"
#include "ms83fxx02_config.h"

/* External function -----------------------------------------------------------*/

void Charge_Init(void);
void ChargeCtrl_Output(BitAction BitVal);
uint8_t ChargeDetect_GetStatus(void);
void ChargeDetect_IntrHandler(void);

#ifdef __cplusplus
}
#endif

#endif /*__MS83FXX02_CHARGE_H*/

/******************* (C) COPYRIGHT 2017 *****END OF FILE****/


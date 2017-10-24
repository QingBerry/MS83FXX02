/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_eeprom.h
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-10-01
* @version	 v1.0
* *********************************************************************************************************
*/

#ifndef __MS83FXX02_EEPROM_H
#define __MS83FXX02_EEPROM_H

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "ms83fxxxx.h"
#include "MS83Fxx02.h"
#include "ms83fxx02_config.h"

/* External function -----------------------------------------------------------*/
uint8_t EEPROM_Read(uint8_t addr);
void EEPROM_Write(uint8_t addr, uint8_t data);
void EEPROM_Init(void);

#ifdef __cplusplus
}
#endif

#endif /*__MS83FXX02_EEPROM_H*/

/******************* (C) COPYRIGHT 2017 *****END OF FILE****/


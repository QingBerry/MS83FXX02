/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_pwr.h
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-10-01
* @version	 v1.0
* *********************************************************************************************************
*/

#ifndef __MS83FXX02_PWR_H
#define __MS83FXX02_PWR_H

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "ms83fxxxx.h"
#include "MS83Fxx02.h"
#include "ms83fxx02_config.h"

/**
 * @brief device operation mode type
 */
typedef enum
{
	RUN_MODE 	= 0,
	CHARGE_MODE = 1,
	SLEEP_MODE 	= 2,
}DEVICE_MODE_Type;

/* External function -----------------------------------------------------------*/
void ADC_Init(uint8_t channel);
uint16_t ADC_ReadData(uint8_t channel);
DEVICE_MODE_Type GetDeviceMode(void);
void SetDeviceMode(DEVICE_MODE_Type mode);
void TIM1_Init(void);
uint8_t EEPROM_GetFlag(void);
void EEPROM_RestoreDeviceModeData(void);
void Battery_Detect(void);

void EEPROM_StoreModeData(void);
void EEPROM_SetFlag(void);


#ifdef __cplusplus
}
#endif

#endif /*__MS83FXX02_PWR_H*/

/******************* (C) COPYRIGHT 2017 *****END OF FILE****/


/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_eeprom.c
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-10-01
* @version	 v1.0
* *********************************************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "ms83fxx02_eeprom.h"

/* Defines -------------------------------------------------------------------*/

/* Globals -------------------------------------------------------------------*/

void EEPROM_Init(void)
{
	EEPROM_Write(0x55, 0xAA);
	EEPROM_Write(0x55, 0xAA);
}
uint8_t EEPROM_Read(uint8_t addr)
{
	uint8_t data = 0;

	EEADR = addr;
	RD = 1;
	data = EEDAT;
	RD = 0;
	return data;
}

void EEPROM_Write(uint8_t addr, uint8_t data)
{
	EEADR = addr;
	asm("nop");
	EEDAT = data;
	EECON1 = 0x34;
	WR = 1;
	asm("nop");	
	asm("nop");
	asm("nop");

	while(WR == 1);
	WREN1 = 0;
	WREN2 = 0;
	WREN3 = 0;
}

/******************* (C) COPYRIGHT 2017  *****END OF FILE****/


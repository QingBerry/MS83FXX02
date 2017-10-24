/**
*********************************************************************************************************
*				Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file 	   ms83fxx02_pwr.c
* @brief	  
* @details	 
* @author	 elliot chen
* @mailbox	chenxishanglu@163.com
* @date 	  	2017-10-01
* @version	 v1.0
* *********************************************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "MS83Fxx02.h"
#include "ms83fxx02_pwr.h"
#include "ms83fxx02_led.h"
#include "ms83fxx02_eeprom.h"
#include "ms83fxx02_led_timer.h"
#include "ms83fxx02_motor.h"

/* Defines -------------------------------------------------------------------*/
#define BATTERY_SAMPLE_MAX_COUNT	5

/* Globals -------------------------------------------------------------------*/

volatile DEVICE_MODE_Type device_mode = RUN_MODE;

volatile uint8_t battery_sample_count = 0;

volatile uint16_t battery_value[BATTERY_SAMPLE_MAX_COUNT];

/**
  * @brief  Get device mode.
  * @param   none.
  * @return  device mode.
  */
DEVICE_MODE_Type GetDeviceMode(void)
{
	return device_mode;
}

/**
  * @brief  Set device mode.
  * @param   mode: device mode.
  * @return  none.
  */
void SetDeviceMode(DEVICE_MODE_Type mode)
{
	device_mode = mode;
}

/**
  * @brief  Software time delya.
  * @param   delay_us: delay time.
  * @return  none.
  */
void delay_us(uint32_t delay_us)
{
	uint32_t i = 0;
	for(i= 0; i<delay_us; i++)
	{
		asm("nop");
		asm("nop");
		asm("nop");
		asm("nop");
	}
}

void ADC_Init(uint8_t channel)
{
	/* Select channel */
	ANSEL |= (0x01 << channel);

	TRISC |= 0b00000100;

	/* ADC data right alignmnent */
	ADCON0 = 0b10100000;

	/* ADC Convert clock = Fosc /16 */
	ADCON1 = 0b01010000;
}

uint16_t ADC_ReadData(uint8_t channel)
{
	uint16_t battery_value = 0;

	ADCON0 |= (channel << 2);

	/* right alignment , enable ADC */
	ADCON0 |= 0b10000001; 
	delay_us(10);

	GO_DONE = 1;
	while(GO_DONE == 1){;}

	battery_value = ADRESH;
	battery_value = (battery_value << 8) | ADRESL;
	
	asm("nop");

	/* Disable ADC */
	ADON = 0;

	return battery_value;
}

void EEPROM_SetFlag(void)
{
	EEPROM_Write(EEPROM_DEVICE_STORE_FLAG_ADDR, EEPROM_Set_STORE_RESTORE_FLAG);
}

uint8_t EEPROM_GetFlag(void)
{
	return EEPROM_Read(EEPROM_DEVICE_STORE_FLAG_ADDR);
}

void EEPROM_StoreModeData(void)
{
	EEPROM_Write(EEPROM_DEVICE_MODE_ADDR, device_mode);
}

void EEPROM_RestoreDeviceModeData(void)
{
	device_mode = EEPROM_Read(EEPROM_DEVICE_MODE_ADDR);
}

void Battery_Detect(void)
{
	uint8_t i = 0;
	DEVICE_MODE_Type mode = RUN_MODE;
	uint32_t adc_data = 0;	

	battery_value[battery_sample_count++] = ADC_ReadData(Battery_Channel_AN6);

	if(battery_sample_count < BATTERY_SAMPLE_MAX_COUNT)
	{
		return ;
	}

	battery_sample_count = 0;
	for(i=0; i<BATTERY_SAMPLE_MAX_COUNT; i++)
	{
		adc_data += battery_value[i];  
	}
	adc_data = adc_data / BATTERY_SAMPLE_MAX_COUNT;
	
	mode = GetDeviceMode();
	
	if(mode == RUN_MODE)
	{
		if(adc_data < Battery_Threshols_0_9V)
		{
			//<0.9v close output, enter sleep mode
			// save data
			EEPROM_SetFlag();
			EEPROM_StoreModeData();
			EEPROM_StoreMotorData();
			LED_UnderVoltageOutput(Bit_RESET);
			//SetDeviceMode(SLEEP_MODE);
			/* Go to sleep mode */
			asm("SLEEP");
		}
		else if(adc_data < Battery_Threshold_1V)
		{
			//<1.1v lower voltage led 3Hz

			if(LEDTimer_GetOperationStatus() == 0)
			{
				/* Initialize LED control timer */
				LEDTimer_Cmd(ENABLE);
				LEDTimer_INTConfig(ENABLE);
			}

			if(LEDTimer_GetINTStatus())
			{
				LED_UnderVoltageOutput((BitAction)(1 - GPIO_ReadInputDataBit(LED_UNDER_VOLTAGE_PORT, LED_UNDER_VOLTAGE_PIN)));
			}
		}
		else
		{
			LED_UnderVoltageOutput(Bit_RESET);
			/* Initialize LED control timer */
			LEDTimer_Cmd(DISABLE);
			LEDTimer_INTConfig(DISABLE);
			SetDeviceMode(RUN_MODE);
		}
	}
	else 
	{
		if(mode == CHARGE_MODE)
		{
			// battery detect in charge mode
			if(adc_data > Battery_Threshold_1_3_4V)
			{
				//LED_VoltageChargeOutput(Bit_SET);
				GPIO_WriteBit(LED_PORT_DUTY_80, LED_PIN_DUTY_80, Bit_SET);
			}
		}
	}
}

/******************* (C) COPYRIGHT 2017  *****END OF FILE****/


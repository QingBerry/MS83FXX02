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
#define BATTERY_SAMPLE_MAX_COUNT	10
#define BATTERY_SAMPLE_COUNT_MASK	(BATTERY_SAMPLE_MAX_COUNT - 1)

/* Globals -------------------------------------------------------------------*/

volatile DEVICE_MODE_Type device_mode = RUN_MODE;

volatile uint8_t battery_sample_count = 0;

volatile uint16_t battery_value[BATTERY_SAMPLE_MAX_COUNT];

volatile BOOL battery_handle_flag = false;

BOOL detect_under_voltage = false;

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

	/* ADC Convert clock = Fosc /16 */
	ADCON1 = 0b01010000;

	/* ADC data right alignmnent */
	ADCON0 = 0b10100000;
	
	ADIE = 1;
}

#if 0
uint16_t ADC_ReadData(uint8_t channel)
{
	uint16_t battery_value = 0;

	ADCON0 |= (channel << 2);

	/* Enable ADC */
	ADON = 1;
	delay_us(10);

	GO_DONE = 1;
	while(GO_DONE == 1){;}

	battery_value = ADRESH & 0x03;
	battery_value = (battery_value << 8) | ADRESL;
	
	asm("nop");

	/* Disable ADC */
	ADON = 0;

	return battery_value;
}
#else

/**
* @brief Enable ADC.
* @param  channel: ADC channel.
* @return  ADC data
*/
void ADC_Enable(uint8_t channel)
{
	ADCON0 |= (channel << 2);
	/* Enable ADC */
	ADON = 1;
	asm("nop");
	asm("nop");

	//delay_us(10);
	GO_DONE = 1;
}

/**
* @brief ADC read data function.
* @param   No parameter.
* @return  ADC data
*/
uint16_t ADC_ReadData(void)
{
	uint16_t battery_value = 0;

	battery_value = ADRESH & 0x03;
	battery_value = (battery_value << 8) | ADRESL;

	/* Disable ADC */
	ADON = 0;
	return battery_value;
}
#endif

/**
* @brief ADC interrupt handler function.
* @param   No parameter.
* @return  void
*/
void ADC_IntrHandler(void)
{
	if(ADIE && ADIF)
	{
		battery_value[battery_sample_count++] = ADC_ReadData();

		if(battery_sample_count >= BATTERY_SAMPLE_MAX_COUNT)
		{
			battery_sample_count = 0;
			battery_handle_flag = true;
		}
		ADIF = 0;
	}
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

uint32_t Battery_HandleData(void)
{
	uint8_t i = 0;
	uint32_t average_data = 0;
	uint16_t temp1 = battery_value[0];
	uint16_t temp2 = battery_value[0];
	
	for(i=0; i<BATTERY_SAMPLE_MAX_COUNT; i++)
	{
		if(temp1 > battery_value[i])
		{
			temp2 = temp1;
			temp1 = battery_value[i];
		}
		average_data += battery_value[i];
	}
	
	average_data = (average_data - temp1 - temp2) / (BATTERY_SAMPLE_MAX_COUNT - 2);

	return average_data;
}

void Battery_Detect(void)
{
	uint32_t adc_data = 0;
	DEVICE_MODE_Type mode = RUN_MODE;	

	if(!battery_handle_flag)
	{
		return;
	}
	else
	{
		adc_data = Battery_HandleData();
	}

	mode = GetDeviceMode();
	
	if(mode == RUN_MODE)
	{
#if 1
		if(adc_data < Battery_Threshols_0_9V)
		{
			//<0.9v close output, enter sleep mode
			// save data
			EEPROM_SetFlag();
			EEPROM_StoreModeData();
			EEPROM_StoreMotorData();
			LED_UnderVoltageOutput(Bit_RESET);
#if 1			
			/* Initialize all LEDs */
			LED_Init();
			KEY_DeInit();
			Motor_Stop();
			Motor_SetStatus(MOTOR_MODE_STOP);
			MotorOperationTimer_Stop();
#endif
			//GPIO_WriteBit(LED_PORT_DUTY_100, LED_PIN_DUTY_100, (BitAction)(1 - GPIO_ReadInputDataBit(LED_PORT_DUTY_100, LED_PIN_DUTY_100)));
			//SetDeviceMode(SLEEP_MODE);
			/* Go to sleep mode */
			asm("SLEEP");
			
		}
#endif
		else if(adc_data < Battery_Threshold_1V)
		{
			//<1.1v lower voltage led 3Hz
			LEDTimer_DispUnderVoltCmd(ENABLE);
			detect_under_voltage = true;
			//GPIO_WriteBit(LED_PORT_DUTY_90, LED_PIN_DUTY_90, (BitAction)(1 - GPIO_ReadInputDataBit(LED_PORT_DUTY_90, LED_PIN_DUTY_90)));
		}
#if 1
		else
		{
			if(detect_under_voltage)
			{
				if(adc_data > Battery_Threshold_1_2V)
				{
					detect_under_voltage = false;
					LED_UnderVoltageOutput(Bit_RESET);
					/* Disable LED display */
					LEDTimer_DispUnderVoltCmd(DISABLE);
				}
			}
		}
#endif
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


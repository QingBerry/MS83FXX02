/**
*********************************************************************************************************
*               Copyright(c) 2017. All rights reserved.
*********************************************************************************************************
* @file        ms83fxx02.h
* @brief      common header file
* @details   
* @author    elliot chen
* @mailbox  chenxishanglu@163.com
* @date       2017-09-23
* @version   v1.0
* *********************************************************************************************************
*/

#ifndef MS83FXXXX_H
#define MS83FXXXX_H

#ifdef __cplusplus
extern "C" {
#endif

/** @addtogroup Exported_types
  * @{
  */  

typedef enum 
{
	RESET = 0, 
	SET = !RESET
} FlagStatus, ITStatus;

typedef enum
{
	DISABLE = 0,
	ENABLE = 1
} FunctionalState;

#define true  1
#define false 0

#define IS_FUNCTIONAL_STATE(STATE) (((STATE) == DISABLE) || ((STATE) == ENABLE))

/** @} */ /* End of group Exported_types */

#ifdef __cplusplus
#define   __I     volatile             /*!< Defines 'read only' permissions                 */
#else
#define   __I     volatile const       /*!< Defines 'read only' permissions                 */
#endif
#define     __O     volatile             /*!< Defines 'write only' permissions             */
#define     __IO    volatile             /*!< Defines 'read / write' permissions          */

typedef unsigned int   uint32_t;
typedef unsigned short uint16_t;
typedef unsigned char  uint8_t;
typedef int            int32_t;
typedef unsigned char  BOOL;


/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Uncomment the line below to expanse the "assert_param" macro in the 
   Standard Peripheral Library drivers code */
//#define USE_FULL_ASSERT   1

/* Exported macro ------------------------------------------------------------*/
#ifdef  USE_FULL_ASSERT
/**
  * @brief  The assert_param macro is used for function's parameters check.
  * @param  expr: If expr is false, it calls assert_failed function which reports 
  *         the name of the source file and the source line number of the call 
  *         that failed. If expr is true, it returns no value.
  * @retval None
  */
  #define assert_param(expr) ((expr) ? (void)0 : io_assert_failed((uint8_t *)__FILE__, __LINE__))
/* Exported functions ------------------------------------------------------- */
  void io_assert_failed(uint8_t* file, uint32_t line);
#else
  #define assert_param(expr) ((void)0)
#endif

#ifdef __cplusplus
}
#endif


#endif  /* MS83FXXXX_H */


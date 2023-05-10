








#ifndef _CHIP_SMU_PD_H
#define _CHIP_SMU_PD_H


#include "chip_memmap.h"


#define CHIP_SMU_PD_CORE_CTRL					(MEM_BASE_SMU_PD + 0x04)
#define CHIP_SMU_PD_BOOT_MODE				(MEM_BASE_SMU_PD + 0x08)
#define CHIP_SMU_PD_CLK_ENABLE_0				(MEM_BASE_SMU_PD + 0x0C)
#define CHIP_SMU_PD_CLK_ENABLE_1				(MEM_BASE_SMU_PD + 0x10)
#define CHIP_SMU_PD_SW_RESET					(MEM_BASE_SMU_PD + 0x14)
#define CHIP_SMU_PD_SPI_CONFIG				(MEM_BASE_SMU_PD + 0x1C)
#define CHIP_SMU_PD_SDIO_CONFIG_0			(MEM_BASE_SMU_PD + 0x20)
#define CHIP_SMU_PD_SDIO_CONFIG_1			(MEM_BASE_SMU_PD + 0x24)
#define CHIP_SMU_PD_SDIO_HOST					(MEM_BASE_SMU_PD + 0x28)
#define CHIP_SMU_PD_SDIO_SLAVE				(MEM_BASE_SMU_PD + 0x2C)
#define CHIP_SMU_PD_PIN_MUX_0					(MEM_BASE_SMU_PD + 0x30)
#define CHIP_SMU_PD_PIN_MUX_1					(MEM_BASE_SMU_PD + 0x34)
#define CHIP_SMU_PD_PIN_MUX_2					(MEM_BASE_SMU_PD + 0x38)
#define CHIP_SMU_PD_AUX_ADC_SEL				(MEM_BASE_SMU_PD + 0x3C)
#define CHIP_SMU_PD_AUX_ADC_OUT				(MEM_BASE_SMU_PD + 0x40)
#define CHIP_SMU_PD_RTC_CAL					(MEM_BASE_SMU_PD + 0x44)
#define CHIP_SMU_PD_RTC_CNT					(MEM_BASE_SMU_PD + 0x48)
#define CHIP_SMU_PD_I2S_MOD					(MEM_BASE_SMU_PD + 0x4C)
#define CHIP_SMU_PD_UART_CLK_SEL				(MEM_BASE_SMU_PD + 0x50)
#define CHIP_SMU_PD_WIFI_BLE_SEL				(MEM_BASE_SMU_PD + 0x54)
#define CHIP_SMU_PD_ENDIAN					(MEM_BASE_SMU_PD + 0x58)
#define CHIP_SMU_PD_HASH_DONE				(MEM_BASE_SMU_PD + 0x5C)
#define CHIP_SMU_PD_I2S_DIV_INT				(MEM_BASE_SMU_PD + 0x60)
#define CHIP_SMU_PD_I2S_DIV_FRAC				(MEM_BASE_SMU_PD + 0x64)
#define CHIP_SMU_PD_TRX_BYPASS				(MEM_BASE_SMU_PD + 0x68)
#define CHIP_SMU_PD_IVIC_TRNG_TYPE			(MEM_BASE_SMU_PD + 0x6C)
#define CHIP_SMU_PD_PIN_MUX_3					(MEM_BASE_SMU_PD + 0x70)
#define CHIP_SMU_PD_CLK_DIV_EN				(MEM_BASE_SMU_PD + 0x74)
#define CHIP_SMU_PD_APB_ENCRY_EN				(MEM_BASE_SMU_PD + 0x78)
#define CHIP_SMU_PD_RAM_ECC_HASH_SEL		(MEM_BASE_SMU_PD + 0x7C)
#define CHIP_SMU_PD_AUX_CLK_SEL				(MEM_BASE_SMU_PD + 0x80)
#define CHIP_SMU_PD_AUX_ADC_FIFO_DATA		(MEM_BASE_SMU_PD + 0x84)
#define CHIP_SMU_PD_AUX_ADC_FIFO_WR_CFG		(MEM_BASE_SMU_PD + 0x88)
#define CHIP_SMU_PD_WIFI_BLE_MODE_SEL		(MEM_BASE_SMU_PD + 0x8C)
#define CHIP_SMU_PD_AUX_GAIN_CAL_FIX			(MEM_BASE_SMU_PD + 0x90)
#define CHIP_SMU_PD_AUX_VOS_DATA_FIX			(MEM_BASE_SMU_PD + 0x94)
#define CHIP_SMU_PD_AUX_ADC_CLR				(MEM_BASE_SMU_PD + 0x98)
#define CHIP_SMU_PD_APB_PDSMU_CLK_BYPASS	(MEM_BASE_SMU_PD + 0x9C)

#endif












#ifndef _CHIP_PIN_MUX_H
#define _CHIP_PIN_MUX_H


#include "chip_smupd.h"

/*  UART PIN MUX CFG  */
#define UART0_RX_USED_GPIO5		0
#define UART0_RX_USED_GPIO21		1
#define UART0_TX_USED_GPIO6		0
#define UART0_TX_USED_GPIO22		1
#define UART2_TX_USED_GPIO0		0
#define UART2_TX_USED_GPIO13		1

#define I2C_SCL_USED_GPIO18		0
#define I2C_SCL_USED_GPIO2		1
#define I2C_SCL_USED_GPIO13		2
#define I2C_SDA_USED_GPIO21		0
#define I2C_SDA_USED_GPIO3		1
#define I2C_SDA_USED_GPIO25		2



int chip_uart0_pinmux_cfg(int rx_num, int tx_num, int flow_ctrl_en);
void chip_uart1_pinmux_cfg(int flow_ctrl_en);
int chip_uart2_pinmux_cfg(int tx_num);
int chip_i2c_pinmux_cfg(int scl_num, int sda_num);
void chip_io_mode_pinmux_cfg(int io_num,int mode);



/*  PWM PIN MUX CFG  */
#ifndef TEST_MODE_EXTPAD_RST_EN
#define TEST_MODE_EXTPAD_RST_EN  0x201214
#endif

#define TEST_MODE_ENABLE      (1 << 0)
#define EXTPAD_RST_ENABLE     (1 << 1)


#define PWM_CH0_USED_GPIO0		0
#define PWM_CH0_USED_GPIO22		1

#define PWM_CH1_USED_GPIO1		2
#define PWM_CH1_USED_GPIO23		3

#define PWM_CH2_USED_GPIO2		4
#define PWM_CH2_USED_GPIO24		5
#define PWM_CH2_USED_GPIO16		6


#define PWM_CH3_USED_GPIO3		7
#define PWM_CH3_USED_GPIO25		8

#define PWM_CH4_USED_GPIO4		9
#define PWM_CH4_USED_GPIO14		10

#define PWM_CH5_USED_GPIO15		11
#define PWM_CH5_USED_GPIO17		12

void chip_pwm_pinmux_cfg(unsigned int cfg);







//------------------------IO_MUX_0-----------------------------------
//GPIO0
#define IO_MUX_GPIO0_REG			CHIP_SMU_PD_PIN_MUX_0
#define IO_MUX_GPIO0_BITS			7 
#define IO_MUX_GPIO0_OFFSET		0
#define FUNC_GPIO0_TCK				0
#define FUNC_GPIO0_GPIO0			1
#define FUNC_GPIO0_UART2_TXD		2
#define FUNC_GPIO0_SPI1_CLK		3
#define FUNC_GPIO0_PWM_CTRL0		4
#define FUNC_GPIO0_I2S_TXSCK		5
#define FUNC_GPIO0_BLE_DEBUG_3	6

//GPIO1
#define IO_MUX_GPIO1_REG			CHIP_SMU_PD_PIN_MUX_0
#define IO_MUX_GPIO1_BITS			7
#define IO_MUX_GPIO1_OFFSET		4
#define FUNC_GPIO1_TMS				0
#define FUNC_GPIO1_GPIO1			1
#define FUNC_GPIO1_UART1_RXD		2
#define FUNC_GPIO1_SPI1_CS0		3
#define FUNC_GPIO1_PWM_CTRL1		4
#define FUNC_GPIO1_I2S_RXD			5
#define FUNC_GPIO0_BLE_DEBUG_4	6

//GPIO2
#define IO_MUX_GPIO2_REG			CHIP_SMU_PD_PIN_MUX_0
#define IO_MUX_GPIO2_BITS			7 
#define IO_MUX_GPIO2_OFFSET		8
#define FUNC_GPIO2_TDO				0
#define FUNC_GPIO2_GPIO2			1
#define FUNC_GPIO2_UART1_TXD		2
#define FUNC_GPIO2_SPI1_MOSI		3
#define FUNC_GPIO2_PWM_CTRL2		4
#define FUNC_GPIO2_I2C_SCI			5
#define FUNC_GPIO0_BLE_DEBUG_5	6

//GPIO3
#define IO_MUX_GPIO3_REG			CHIP_SMU_PD_PIN_MUX_0
#define IO_MUX_GPIO3_BITS			7 
#define IO_MUX_GPIO3_OFFSET		12
#define FUNC_GPIO3_TDI				0
#define FUNC_GPIO3_GPIO3			1
#define FUNC_GPIO3_UART0_CTS		2
#define FUNC_GPIO3_SPI1_MIS0		3
#define FUNC_GPIO3_PWM_CTRL3		4
#define FUNC_GPIO3_I2C_SDA			5
#define FUNC_GPIO0_BLE_DEBUG_6	6

//GPIO4
#define IO_MUX_GPIO4_REG			CHIP_SMU_PD_PIN_MUX_0
#define IO_MUX_GPIO4_BITS			7 
#define IO_MUX_GPIO4_OFFSET		16
#define FUNC_GPIO4_TRST			0
#define FUNC_GPIO4_GPIO4			1
#define FUNC_GPIO4_UART0_RTS		2
#define FUNC_GPIO4_SPI1_CS1		3
#define FUNC_GPIO4_PWM_CTRL4		4
#define FUNC_GPIO4_PSRAM_CS		5
#define FUNC_GPIO0_BLE_DEBUG_7	6

//GPIO5
#define IO_MUX_GPIO5_REG			CHIP_SMU_PD_PIN_MUX_0
#define IO_MUX_GPIO5_BITS			7 
#define IO_MUX_GPIO5_OFFSET		20
#define FUNC_GPIO5_UART0_RXD		0
#define FUNC_GPIO5_GPIO5			1
#define FUNC_GPIO5_40M_OUT		2
#define FUNC_GPIO5_IR_OUT			3
#define FUNC_GPIO5_I2S_RXWS		4
#define FUNC_GPIO5_32K_I			5

//GPIO6
#define IO_MUX_GPIO6_REG			CHIP_SMU_PD_PIN_MUX_0
#define IO_MUX_GPIO6_BITS			7 
#define IO_MUX_GPIO6_OFFSET		24
#define FUNC_GPIO6_UART0_TXD		0
#define FUNC_GPIO6_GPIO6			1
#define FUNC_GPIO6_COLD_RESET		2
#define FUNC_GPIO6_32K_OUT		3
#define FUNC_GPIO6_I2S_RXSCK		4
#define FUNC_GPIO5_32K_O			5

//GPIO7
#define IO_MUX_GPIO7_REG			CHIP_SMU_PD_PIN_MUX_0
#define IO_MUX_GPIO7_BITS			7 
#define IO_MUX_GPIO7_OFFSET		28
#define FUNC_GPIO7_SD_DATA0		0
#define FUNC_GPIO7_GPIO7			1
#define FUNC_GPIO7_MSPI_MOSI		2

//GPIO8
#define IO_MUX_GPIO8_REG			CHIP_SMU_PD_PIN_MUX_1
#define IO_MUX_GPIO8_BITS			7 
#define IO_MUX_GPIO8_OFFSET		0
#define FUNC_GPIO8_SD_DATA3		0
#define FUNC_GPIO8_GPIO8			1
#define FUNC_GPIO8_MSPI_HOLD		2

//GPIO9
#define IO_MUX_GPIO9_REG			CHIP_SMU_PD_PIN_MUX_1
#define IO_MUX_GPIO9_BITS			7 
#define IO_MUX_GPIO9_OFFSET		4
#define FUNC_GPIO9_SD_CLK			0
#define FUNC_GPIO9_GPIO9			1
#define FUNC_GPIO9_MSPI_CLK		2

//GPIO10
#define IO_MUX_GPIO10_REG			CHIP_SMU_PD_PIN_MUX_1
#define IO_MUX_GPIO10_BITS			7 
#define IO_MUX_GPIO10_OFFSET		8
#define FUNC_GPIO10_SD_CMD		0
#define FUNC_GPIO10_GPIO10			1
#define FUNC_GPIO10_MSPI_CS0		2

//GPIO11
#define IO_MUX_GPIO11_REG			CHIP_SMU_PD_PIN_MUX_1
#define IO_MUX_GPIO11_BITS		7 
#define IO_MUX_GPIO11_OFFSET		12
#define FUNC_GPIO11_SD_DATA1		0
#define FUNC_GPIO11_GPIO11			1
#define FUNC_GPIO11_MSPI_MISO		2

//GPIO12
#define IO_MUX_GPIO12_REG			CHIP_SMU_PD_PIN_MUX_1
#define IO_MUX_GPIO12_BITS			7 
#define IO_MUX_GPIO12_OFFSET		16
#define FUNC_GPIO12_SD_DATA2		0
#define FUNC_GPIO12_GPIO12			1
#define FUNC_GPIO12_MSPI_WP		2

//GPIO13
#define IO_MUX_GPIO13_REG			CHIP_SMU_PD_PIN_MUX_1
#define IO_MUX_GPIO13_BITS			7 
#define IO_MUX_GPIO13_OFFSET		20
#define FUNC_GPIO13_SD_H_CLK		0
#define FUNC_GPIO13_GPIO13			1
#define FUNC_GPIO13_UART2_TXD		2
#define FUNC_GPIO13_I2C_SCI		3
#define FUNC_GPIO13_I2S_RXD		4
#define FUNC_GPIO13_DPLL_80M_OUT	5

//GPIO14
#define IO_MUX_GPIO14_REG			CHIP_SMU_PD_PIN_MUX_1
#define IO_MUX_GPIO14_BITS			7 
#define IO_MUX_GPIO14_OFFSET		24
#define FUNC_GPIO14_BOOTMODE0	0
#define FUNC_GPIO14_GPIO14			1
#define FUNC_GPIO14_AUX_0			2	// ATST_A , VOUT_QP
#define FUNC_GPIO14_PWM_CTRL4		4
#define FUNC_GPIO14_I2S_TXD		5

//GPIO15
#define IO_MUX_GPIO15_REG			CHIP_SMU_PD_PIN_MUX_1
#define IO_MUX_GPIO15_BITS			7 
#define IO_MUX_GPIO15_OFFSET		28
#define FUNC_GPIO15_BOOTMODE1	0
#define FUNC_GPIO15_GPIO15			1
#define FUNC_GPIO15_AUX_1			2	// ATST_B, VOUT_QN
#define FUNC_GPIO15_PWM_CTRL5		4
#define FUNC_GPIO15_I2S_TXWS		5

//GPIO16
#define IO_MUX_GPIO16_REG			CHIP_SMU_PD_PIN_MUX_2
#define IO_MUX_GPIO16_BITS			7 
#define IO_MUX_GPIO16_OFFSET		0
#define FUNC_GPIO16_TEST_MODE		0
#define FUNC_GPIO16_GPIO16			1
#define FUNC_GPIO16_UART1_CTS		2
#define FUNC_GPIO16_IR_OUT			3
#define FUNC_GPIO16_PWM_CTRL2	4

//GPIO17
#define IO_MUX_GPIO17_REG			CHIP_SMU_PD_PIN_MUX_2
#define IO_MUX_GPIO17_BITS			7 
#define IO_MUX_GPIO17_OFFSET		4
#define FUNC_GPIO17_WAKEUP		0
#define FUNC_GPIO17_GPIO17			1
#define FUNC_GPIO17_UART2_RXD		2
#define FUNC_GPIO17_SPI1_WP		3
#define FUNC_GPIO17_PWM_CTRL5		4
#define FUNC_GPIO17_I2S_TXWS		5
#define FUNC_GPIO16_BLE_DEBUG_2	6

//GPIO18
#define IO_MUX_GPIO18_REG			CHIP_SMU_PD_PIN_MUX_2
#define IO_MUX_GPIO18_BITS			3 
#define IO_MUX_GPIO18_OFFSET		8
#define FUNC_GPIO18_RESET_B		0
#define FUNC_GPIO18_GPIO18			1
#define FUNC_GPIO18_UART1_RTS		2
#define FUNC_GPIO18_SPI1_HOLD		3
#define FUNC_GPIO18_I2C_SCI		4
#define FUNC_GPIO18_I2S_TXD		5
#define FUNC_GPIO18_AUX_3			6
#define FUNC_GPIO16_BLE_DEBUG_1	7


//GPIO19
#define IO_MUX_GPIO19_REG			CHIP_SMU_PD_PIN_MUX_2
#define IO_MUX_GPIO19_BITS			7 
#define IO_MUX_GPIO19_OFFSET		12
// none ....


//GPIO20
#define IO_MUX_GPIO20_REG			CHIP_SMU_PD_PIN_MUX_2
#define IO_MUX_GPIO20_BITS			7 
#define IO_MUX_GPIO20_OFFSET		16
#define FUNC_GPIO20_PWM_CTRL3		0
#define FUNC_GPIO20_GPIO20			1
#define FUNC_GPIO20_AUX_2			2
#define FUNC_GPIO20_I2S_MCLK		3


//GPIO21
#define IO_MUX_GPIO21_REG			CHIP_SMU_PD_PIN_MUX_2
#define IO_MUX_GPIO21_BITS			7 
#define IO_MUX_GPIO21_OFFSET		20
#define FUNC_GPIO21_SD_H_CMD		0
#define FUNC_GPIO21_GPIO21			1
#define FUNC_GPIO21_UART0_RXD		2
#define FUNC_GPIO21_I2C_SDA		3
#define FUNC_GPIO21_I2S_TXD		4
#define FUNC_GPIO21_BT_ACTIVE		5

//GPIO22
#define IO_MUX_GPIO22_REG			CHIP_SMU_PD_PIN_MUX_2
#define IO_MUX_GPIO22_BITS			7 
#define IO_MUX_GPIO22_OFFSET		24
#define FUNC_GPIO22_SD_H_DATA0	0
#define FUNC_GPIO22_GPIO22			1
#define FUNC_GPIO22_UART0_TXD		2
#define FUNC_GPIO22_PWM_CTRL0		3
#define FUNC_GPIO22_I2S_TXWS		4
#define FUNC_GPIO22_BT_PRIORITY	5

//GPIO23
#define IO_MUX_GPIO23_REG			CHIP_SMU_PD_PIN_MUX_2
#define IO_MUX_GPIO23_BITS			7 
#define IO_MUX_GPIO23_OFFSET		28
#define FUNC_GPIO23_SD_H_DATA1	0
#define FUNC_GPIO23_GPIO23			1
#define FUNC_GPIO23_UART1_RTS		2
#define FUNC_GPIO23_PWM_CTRL1		3
#define FUNC_GPIO23_I2S_TXSCK		4

//GPIO24
#define IO_MUX_GPIO24_REG			CHIP_SMU_PD_PIN_MUX_3
#define IO_MUX_GPIO24_BITS			7 
#define IO_MUX_GPIO24_OFFSET		0
#define FUNC_GPIO24_SD_H_DATA2	0
#define FUNC_GPIO24_GPIO24			1
#define FUNC_GPIO24_UART1_CTS		2
#define FUNC_GPIO24_PWM_CTRL2		3
#define FUNC_GPIO24_I2S_MCLK		4

//GPIO25
#define IO_MUX_GPIO25_REG			CHIP_SMU_PD_PIN_MUX_3
#define IO_MUX_GPIO25_BITS			7 
#define IO_MUX_GPIO25_OFFSET		4
#define FUNC_GPIO25_SD_H_DATA3	0
#define FUNC_GPIO25_GPIO25			1
#define FUNC_GPIO25_PHY_ENTRX		2
#define FUNC_GPIO25_PWM_CTRL3		3
#define FUNC_GPIO25_N_PHY_ENTRX	4
#define FUNC_GPIO25_I2C_SDA		5






#define PIN_MUX_GET_REG(reg)                (*((volatile unsigned int *) (reg)))

#define PIN_MUX_SET_REG(reg, data)         ((*((volatile unsigned int *)(reg)))=(unsigned int)(data))

#define PIN_MUX_SET(reg,bits,offset,fun) \
 		PIN_MUX_SET_REG(reg, (PIN_MUX_GET_REG(reg) & (~(bits<<offset))) |(fun<<offset))

#define PIN_FUNC_SET(PIN_NAME,PIN_FUNC) \
		PIN_MUX_SET(PIN_NAME##_REG, PIN_NAME##_BITS, PIN_NAME##_OFFSET, PIN_FUNC)

#define PIN_MUX_GET(reg,bits,offset) \
		((PIN_MUX_GET_REG(reg) & (bits<<offset))>>offset)
#define PIN_FUNC_GET(PIN_NAME) \
		PIN_MUX_GET(PIN_NAME##_REG, PIN_NAME##_BITS, PIN_NAME##_OFFSET)
#define PIN_FUNC_IS(PIN_NAME, PIN_FUNC) \
		((PIN_MUX_GET(PIN_NAME##_REG, PIN_NAME##_BITS, PIN_NAME##_OFFSET)) == (PIN_FUNC))

#endif


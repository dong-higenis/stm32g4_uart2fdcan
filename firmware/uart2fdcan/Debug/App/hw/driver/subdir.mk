################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/hw/driver/button.c \
../App/hw/driver/can.c \
../App/hw/driver/eeprom.c \
../App/hw/driver/fatfs.c \
../App/hw/driver/files.c \
../App/hw/driver/flash.c \
../App/hw/driver/gpio.c \
../App/hw/driver/i2c.c \
../App/hw/driver/led.c \
../App/hw/driver/log.c \
../App/hw/driver/pwm.c \
../App/hw/driver/qspi.c \
../App/hw/driver/reset.c \
../App/hw/driver/rtc.c \
../App/hw/driver/sdram.c \
../App/hw/driver/spi.c \
../App/hw/driver/spi_flash.c \
../App/hw/driver/swtimer.c \
../App/hw/driver/touch.c \
../App/hw/driver/uart.c 

OBJS += \
./App/hw/driver/button.o \
./App/hw/driver/can.o \
./App/hw/driver/eeprom.o \
./App/hw/driver/fatfs.o \
./App/hw/driver/files.o \
./App/hw/driver/flash.o \
./App/hw/driver/gpio.o \
./App/hw/driver/i2c.o \
./App/hw/driver/led.o \
./App/hw/driver/log.o \
./App/hw/driver/pwm.o \
./App/hw/driver/qspi.o \
./App/hw/driver/reset.o \
./App/hw/driver/rtc.o \
./App/hw/driver/sdram.o \
./App/hw/driver/spi.o \
./App/hw/driver/spi_flash.o \
./App/hw/driver/swtimer.o \
./App/hw/driver/touch.o \
./App/hw/driver/uart.o 

C_DEPS += \
./App/hw/driver/button.d \
./App/hw/driver/can.d \
./App/hw/driver/eeprom.d \
./App/hw/driver/fatfs.d \
./App/hw/driver/files.d \
./App/hw/driver/flash.d \
./App/hw/driver/gpio.d \
./App/hw/driver/i2c.d \
./App/hw/driver/led.d \
./App/hw/driver/log.d \
./App/hw/driver/pwm.d \
./App/hw/driver/qspi.d \
./App/hw/driver/reset.d \
./App/hw/driver/rtc.d \
./App/hw/driver/sdram.d \
./App/hw/driver/spi.d \
./App/hw/driver/spi_flash.d \
./App/hw/driver/swtimer.d \
./App/hw/driver/touch.d \
./App/hw/driver/uart.d 


# Each subdirectory must supply rules for building sources it contributes
App/hw/driver/%.o App/hw/driver/%.su App/hw/driver/%.cyclo: ../App/hw/driver/%.c App/hw/driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/hw" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/common/hw" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/common/hw/include" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/common" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/common/core" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/ap" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/bsp" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-hw-2f-driver

clean-App-2f-hw-2f-driver:
	-$(RM) ./App/hw/driver/button.cyclo ./App/hw/driver/button.d ./App/hw/driver/button.o ./App/hw/driver/button.su ./App/hw/driver/can.cyclo ./App/hw/driver/can.d ./App/hw/driver/can.o ./App/hw/driver/can.su ./App/hw/driver/eeprom.cyclo ./App/hw/driver/eeprom.d ./App/hw/driver/eeprom.o ./App/hw/driver/eeprom.su ./App/hw/driver/fatfs.cyclo ./App/hw/driver/fatfs.d ./App/hw/driver/fatfs.o ./App/hw/driver/fatfs.su ./App/hw/driver/files.cyclo ./App/hw/driver/files.d ./App/hw/driver/files.o ./App/hw/driver/files.su ./App/hw/driver/flash.cyclo ./App/hw/driver/flash.d ./App/hw/driver/flash.o ./App/hw/driver/flash.su ./App/hw/driver/gpio.cyclo ./App/hw/driver/gpio.d ./App/hw/driver/gpio.o ./App/hw/driver/gpio.su ./App/hw/driver/i2c.cyclo ./App/hw/driver/i2c.d ./App/hw/driver/i2c.o ./App/hw/driver/i2c.su ./App/hw/driver/led.cyclo ./App/hw/driver/led.d ./App/hw/driver/led.o ./App/hw/driver/led.su ./App/hw/driver/log.cyclo ./App/hw/driver/log.d ./App/hw/driver/log.o ./App/hw/driver/log.su ./App/hw/driver/pwm.cyclo ./App/hw/driver/pwm.d ./App/hw/driver/pwm.o ./App/hw/driver/pwm.su ./App/hw/driver/qspi.cyclo ./App/hw/driver/qspi.d ./App/hw/driver/qspi.o ./App/hw/driver/qspi.su ./App/hw/driver/reset.cyclo ./App/hw/driver/reset.d ./App/hw/driver/reset.o ./App/hw/driver/reset.su ./App/hw/driver/rtc.cyclo ./App/hw/driver/rtc.d ./App/hw/driver/rtc.o ./App/hw/driver/rtc.su ./App/hw/driver/sdram.cyclo ./App/hw/driver/sdram.d ./App/hw/driver/sdram.o ./App/hw/driver/sdram.su ./App/hw/driver/spi.cyclo ./App/hw/driver/spi.d ./App/hw/driver/spi.o ./App/hw/driver/spi.su ./App/hw/driver/spi_flash.cyclo ./App/hw/driver/spi_flash.d ./App/hw/driver/spi_flash.o ./App/hw/driver/spi_flash.su ./App/hw/driver/swtimer.cyclo ./App/hw/driver/swtimer.d ./App/hw/driver/swtimer.o ./App/hw/driver/swtimer.su ./App/hw/driver/touch.cyclo ./App/hw/driver/touch.d ./App/hw/driver/touch.o ./App/hw/driver/touch.su ./App/hw/driver/uart.cyclo ./App/hw/driver/uart.d ./App/hw/driver/uart.o ./App/hw/driver/uart.su

.PHONY: clean-App-2f-hw-2f-driver


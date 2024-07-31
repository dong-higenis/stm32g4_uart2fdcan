################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/common/hw/src/cli.c \
../App/common/hw/src/cli_gui.c 

OBJS += \
./App/common/hw/src/cli.o \
./App/common/hw/src/cli_gui.o 

C_DEPS += \
./App/common/hw/src/cli.d \
./App/common/hw/src/cli_gui.d 


# Each subdirectory must supply rules for building sources it contributes
App/common/hw/src/%.o App/common/hw/src/%.su App/common/hw/src/%.cyclo: ../App/common/hw/src/%.c App/common/hw/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/hw" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/common/hw" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/common/hw/include" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/common" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/common/core" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/ap" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/bsp" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-common-2f-hw-2f-src

clean-App-2f-common-2f-hw-2f-src:
	-$(RM) ./App/common/hw/src/cli.cyclo ./App/common/hw/src/cli.d ./App/common/hw/src/cli.o ./App/common/hw/src/cli.su ./App/common/hw/src/cli_gui.cyclo ./App/common/hw/src/cli_gui.d ./App/common/hw/src/cli_gui.o ./App/common/hw/src/cli_gui.su

.PHONY: clean-App-2f-common-2f-hw-2f-src


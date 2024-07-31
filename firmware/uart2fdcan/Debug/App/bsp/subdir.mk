################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/bsp/bsp.c 

OBJS += \
./App/bsp/bsp.o 

C_DEPS += \
./App/bsp/bsp.d 


# Each subdirectory must supply rules for building sources it contributes
App/bsp/%.o App/bsp/%.su App/bsp/%.cyclo: ../App/bsp/%.c App/bsp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/hw" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/common/hw" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/common/hw/include" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/common" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/common/core" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/ap" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/bsp" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-bsp

clean-App-2f-bsp:
	-$(RM) ./App/bsp/bsp.cyclo ./App/bsp/bsp.d ./App/bsp/bsp.o ./App/bsp/bsp.su

.PHONY: clean-App-2f-bsp


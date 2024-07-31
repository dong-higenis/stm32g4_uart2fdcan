################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/common/core/qbuffer.c \
../App/common/core/util.c 

OBJS += \
./App/common/core/qbuffer.o \
./App/common/core/util.o 

C_DEPS += \
./App/common/core/qbuffer.d \
./App/common/core/util.d 


# Each subdirectory must supply rules for building sources it contributes
App/common/core/%.o App/common/core/%.su App/common/core/%.cyclo: ../App/common/core/%.c App/common/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/hw" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/common/hw" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/common/hw/include" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/common" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/common/core" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/ap" -I"D:/mcu/stm32g4_uart2fdcan/firmware/uart2fdcan/App/bsp" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-common-2f-core

clean-App-2f-common-2f-core:
	-$(RM) ./App/common/core/qbuffer.cyclo ./App/common/core/qbuffer.d ./App/common/core/qbuffer.o ./App/common/core/qbuffer.su ./App/common/core/util.cyclo ./App/common/core/util.d ./App/common/core/util.o ./App/common/core/util.su

.PHONY: clean-App-2f-common-2f-core


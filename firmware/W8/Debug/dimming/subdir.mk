################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../dimming/dimming.c 

OBJS += \
./dimming/dimming.o 

C_DEPS += \
./dimming/dimming.d 


# Each subdirectory must supply rules for building sources it contributes
dimming/%.o dimming/%.su dimming/%.cyclo: ../dimming/%.c dimming/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F091xC -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Katarzyna/Desktop/W8/dimming" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-dimming

clean-dimming:
	-$(RM) ./dimming/dimming.cyclo ./dimming/dimming.d ./dimming/dimming.o ./dimming/dimming.su

.PHONY: clean-dimming


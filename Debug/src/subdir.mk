################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/main.c \
../src/syscalls.c \
../src/system_stm32f0xx.c 

OBJS += \
./src/main.o \
./src/syscalls.o \
./src/system_stm32f0xx.o 

C_DEPS += \
./src/main.d \
./src/syscalls.d \
./src/system_stm32f0xx.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -DSTM32F0 -DNUCLEO_F042K6 -DSTM32F042K6Tx -DSTM32 -DDEBUG -DUSE_STDPERIPH_DRIVER -DSTM32F042 -I"C:/Users/admin/Documents/repos/trixCanLite_teste/inc" -I"C:/Users/admin/Documents/repos/trixCanLite_teste/CMSIS/core" -I"C:/Users/admin/Documents/repos/trixCanLite_teste/CMSIS/device" -I"C:/Users/admin/Documents/repos/trixCanLite_teste/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



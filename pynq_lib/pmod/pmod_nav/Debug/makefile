################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
pmod_nav.elf.size \


# All Target
all: pmod_nav.elf secondary-outputs

# Tool invocations
pmod_nav.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MicroBlaze gcc linker'
	mb-gcc -Wl,-gc-sections -Wl,-T -Wl,../src/lscript.ld -L../../bsp_iop_pmod/iop_pmoda_mb/lib -mlittle-endian -mcpu=v11.0 -mxl-soft-mul -Wl,--no-relax -o "pmod_nav.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

pmod_nav.elf.size: pmod_nav.elf
	@echo 'Invoking: MicroBlaze Print Size'
	mb-size pmod_nav.elf  |tee "pmod_nav.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

pmod_nav.bin: pmod_nav.elf
	@echo 'Invoking: MicroBlaze Bin Gen'
	mb-objcopy -O binary pmod_nav.elf pmod_nav.bin
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(S_UPPER_DEPS)$(C_DEPS)$(ELFSIZE) pmod_nav.elf pmod_nav.bin
	-@echo ' '

secondary-outputs: $(ELFSIZE) pmod_nav.bin

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

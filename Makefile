COMPILER = arm-none-eabi-gcc
CFLAGS  += \
  -flto \
  -mthumb \
  -mabi=aapcs \
  -mcpu=cortex-m4 \
  -mfloat-abi=hard \
  -mfpu=fpv4-sp-d16 \
  -DCFG_TUSB_MCU=OPT_MCU_TM4C123 \
  -uvectors \
  -DTM4C123GH6PM \
  -Wno-error=strict-prototypes \
  -Wno-error=cast-qual

OBJCOPY  = arm-none-eabi-objcopy

FLASHER  = lm4flash


make: main.c
	$(COMPILER) $(CFLAGS) -c main.c -o build/main.o
	$(OBJCOPY) -O binary build/main.o build/main.bin

flash: 
	sudo $(FLASHER) ./build/main.bin

.PHONY:

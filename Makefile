include tinyusb/examples/make.mk

INC += \
	tinyusb/src \
	tinyusb/hw \

# Example source
EXAMPLE_SOURCE += $(wildcard src/*.c)
SRC_C += $(addprefix $(CURRENT_PATH)/, $(EXAMPLE_SOURCE))

include tinyusb/examples/rules.mk

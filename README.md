# AmdahlMouse

AmdahlMouse is a USB HID (Human Interface Device) implementation using the [TinyUSB](https://github.com/hathach/tinyusb) stack. This project demonstrates how to create a USB device that supports multiple HID profiles, including keyboard, mouse, consumer control, and gamepad.

## Features

- USB HID support for:
  - Keyboard
  - Mouse
  - Consumer Control (e.g., volume control)
  - Gamepad
- LED blinking patterns to indicate device status:
  - 250 ms: Device not mounted
  - 1000 ms: Device mounted
  - 2500 ms: Device suspended
- Remote wakeup support
- Configurable USB descriptors

## Getting Started

### Prerequisites

- A development board with a TM4C123 microcontroller or compatible hardware.
- A toolchain for building and flashing the firmware (e.g., GCC for ARM).
- [TinyUSB](https://github.com/hathach/tinyusb) library included as a submodule.

### Building the Project

1. Clone the repository:
   ```sh
   git clone --recurse-submodules <repository-url>
   cd AmdahlMouse

2. Build the project using `Makefile` or your preferred build system: `make`

3. Flash the firmware to your device.

### Running the Application

1. Connect the device to a USB host (e.g., a PC).
2. The device will enumerate as a USB HID supporting keyboard, mouse, consumer control, and gamepad.
3. Observe the LED blinking patterns to verify the device status.

### Customization

- Modify `usb_descriptors.c` to add or change HID profiles.
- Adjust `tusb_config.h` to enable or disable specific TinyUSB features.
- Implement additional HID report handling in `main.c` as needed.

License
-------

This project is licensed under the MIT License. See the LICENSE file for details.

Acknowledgments
---------------

- TinyUSB: A lightweight USB host/device stack for embedded systems.

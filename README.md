# RGB LED Controller Project

This repository contains hardware and firmware for an RGB LED controller based on the STM32F091 microcontroller. The project includes PCB design files, firmware source code, and documentation.

## Project Structure

- **pcb projects/**  
  KiCad PCB design files for the RGB LED controller hardware.
  - `RGBLED_v1/` – Main PCB project files and backups.
  - `doc/` – Additional PCB-related documentation.

- **firmware/W8/**  
  STM32CubeIDE firmware project for the STM32F091 MCU.
  - `Core/` – Main application source and header files.
  - `dimming/` – LED dimming logic.
  - `Drivers/` – HAL and CMSIS drivers.
  - `Debug/`, `Release/` – Build output directories.
  - `STM32F091RCTX_FLASH.ld` – Linker script.
  - `.ioc` – STM32CubeMX configuration file.

- **doc/**  
  Documentation and resources.
 
## Getting Started

### Requirements

- STM32CubeIDE (for firmware development)
- KiCad (for PCB design)
- ST-Link programmer/debugger
- STM32F091-based hardware

### Building the Firmware

1. Open the `firmware/W8/` project in STM32CubeIDE.
2. Build the project using the IDE's build tools or run:
   ```sh
   cd firmware/W8/Release
   make
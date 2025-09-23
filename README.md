# Xiaomi Pad 6 Fedora Specs


This repository contains Fedora spec files and supporting files for building packages required by [pipa-fedora-builder](https://github.com/timoxa0/pipa-fedora-builder) for the Xiaomi Pad 6.

**Note:** Each package's spec file is named after its directory (e.g., `bootmac/bootmac.spec`).

Packages are available on the [pipa-support copr repo](https://copr.fedorainfracloud.org/coprs/tx0su/pipa-support/).

## Table of Contents

- [bootmac](#bootmac)
- [hexagonrpc](#hexagonrpc)
- [iio-sensor-proxy](#iio-sensor-proxy)
- [kernel](#kernel)
- [libssc](#libssc)
- [pipa-dracut](#pipa-dracut)
- [pipa-kernel-flasher-hook](#pipa-kernel-flasher-hook)
- [pipa-metapkg](#pipa-metapkg)
- [pipa-sensors](#pipa-sensors)
- [pipa-sound-conf](#pipa-sound-conf)
- [qbootctl](#qbootctl)
- [qrtr](#qrtr)
- [xiaomi-pipa-firmware](#xiaomi-pipa-firmware)

---


## bootmac
Provides bootloader MAC address configuration utilities.


## hexagonrpc
Hexagon RPC daemon and related systemd services for DSP communication. Includes udev rules and systemd service files for ADSP and SDSP.


## iio-sensor-proxy
Sensor proxy with patches for SSC sensors (proximity, light, accelerometer, compass). Includes integration tests and systemd service modifications.


## kernel
Custom kernel configuration and patches for Xiaomi Pad 6 support. Includes touchpad and other device-specific patches.


## libssc
Library for SSC (Sensor Subsystem Communication).


## pipa-dracut
Dracut module for Xiaomi Pad 6 boot support. Includes custom module setup script.


## pipa-kernel-flasher-hook
Hook scripts for kernel flashing and boot installation.


## pipa-metapkg
Metapackage for installing all required components for Xiaomi Pad 6.


## pipa-sensors
Sensor configuration files and rules for Xiaomi Pad 6 sensors. Includes udev rules and DSP configuration.


## pipa-sound-conf
Audio configuration files for Xiaomi Pad 6. Includes multiple sound configuration files for different use cases.


## qbootctl
Boot control utility and systemd service for boot management.


## qrtr
QRTR (Qualcomm IPC Router) utilities and patches.


## xiaomi-pipa-firmware
Firmware blobs for various components (audio, DSP, touchscreen, etc.). Includes file lists for each firmware type.


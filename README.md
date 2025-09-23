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

**Files:**
```
bootmac/
└── bootmac.spec
```


## hexagonrpc
Hexagon RPC daemon and related systemd services for DSP communication. Includes udev rules and systemd service files for ADSP and SDSP.

**Files:**
```
hexagonrpc/
├── 10-fastrpc.rules
├── hexagonrpc.spec
├── hexagonrpcd-adsp-rootpd.service
├── hexagonrpcd-adsp-sensorspd.service
├── hexagonrpcd-sdsp.service
└── sysusers.conf
```


## iio-sensor-proxy
Sensor proxy with patches for SSC sensors (proximity, light, accelerometer, compass). Includes integration tests and systemd service modifications.

**Files:**
```
iio-sensor-proxy/
├── 0001-iio-sensor-proxy-depend-on-libssc.patch
├── 0002-proximity-support-SSC-proximity-sensor.patch
├── 0003-light-support-SSC-light-sensor.patch
├── 0004-accelerometer-support-SSC-accelerometer-sensor.patch
├── 0005-compass-support-SSC-compass-sensor.patch
├── 0006-data-add-libssc-udev-rules.patch
├── 0007-data-iio-sensor-proxy.service.in-add-AF_QIPCRTR.patch
├── 0008-drv-ssc-implement-set_polling.patch
├── 0009-tests-integration-test-add-SSC-sensors.patch
└── iio-sensor-proxy.spec
```


## kernel
Custom kernel configuration and patches for Xiaomi Pad 6 support. Includes touchpad and other device-specific patches.

**Files:**
```
kernel/
├── add-touchpad-button-event.patch
├── kernel.spec
└── pipa.config
```


## libssc
Library for SSC (Sensor Subsystem Communication).

**Files:**
```
libssc/
└── libssc.spec
```


## pipa-dracut
Dracut module for Xiaomi Pad 6 boot support. Includes custom module setup script.

**Files:**
```
pipa-dracut/
├── module-setup.sh
└── pipa-dracut.spec
```


## pipa-kernel-flasher-hook
Hook scripts for kernel flashing and boot installation.

**Files:**
```
pipa-kernel-flasher-hook/
├── 99-android-boot.install
└── pipa-kernel-flasher-hook.spec
```


## pipa-metapkg
Metapackage for installing all required components for Xiaomi Pad 6.

**Files:**
```
pipa-metapkg/
└── pipa-metapkg.spec
```


## pipa-sensors
Sensor configuration files and rules for Xiaomi Pad 6 sensors. Includes udev rules and DSP configuration.

**Files:**
```
pipa-sensors/
├── 81-libssc-xiaomi-pipa.rules
├── hexagonrpcd-sdsp.conf
└── pipa-sensors.spec
```


## pipa-sound-conf
Audio configuration files for Xiaomi Pad 6. Includes multiple sound configuration files for different use cases.

**Files:**
```
pipa-sound-conf/
├── 51-pipa.conf
├── HiFi_pipa.conf
├── Xiaomi Pad 6.conf
└── pipa-sound-conf.spec
```


## qbootctl
Boot control utility and systemd service for boot management.

**Files:**
```
qbootctl/
├── qbootctl-mark-bootable.service
└── qbootctl.spec
```


## qrtr
QRTR (Qualcomm IPC Router) utilities and patches.

**Files:**
```
qrtr/
├── README.md
├── qrtr-restore-soname.patch
└── qrtr.spec
```


## xiaomi-pipa-firmware
Firmware blobs for various components (audio, DSP, touchscreen, etc.). Includes file lists for each firmware type.

**Files:**
```
xiaomi-pipa-firmware/
├── awinic_firmware.files
├── dsp_firmware.files
├── novatek_firmware.files
├── nuvolta_firmware.files
├── qcom_firmware.files
└── xiaomi-pipa-firmware.spec
```


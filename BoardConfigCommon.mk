#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Security - must be defined before including BoardConfig-common.mk
BOOT_SECURITY_PATCH := 2026-07-05
VENDOR_SECURITY_PATCH := $(BOOT_SECURITY_PATCH)

include device/google/gs201/BoardConfig-common.mk

# Kernel
BOARD_KERNEL_CMDLINE += swiotlb=noforce

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy/vendor \
    hardware/google/pixel-sepolicy/vibrator/common \
    hardware/google/pixel-sepolicy/vibrator/cs40l26

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy/system_ext/private

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy/system_ext/public

# WiFi
include $(DEVICE_PATH)/wifi/BoardConfig-wifi.mk

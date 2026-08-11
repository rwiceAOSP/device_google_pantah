#
# SPDX-FileCopyrightText: 2021 The Android Open-Source Project
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Kernel
TARGET_LINUX_KERNEL_VERSION := 6.1
TARGET_KERNEL_DEVICE := pantah
TARGET_KERNEL_DIR := device/google/$(TARGET_KERNEL_DEVICE)-kernels/$(TARGET_LINUX_KERNEL_VERSION)
TARGET_KERNEL_PLATFORM_SOURCE := google/gs-$(TARGET_LINUX_KERNEL_VERSION)

# Inherit from gs201
include device/google/gs201/common.mk

# Overlays
PRODUCT_PACKAGES += \
    FrameworkResOverlayVendorPantah \
    ONSOverlayVendorPantah \
    PixelNfcOverlayPantah \
    SafetyRegulatoryInfoOverlayProductPantah \
    SystemUIGoogleOverlayVendorPantah

PRODUCT_PACKAGES += \
    DMServiceOverlayProductGs201 \
    DMServiceOverlayVendorCheetah \
    FrameworkResOverlayVendorCheetah \
    PixelNfcOverlayCheetah \
    PixelWifiOverlay2023_midyear_F10 \
    SettingsGoogleCheetahOverlay \
    SettingsGoogleOverlayProductCheetah \
    SettingsOverlayGE2AE \
    SettingsOverlayGFE4J \
    SettingsOverlayGP4BC \
    SystemUIGoogleOverlayVendorCheetah \
    UdfpsOverlay

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/$(DEVICE_CODENAME)/product.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/$(DEVICE_CODENAME)/vendor.prop

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# UWB
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.uwb.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.uwb.xml

# VINTF
DEVICE_MANIFEST_FILE += \
    $(DEVICE_PATH)/vintf/manifest.xml
DEVICE_PRODUCT_COMPATIBILITY_MATRIX_FILE += \
    $(DEVICE_PATH)/vintf/device_framework_matrix_product.xml

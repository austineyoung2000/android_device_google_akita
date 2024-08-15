#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/akita/aosp_akita.mk)
$(call inherit-product, device/google/zuma/lineage_common.mk)

include device/google/akita/akita/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8a
PRODUCT_NAME := lineage_akita

# Addons
TARGET_HAS_UDFPS := true

# Gms 
WITH_GMS := true

# Ship Pixel Launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Ship Google Camera
TARGET_PREBUILT_GOOGLE_CAMERA := true

# Ship LawnChair 
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

RISING_MAINTAINER=EliteDarkKaiser

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=akita \
    PRIVATE_BUILD_DESC="akita-user 14 AP2A.240805.005.A1 12030693 release-keys"

BUILD_FINGERPRINT := google/akita/akita:14/AP2A.240805.005.A1/12030693:user/release-keys

$(call inherit-product, vendor/google/akita/akita-vendor.mk)

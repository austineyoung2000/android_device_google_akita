#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PRODUCT_COMPATIBILITY_MATRIX_FILE += device/google/akita/aam_compatibility_matrix.xml
DEVICE_PATH := device/google/akita

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_akita

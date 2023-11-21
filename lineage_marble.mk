#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CrDroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Crdroid stuff.
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_AUDIOFX := false

# Inherit from marble device.
$(call inherit-product, device/xiaomi/marble/device.mk)

## Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := lineage_marble

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

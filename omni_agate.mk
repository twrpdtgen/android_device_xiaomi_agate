#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from agate device
$(call inherit-product, device/xiaomi/agate/device.mk)

PRODUCT_DEVICE := agate
PRODUCT_NAME := omni_agate
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2104K11TC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_agate-eng 20.1.0 SP2A.220405.004 eng.runner.20220705.162646 test-keys"

BUILD_FINGERPRINT := Xiaomi/twrp_agate/agate:20.1.0/SP2A.220405.004/runner07051612:eng/test-keys

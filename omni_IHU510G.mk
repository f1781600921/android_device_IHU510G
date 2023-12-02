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

# Inherit from IHU510G device
$(call inherit-product, device/ecarx/IHU510G/device.mk)

PRODUCT_DEVICE := IHU510G
PRODUCT_NAME := omni_IHU510G
PRODUCT_BRAND := ecarx
PRODUCT_MODEL := FE6A3
PRODUCT_MANUFACTURER := ecarx

PRODUCT_GMS_CLIENTID_BASE := android-ecarx

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="IHU510G-user 9 PQ2A.190405.003 148 dev-keys"

BUILD_FINGERPRINT := ecarx/IHU510G/IHU510G:9/PQ2A.190405.003/148:user/dev-keys

#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from laurel_sprout device
$(call inherit-product, device/xiaomi/laurel_sprout/device.mk)

# Inherit some common Tequila stuff.
$(call inherit-product, vendor/tequila/config/common_full_phone.mk)


# Bootanimation
TARGET_BOOT_ANIMATION_RES := 720

# Tequila props
TARGET_HAS_UDFPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_DEVICE := laurel_sprout
PRODUCT_NAME := tequila_laurel_sprout
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A3
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="laurel_sprout-user 11 RKQ1.200903.002 V12.0.26.0.RFQMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/laurel_sprout/laurel_sprout:11/RKQ1.200903.002/V12.0.26.0.RFQMIXM:user/release-keys

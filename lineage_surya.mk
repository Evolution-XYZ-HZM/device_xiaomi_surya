#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from surya device.
$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier.
PRODUCT_NAME := lineage_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprint
BUILD_FINGERPRINT := POCO/surya_global/surya:12/RKQ1.211019.001/V14.0.2.0.SJGMIXM:user/release-keys
BUILD_DESCRIPTION := surya_global-user 12 RKQ1.211019.001 V14.0.2.0.SJGMIXM release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"


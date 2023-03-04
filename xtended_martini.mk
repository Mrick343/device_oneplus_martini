#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from martini device
$(call inherit-product, device/oneplus/martini/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)


TARGET_BOOT_ANIMATION_RES := 1080
PRODUCT_NAME := xtended_martini
PRODUCT_DEVICE := martini
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := MT2111

PRODUCT_SYSTEM_NAME := OnePlus9RT
PRODUCT_SYSTEM_DEVICE := OnePlus9RT

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

PRIVATE_BUILD_DESC="OnePlus9RT-user 13 TP1A.220905.001 R.df3fd4-1-4:user release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
    
BUILD_FINGERPRINT := OnePlus/OnePlus9RT/OP5155L1:13/TP1A.220905.001/R.df3fd4-1-4:user/release-keys

# UDFPS animations
EXTRA_UDFPS_ANIMATIONS := true

# SoC
PROCESSOR_MODEL := SM8350

#GAPPS
WITH_GAPPS=true

# Official
XTENDED_BUILD_TYPE := UNOFFICIAL
XTENDED_BUILD_MAINTAINER := Mrick343

#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from macan device
$(call inherit-product, device/oneplus/macan/device.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
DERPFEST_BUILD_TYPE := Official
TARGET_SUPPORTS_QUICK_TAP := false

PRODUCT_NAME := lineage_macan
PRODUCT_DEVICE := macan
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2767

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi_64-user 16 BP2A.250605.015 1789016206224 release-keys" \
    BuildFingerprint=OnePlus/CPH2767IN/OP612DL1:16/BP2A.250605.015/B.R4T3.5bbee97-35f3ae9-35f3aee:user/release-keys \
    DeviceName=OP612DL1 \
    DeviceProduct=CPH2767 \
    SystemDevice=OP612DL1 \
    SystemName=CPH2767

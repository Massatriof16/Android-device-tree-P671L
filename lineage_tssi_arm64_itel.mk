#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tssi_arm64_itel device
$(call inherit-product, device/itel/tssi_arm64_itel/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := tssi_arm64_itel
PRODUCT_NAME := lineage_tssi_arm64_itel
PRODUCT_BRAND := Itel
PRODUCT_MODEL := tssi
PRODUCT_MANUFACTURER := itel

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tssi_arm64_itel_full-user 14 UP1A.231005.007 1452 release-keys" \
    BuildFingerprint := Itel/P671L-OP/itel-P671L:14/UP1A.231005.007/251015V2453:user/release-keys
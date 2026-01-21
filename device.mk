#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=erofs \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=erofs \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# API levels
BOARD_API_LEVEL := 33
PRODUCT_SHIPPING_API_LEVEL := 34

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Kernel
PRODUCT_ENABLE_UFFD_GC := true

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    log_to_csv.sh \
    loading.sh \
    para.sh \
    total.sh \
    create_splloader_dual_slot_byname_path.sh \
    init.insmod.sh \
    init.tasksetEnd.sh \
    init.tasksetStart.sh \
    speedrestrictor.sh \
    swappiness.sh \
    trafficshow.sh \

PRODUCT_PACKAGES += \
    fstab.ums9230_4h10_go \
    init.P683LU.rc \
    init.P683LU.usb.rc \
    init.cali.rc \
    init.ram.gms.rc \
    init.ram.native.rc \
    init.ram.rc \
    init.storage.rc \
    init.ums9230_14c10_go.rc \
    init.ums9230_14c10_go.usb.rc \
    init.ums9230_1h10.rc \
    init.ums9230_1h10.usb.rc \
    init.ums9230_1h10_go.rc \
    init.ums9230_1h10_go.usb.rc \
    init.ums9230_4h10.rc \
    init.ums9230_4h10.usb.rc \
    init.ums9230_4h10_go.rc \
    init.ums9230_4h10_go.usb.rc \
    init.ums9230_6h10.rc \
    init.ums9230_6h10.usb.rc \
    init.ums9230_6h10_go.rc \
    init.ums9230_6h10_go.usb.rc \
    init.ums9230_BG6m_go.rc \
    init.ums9230_BG6m_go.usb.rc \
    init.ums9230_KL4_go.rc \
    init.ums9230_KL4_go.usb.rc \
    init.ums9230_KL4s_go.rc \
    init.ums9230_KL4s_go.usb.rc \
    init.ums9230_P665LU.rc \
    init.ums9230_P665LU.usb.rc \
    init.ums9230_P665L_go.rc \
    init.ums9230_P665L_go.usb.rc \
    init.ums9230_P666L_go.rc \
    init.ums9230_P666L_go.usb.rc \
    init.ums9230_P671L.rc \
    init.ums9230_P671L.usb.rc \
    init.ums9230_P671LMINI.rc \
    init.ums9230_P671LMINI.usb.rc \
    init.ums9230_P671LN.rc \
    init.ums9230_P671LN.usb.rc \
    init.ums9230_P671LNMINI.rc \
    init.ums9230_P671LNMINI.usb.rc \
    init.ums9230_P672L.rc \
    init.ums9230_P672L.usb.rc \
    init.ums9230_P672LMINI.rc \
    init.ums9230_P672LMINI.usb.rc \
    init.ums9230_P683LU_go.rc \
    init.ums9230_P683LU_go.usb.rc \
    init.ums9230_S685LN.rc \
    init.ums9230_S685LN.usb.rc \
    init.ums9230_X6525D_go.rc \
    init.ums9230_X6525D_go.usb.rc \
    init.zramwb.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.ums9230_4h10_go:$(TARGET_VENDOR_RAMDISK_OUT)/first_stage_ramdisk/fstab.ums9230_4h10_go

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/itel/tssi_arm64_itel/tssi_arm64_itel-vendor.mk)

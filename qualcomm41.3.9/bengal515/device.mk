LOCAL_PATH := device/qualcomm/bengal515
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Qualcomm FBE decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
    bootctrl.bengal

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
PRODUCT_PACKAGES += android.hardware.fastboot@1.0-impl-mock
PRODUCT_PACKAGES += fastbootd

# Boot control HAL - Bootctrl

PRODUCT_PACKAGES += bootctrl
PRODUCT_PACKAGES += bootctrl.recovery

PRODUCT_PACKAGES_DEBUG += bootctrl

TARGET_ENFORCE_AB_OTA_PARTITION_LIST := true
PRODUCT_USE_DYNAMIC_PARTITIONS := true
ENABLE_VIRTUAL_AB := true

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/vendor/manifest.xml:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/vintf/recovery-vendor-manifest.xml \
    $(LOCAL_PATH)/recovery/root/system/etc/init/servicemanager.rc:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/init/servicemanager.rc \
    $(LOCAL_PATH)/recovery/root/system/etc/task_profiles.json:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/task_profiles.json \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/librpmb.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/librpmb.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libgpt.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libgpt.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libssd.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libssd.so

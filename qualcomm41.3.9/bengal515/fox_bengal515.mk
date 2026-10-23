$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit OrangeFox/TWRP common configuration.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from bengal515 device
$(call inherit-product, device/qualcomm/bengal515/device.mk)

PRODUCT_DEVICE := bengal515
PRODUCT_NAME := fox_bengal515
PRODUCT_BRAND := qti
PRODUCT_MODEL := FiiO JM21
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Masttermind"

BUILD_FINGERPRINT := qti/bengal515/bengal515:13/TKQ1.230110.001/FiiO04172118:user/dev-keys

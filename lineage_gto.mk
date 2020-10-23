# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from gto device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_DEVICE := gto
BOARD_VENDOR := samsung
# PRODUCT_BRAND := samsung
# PRODUCT_MANUFACTURER := samsung
# PRODUCT_NAME := lineage_gto
# PRODUCT_MODEL := SM-T295

# PRODUCT_GMS_CLIENTID_BASE := android-samsung
# TARGET_VENDOR := samsung
# TARGET_VENDOR_PRODUCT_NAME := gto
# PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="gtoxx-user 9 PPR1.180610.011 T295XXU3BTFE release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
ifneq ($(SIGN_BUILD), true)
PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_FINGERPRINT=samsung/gtoxx/gto:10/QP1A.190711.020/T295XXU3BTFE:user/release-keys
	PRIVATE_BUILD_DESC="gtoxx-user 10 QP1A.190711.020 T295XXU3BTFE release-keys"
endif

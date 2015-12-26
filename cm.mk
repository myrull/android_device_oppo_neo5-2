# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 854

# Release name
PRODUCT_RELEASE_NAME := oppo_neo5
PRODUCT_NAME := cm_neo5

$(call inherit-product, device/oppo/neo5/full_neo5.mk)

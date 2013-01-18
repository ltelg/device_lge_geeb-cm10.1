## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geeb/full_geeb.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geeb
PRODUCT_NAME := cm_geeb
PRODUCT_BRAND := LG
PRODUCT_MODEL := Optimus G
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/geeb:4.2/JOP40C/527662:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2 JOP40C 527662 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch

# Inherit the endeavoru device
$(call inherit-product, device/htc/endeavoru/full_endeavoru.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := endeavoru

# Inherit some common aokp stuff.
$(call inherit-product, vendor/rootbox/configs/common.mk)
$(call inherit-product, vendor/rootbox/configs/common_versions.mk)

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_endeavoru

# Device naming
PRODUCT_DEVICE := endeavoru
PRODUCT_NAME := rootbox_endeavoru
PRODUCT_BRAND := Htc
PRODUCT_MODEL := HTC One X
PRODUCT_MANUFACTURER := HTC

#Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=endeavoru BUILD_FINGERPRINT="htc_europe/endeavoru/endeavoru:4.1.1/JRO03C/128187.27:user/release-keys" PRIVATE_BUILD_DESC="3.14.401.27 CL128187 release-keys"

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

DEVICE_PACKAGE_OVERLAYS += vendor/aokp/overlay/endeavoru

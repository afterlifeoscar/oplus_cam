# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init/init.oplus.camera.rc:$(TARGET_COPY_OUT_ODM)/etc/init/init.oplus.camera.rc

# Licenses
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/licenses/license_release.lic:$(TARGET_COPY_OUT_ODM)/etc/camera/singleblur/license_release.lic \
    $(LOCAL_PATH)/configs/licenses/license_release.license:$(TARGET_COPY_OUT_ODM)/etc/camera/singleblur/license_release.license

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/oplus_google_lens_config.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/oplus_google_lens_config.xml \
    $(LOCAL_PATH)/configs/permissions/privapp-permissions-oplus.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-oplus.xml \
    $(LOCAL_PATH)/configs/sysconfig/hiddenapi-package-oplus-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/hiddenapi-package-oplus-whitelist.xml

# Oplus framework
PRODUCT_PACKAGES += \
    oplus-fwk.lahaina

PRODUCT_BOOT_JARS += \
    oplus-fwk.lahaina \
    oplus-support-wrapper

TARGET_USES_OPLUS_CAMERA := true

# Packages
PRODUCT_PACKAGES += \
    libcamera2ndk_vendor

# Properties
PRODUCT_PRODUCT_PROPERTIES += \
    persist.vendor.camera.privapp.list=com.oplus.camera \
    ro.com.google.lens.oem_camera_package=com.oplus.camera \
    ro.com.google.lens.oem_image_package=com.google.android.apps.photos

PRODUCT_SYSTEM_EXT_PROPERTIES += \
    ro.oplus.camera.video_beauty.prefix=oplus.video.beauty. \
    ro.oplus.camera.video.beauty.switch=oplus.switch.video.beauty \
    ro.oplus.camera.speechassist=true \
    ro.oplus.system.camera.flashlight=com.oplus.motor.flashlight \
    ro.oplus.system.camera.name=com.oplus.camera \
    ro.oplus.system.gallery.name=com.google.android.apps.photos

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    vendor/oplus/camera/sepolicy/vendor

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    vendor/oplus/camera/sepolicy/private

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    vendor/oplus/camera/sepolicy/public

$(call inherit-product, vendor/oplus/camera/camera-vendor.mk)


$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/vizio/XR6P10/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata \
    device/vizio/XR6P10/fstab.qcom:recovery/root/fstab.qcom \
    device/vizio/XR6P10/kernel:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := XR6P10
PRODUCT_NAME := omni_XR6P10
PRODUCT_BRAND := vizio
PRODUCT_MODEL := Vizio SmartCast
PRODUCT_MANUFACTURER := vizio
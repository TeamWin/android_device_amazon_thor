# For some stupid reason, the inherits need to be at top or build process won't work

# inherit from common hdx
-include device/amazon/hdx-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/amazon/hdx-common/BoardConfigVendor.mk

# Kernel
ifeq ($(TARGET_BUILD_VARIANT),eng)
TARGET_KERNEL_CONFIG := thor_eng_defconfig
else
TARGET_KERNEL_CONFIG := thor_defconfig
endif
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3

# Assert
TARGET_OTA_ASSERT_DEVICE := thor

# TWRP
DEVICE_RESOLUTION := 1200x1920
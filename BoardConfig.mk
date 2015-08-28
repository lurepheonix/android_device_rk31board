# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# The generic product target doesn't have any hardware-specific pieces.
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true

PRODUCT_CHARACTERISTICS := tablet

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_NEON := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a9
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_ARMV7A := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp -DROCKCHIP_HARDWARE
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp -DROCKCHIP_HARDWARE
TARGET_BOARD_PLATFORM := rk31board
TARGET_BOARD_HARDWARE := rk30board

# Rockchip hardware
BOARD_USES_ROCKCHIP_HARDWARE := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 610000000
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_USERIMAGES_USE_EXT4 := true

# Use a smaller subset of system fonts to keep image size lower
SMALLER_FONT_FOOTPRINT := true
#MINIMAL_FONT_FOOTPRINT := true

#Kernel
#THIS IS DEPRECATED
#TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
TARGET_KERNEL_BUILT_FROM_SOURCE := true
TARGET_KERNEL_CONFIG := m9pro_defconfig
TARGET_KERNEL_SOURCE := kernel/rockchip/rk31board/
KERNEL_SRC_DIR := kernel/rockchip/rk31board/

# Some framework code requires this to enable BT
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := false
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/rockchip/rk31board/bluetooth
#BOARD_BLUEDROID_VENDOR_CONF := device/rockchip/rk31board/bluetooth/vnd_rockchip.txt

# WLAN
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/etc/firmware/fw_bcm4329_p2p.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME     := "wlan"

# SELinux
BOARD_SEPOLICY_DIRS += \
	device/rockchip/rk31board/sepolicy

BOARD_SEPOLICY_UNION += \
	file_contexts \
	device.te \
	domain.te \
	drmserver.te \
	healthd.te \
	file.te \
	mediaserver.te \
	system_server.te

# Graphics
BOARD_EGL_CFG := device/rockchip/rk31board/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
#BOARD_EGL_NEEDS_LEGACY_FB := true
TARGET_USES_ION := true

# Audio
BOARD_USES_GENERIC_AUDIO := true
#BOARD_USES_ALSA_AUDIO := true
#BUILD_WITH_ALSA_UTILS := true

# Camera Setup
USE_CAMERA_STUB := true

# No HWCOMPOSER - TO DO
BOARD_USES_HWCOMPOSER := true

# Misc display settings
BOARD_USE_SKIA_LCDTEXT := true

# Enable WEBGL in WebKit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Sensors
BOARD_SENSOR_ST := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/rockchip/rk31board/kernel
TARGET_RECOVERY_INITRC := device/rockchip/rk31board/recovery/init.rc
TARGET_RECOVERY_FSTAB := device/rockchip/rk31board/recovery/recovery.fstab
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/gadget/lun%d/file"
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
BOARD_UMS_2ND_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun1/file"
BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_15x24.h\"
DEVICE_RESOLUTION := 1920x1200
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
#TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

#twrp
BOARD_CUSTOM_RECOVERY_KEYMAPPING := device/rockchip/rk31board/recovery/recovery_keys.c
#TW_BOARD_CUSTOM_GRAPHICS := ../../../device/rockchip/rk31board/recovery/graphics.c
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_SCREEN_TIMEOUT := true
TW_NO_SCREEN_BLANK := true
TW_FORCE_CPUINFO_FOR_DEVICE_ID := false
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TARGET_USERIMAGES_USE_EXT4 := true
TWHAVE_SELINUX := true
TW_NO_BATT_PERCENT := true
#TW_NO_USB_STORAGE := true
TW_INCLUDE_FB2PNG := true
#TW_ALWAYS_RMRF := true
#BOARD_HAS_FLIPPED_SCREEN := true
#RECOVERY_TOUCHSCREEN_FLIP_Y := true
#RECOVERY_TOUCHSCREEN_FLIP_X := true
#RECOVERY_SDCARD_ON_DATA := true
#TWRP_EVENT_LOGGING := true
#BOARD_HAS_NO_REAL_SDCARD := true
#TW_IGNORE_MAJOR_AXIS_0 := true

# Boot animation
TARGET_SCREEN_HEIGHT := 1200
TARGET_SCREEN_WIDTH := 1920

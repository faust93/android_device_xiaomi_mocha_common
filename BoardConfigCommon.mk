#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/xiaomi/mocha-common/include

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15
TARGET_CPU_SMP := true

# Board
TARGET_BOARD_PLATFORM := tegra
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BOARD_SUPPORT_NVOICE := true
BOARD_SUPPORT_NVAUDIOFX := true

BOARD_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED 
COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED

# Kernel
#TARGET_KERNEL_SOURCE := kernel/nvidia/shieldtablet
#TARGET_KERNEL_CONFIG := cyanogenmod_shieldtablet_defconfig
#BOARD_KERNEL_CMDLINE := "androidboot.selinux=permissive"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520 # 20M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520 # 22M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 671088640 # 619M
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13742637056 # 13G
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184 # 390M
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/backlight/pwm-backlight/brightness\"
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/xiaomi/mocha-common/recovery/recovery_keys.c
TARGET_RECOVERY_FSTAB := device/xiaomi/mocha-common/recovery.fstab
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
#RECOVERY_TOUCHSCREEN_FLIP_Y := true
#RECOVERY_TOUCHSCREEN_FLIP_X := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/xiaomi/mocha-common/kernel
BOARD_MKRECOVERYIMG_ARGS := --dt device/xiaomi/mocha-common/dt.img
PRODUCT_COPY_FILES += device/xiaomi/mocha-common/twrp.fstab:recovery/root/etc/twrp.fstab \
		      device/xiaomi/mocha-common/rootdir/etc/init:recovery/root/init \
		      device/xiaomi/mocha-common/rootdir/sbin/e2fsck_static:recovery/root/sbin/e2fsck_static

# Graphics
USE_OPENGL_RENDERER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/xiaomi/mocha-common/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/xiaomi/mocha-common/bluetooth/vnd_mocha.txt

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA          := "/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP           := "/etc/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/etc/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
#WIFI_DRIVER_MODULE_ARG           := "iface_name=wlan0"
#WIFI_DRIVER_MODULE_NAME          := "bcmdhd"

BOARD_USES_STOCK_POLICY := true

BOARD_HARDWARE_CLASS := device/xiaomi/mocha-common/cmhw/

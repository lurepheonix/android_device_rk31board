# Copyright (C) 2014 The Android Open Source Project
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

# default is nosdcard, S/W button enabled in resource
DEVICE_PACKAGE_OVERLAYS := device/rockchip/rk31board/overlay
PRODUCT_CHARACTERISTICS := tablet

# Copy prebuilt bins
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk31board/prebuilt/bin,system/bin)

# Copy prebuilt etcs
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk31board/prebuilt/etc,system/etc)

# Copy prebuilt init.d scripts
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk31board/prebuilt/etc/init.d,system/etc/init.d)

# Copy prebuilt ppp files
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk31board/prebuilt/etc/ppp,system/etc/ppp)

# Copy prebuilt usb_modeswitch.d files
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk31board/prebuilt/etc/usb_modeswitch.d,system/etc/usb_modeswitch.d)


# Copy Vendor firmware
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk31board/prebuilt/etc/firmware,system/etc/firmware)

# Copy prebuilt hw libs
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk31board/prebuilt/lib/hw,system/lib/hw)

# Copy prebuilt egl libs
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk31board/prebuilt/lib/egl,system/lib/egl)

# Copy every prebuilt libs
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk31board/prebuilt/lib,system/lib)

# Copy prebuilt modules
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk31board/prebuilt/lib/modules,system/lib/modules)

# Copy keylayouts
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk31board/prebuilt/usr/keylayout,system/usr/keylayout)

# Copy touchscreen idcs
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk31board/prebuilt/usr/idc,system/usr/idc)

# Copy temporary use prebuilt files for HW-Acceleration
#PRODUCT_COPY_FILES += \
#	$(call find-copy-subdir-files,*,device/rockchip/rk31board/hw_acc,system/lib)

# Copy ramdisk files
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk31board/ramdisk,root)

# copy Rktools
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk31board/rktools,rktools)

# copy the builder 
PRODUCT_COPY_FILES += \
	device/rockchip/rk31board/custom_boot.sh:custom_boot.sh

# These are the hardware-specific feature permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml

# Bluetooth
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk31board/bluetooth/etc/firmware,system/etc/firmware)
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk31board/bluetooth/lib/modules,system/lib/modules)
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk31board/bluetooth/vendor/lib,system/vendor/lib)

# Build.prop 
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.timezone=Europe/Moscow \
    persist.sys.language=ru \
    persist.sys.country=RU \
    ro.sf.lcd_density=240 \
    ro.sf.lcdc_composer=1 \
    ro.sf.fakerotation=false \
    ro.sf.hwrotation=0 \
    ro.camera.front.orientation=0 \
    ro.camera.back.orientation=0 \
    ro.rk.systembar.voiceicon=true \
    ro.kernel.android.checkjni=0 \
    persist.sys.ui.hw=true \
    sys.hwc.compose_policy=0 \
    ro.opengles.version=131072 \
    hwui.render_dirty_regions=false \
    qemu.hw.mainkeys=0 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=180 \
    persist.sys.usb.config=mass_storage

# Camera
PRODUCT_PACKAGES += \
    Camera \
    camera.rk30board

# Audio
PRODUCT_PACKAGES += \
   audio.primary.default \
   audio.primary.rk30board \
   audio_policy.default \
   tinyplay \
   tinycap \
   tinymix \
   audio.a2dp.default \
   audio.usb.default \
   libtinyalsa \
   libaudioutils

# Hal modules
PRODUCT_PACKAGES += \
   lights.rk30board \
   power.rk30board \
   sensors.rk30board

PRODUCT_PACKAGES += \
   librs_jni \
   com.android.future.usb.accessory

# VPU Libs
PRODUCT_PACKAGES += \
   libapedec \
   libjpeghwdec \
   libjpeghwenc \
   libOMX_Core \
   libomxvpu_dec \
   libomxvpu_enc \
   librk_demux \
   librkwmapro \
   libffmpeg \
   librk_on2 \
   libvpu

# Wifi Stuff
PRODUCT_PACKAGES := \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

# Filesystem management tools    
PRODUCT_PACKAGES += \
        make_ext4fs \
        setup_fs \
        static_busybox \
        utility_make_ext4fs \
        libstagefrighthw

# Fix for dalvik-cache
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.dexopt-data-only=1

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
        service.adb.root=1 \
        ro.secure=0 \
        ro.allow.mock.location=1 \
        ro.debuggable=1 \
        persist.sys.usb.config=mtp

# charger
PRODUCT_PACKAGES += \
	charger \
#	charger_res_images

# Copy other charger images
#PRODUCT_COPY_FILES += \
#	$(call find-copy-subdir-files,*,device/rockchip/rk31board/ramdisk/res/images/charger,root/res/images/charger)

# 3G
PRODUCT_PACKAGES += \
    chat
    
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.com.android.dataroaming=true

PRODUCT_PROPERTY_OVERRIDES += \
    ril.function.dataonly=0 \
    rild.libpath1=/system/lib/libreference-ril-mt6229.so \
    rild3.libpath=/system/lib/libril-rk29-dataonly.so 
# End 3G

# android core stuff
$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)
$(call inherit-product, build/target/product/full_base.mk)


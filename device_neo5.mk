#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Specific overlay
DEVICE_PACKAGE_OVERLAYS += device/oppo/neo5/overlay

# 
PRODUCT_PROPERTY_OVERRIDES += \
   ro.product.device=qcom \
   ro.product.model=neo5

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    device/oppo/neo5/prebuilt/etc/permissions/com.qualcomm.location.xml:system/etc/permissions/com.qualcomm.location.xml

# Configs
PRODUCT_COPY_FILES += \
    device/oppo/neo5/prebuilt/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/oppo/neo5/prebuilt/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    device/oppo/neo5/prebuilt/etc/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    device/oppo/neo5/prebuilt/etc/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
    device/oppo/neo5/prebuilt/etc/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/oppo/neo5/prebuilt/etc/wifi/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    device/oppo/neo5/prebuilt/etc/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/oppo/neo5/prebuilt/etc/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    device/oppo/neo5/prebuilt/etc/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny \
    device/oppo/neo5/prebuilt/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    device/oppo/neo5/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/oppo/neo5/prebuilt/etc/audio_effects.conf:system/etc/audio_effects.conf \
    device/oppo/neo5/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/oppo/neo5/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/oppo/neo5/prebuilt/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/oppo/neo5/prebuilt/etc/thermal-engine-8226.conf:system/etc/thermal-engine-8226.conf \
    device/oppo/neo5/prebuilt/usr/idc/touch_dev.idc:system/usr/idc/touch_dev.idc \
    device/oppo/neo5/prebuilt/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/oppo/neo5/prebuilt/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/oppo/neo5/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/oppo/neo5/prebuilt/etc/init.crda.sh:system/etc/init.crda.sh \
    device/oppo/neo5/prebuilt/etc/sap.conf:system/etc/sap.conf \
    device/oppo/neo5/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/oppo/neo5/prebuilt/etc/msap.conf:system/etc/msap.conf \
    device/oppo/neo5/prebuilt/etc/clatd.conf:system/etc/clatd.conf \
    device/oppo/neo5/prebuilt/etc/sec_config:system/etc/sec_config \
    device/oppo/neo5/prebuilt/etc/izat.conf:system/etc/izat.conf \
    device/oppo/neo5/prebuilt/etc/boot_fixup:system/etc/boot_fixup \
    device/oppo/neo5/prebuilt/etc/quipc.conf:system/etc/quipc.conf \
    device/oppo/neo5/prebuilt/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/oppo/neo5/prebuilt/etc/init.qcom.ssr.sh:system/etc/init.qcom.ssr.sh \
    device/oppo/neo5/prebuilt/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    device/oppo/neo5/prebuilt/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh


# Ramdisk
PRODUCT_COPY_FILES += \
    device/oppo/neo5/rootdir/charger:root/charger \
    device/oppo/neo5/rootdir/fstab.qcom:root/fstab.qcom \
    device/oppo/neo5/rootdir/init.at.rc:root/init.at.rc \
    device/oppo/neo5/rootdir/init.oppo.rc:root/init.oppo.rc \
    device/oppo/neo5/rootdir/init.oppo.usb.rc:root/init.oppo.usb.rc \
    device/oppo/neo5/rootdir/init.prop.self_adaptive.sh:root/init.prop.self_adaptive.sh \
    device/oppo/neo5/rootdir/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    device/oppo/neo5/rootdir/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    device/oppo/neo5/rootdir/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    device/oppo/neo5/rootdir/init.qcom.factory.sh:root/init.qcom.factory.sh \
    device/oppo/neo5/rootdir/init.qcom.rc:root/init.qcom.rc \
    device/oppo/neo5/rootdir/init.qcom.ril.sh:root/init.qcom.ril.sh \
    device/oppo/neo5/rootdir/init.qcom.sensor.sh:root/init.qcom.sensor.sh \
    device/oppo/neo5/rootdir/init.qcom.sh:root/init.qcom.sh \
    device/oppo/neo5/rootdir/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
    device/oppo/neo5/rootdir/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    device/oppo/neo5/rootdir/init.qcom.usb.sh:root/init.qcom.usb.sh \
    device/oppo/neo5/rootdir/init.qcom.wcnss3660.sh:root/init.qcom.wcnss3660.sh \
    device/oppo/neo5/rootdir/init.rf.modem.test.sh:root/init.rf.modem.test.sh \
    device/oppo/neo5/rootdir/init.rf.rc:root/init.rf.rc \
    device/oppo/neo5/rootdir/init.target.rc:root/init.target.rc \
    device/oppo/neo5/rootdir/init.trace.rc:root/init.trace.rc \
    device/oppo/neo5/rootdir/init.usb.rc:root/init.usb.rc \
    device/oppo/neo5/rootdir/init.wlan.rc:root/init.wlan.rc \
    device/oppo/neo5/rootdir/mem_proc_slab.sh:root/mem_proc_slab.sh \
    device/oppo/neo5/rootdir/ueventd.rc:root/ueventd.rc \
    device/oppo/neo5/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc


# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio_policy.msm8226 \
    audio.primary.msm8226 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libqcomvisualizer \
    libqcompostprocbundle \
    libqcomvoiceprocessing \
    libaudio-resampler \
    libaudioparameter \
    tinymix

# Misc
PRODUCT_PACKAGES += \
    curl \
    libbson \
    libcurl \
    tcpdump \
    Torch

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Crda
PRODUCT_PACKAGES += \
    crda \
    linville.key.pub.pem \
    regdbdump \
    regulatory.bin

# Qcom SoftAP
PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    HoloSpiralWallpaper \
    VisualizationWallpapers \
    librs_jni

# Wifi
PRODUCT_PACKAGES += \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf \
    libwcnss_qmi

# Charger
PRODUCT_PACKAGES += charger charger_res_images

# QRNGD
PRODUCT_PACKAGES += qrngd

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# GPS
PRODUCT_PACKAGES += \
    gps.msm8226

# HAL
PRODUCT_PACKAGES += \
    copybit.msm8226\
    gralloc.msm8226 \
    hwcomposer.msm8226 \
    keystore.msm8226 \
    lights.msm8226 \
    memtrack.msm8226 \
    power.msm8226

# QRNG
PRODUCT_PACKAGES += qrngp

# Utilities
PRODUCT_PACKAGES += \
    charge_only_mode \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    wcnss_service

# EGL config
PRODUCT_COPY_FILES += \
    device/oppo/neo5/prebuilt/egl.cfg:system/lib/egl/egl.cfg

# Opengles version 3
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.hw=1 \
    debug.sf.hw=1 \
    debug.composition.type=dyn \
    persist.hwc.mdpcomp.enable=true \
    debug.mdpcomp.logs=0 \
    debug.enabletr=0 \
    ro.sf.lcd_density=210

# QCOM Display
PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer

# Omx
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libdashplayer \
    qcmediaplayer

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

#wifi
PRODUCT_PACKAGES += \
    hostapd.accept \
    hostapd.deny \
    hostapd_default.conf \
    libnetcmdiface

PRODUCT_PACKAGES += \
    wcnss_service \
    pronto_wlan.ko

# QCOM
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    ro.qc.sdk.audio.ssr=false

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.hfp.ver=1.6 \
    ro.qualcomm.bluetooth.sap=true \
    ro.qualcomm.bt.hci_transport=smd \
    ro.bluetooth.request.master=true \
    ro.bluetooth.remote.autoconnect=true

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    lpa.decode=true \
    qcom.hw.aac.encoder=true \
    af.resampler.quality=255 \
    persist.audio.lowlatency.rec=false \
    lpa.use-stagefright=true \
    media.stagefright.enable-player=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-scan=true \
    mmp.enable.3g2=true \
    ro.audio.fm_max_volume=4096 \
    ro.qualcomm.cabl=0 \
    use.voice.path.for.pcm.voip=true \
    qcom.bt.le_dev_pwr_class=1 \
    ro.qc.sdk.audio.ssr=false \
    persist.audio.fluence.voicecall=false \
    persist.audio.fluence.voicerec=false \
    ro.qc.sdk.audio.fluencetype=none \
    persist.audio.fluence.speaker=false \
    use.voice.path.for.pcm.voip=true \
    use.dedicated.device.for.voip=true \
    audio.offload.buffer.size.kb=32 \
    audio.offload.gapless.enabled=false \
    av.offload.enable=false \
    av.streaming.offload.enable=false \
    audio.offload.pcm.enable=false \
    mm.enable.smoothstreaming=true
#    persist.audio.calfile0=/etc/Bluetooth_cal.acdb \
#    persist.audio.calfile1=/etc/General_cal.acdb \
#    persist.audio.calfile2=/etc/Global_cal.acdb \
#    persist.audio.calfile3=/etc/Handset_cal.acdb \
#    persist.audio.calfile4=/etc/Hdmi_cal.acdb \
#    persist.audio.calfile5=/etc/Headset_cal.acdb \
#    persist.audio.calfile6=/etc/Speaker_cal.acdb

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.qc.sub.rstrtlvl=3 \
    persist.sys.qc.sub.rdump.on=1 \
    persist.sys.qc.sub.rdump.max=20
#    wifi.interface=wlan0 \
#    wifi.supplicant_scan_interval=15

# Radio and Telephony
PRODUCT_PROPERTY_OVERRIDES += \
    ro.use_data_netmgrd=true \
    telephony.lteOnCdmaDevice=0 \
    ro.telephony.default_network=9 \
    ro.telephony.default_network=20 \
    persist.data.netmgrd.qos.enable=true
#    ro.ril.transmitpower=true \
#    persist.radio.apm_sim_not_pwdn=1 \
#    persist.radio.call_type=1 \
#    ro.config.vc_call_vol_steps=7 \
#    ro.modem.no_wdog_chk=1 \
#    persist.call_recording.enabled=1 \

# QC time services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

# Enable KSM by default
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ksm.default=1

# CmUpdater
# PRODUCT_PROPERTY_OVERRIDES += \
#     cm.updater.uri=http://api.quarx.cm-for.us/api \


# Use reference RIL for initial bringup
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/vendor/lib/libril-qc-qmi-1.so \
    rild.libargs=-d /dev/smd0 \
    persist.rild.nitz_plmn= \
    persist.rild.nitz_long_ons_0= \
    persist.rild.nitz_long_ons_1= \
    persist.rild.nitz_long_ons_2= \
    persist.rild.nitz_long_ons_3= \
    persist.rild.nitz_short_ons_0= \
    persist.rild.nitz_short_ons_1= \
    persist.rild.nitz_short_ons_2= \
    persist.rild.nitz_short_ons_3= \
    ril.subscription.types=NV,RUIM \
    DEVICE_PROVISIONED=1

# Tunnel Config Prop
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.msgtunnel.start=false \
    tunnel.decode=false \
    tunnel.audiovideo.decode=true \
    tunnel.audio.encode = true

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_LOCALES := ID
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

$(call inherit-product, vendor/oppo/neo5/neo5-vendor.mk)

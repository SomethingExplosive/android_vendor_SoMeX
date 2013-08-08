# Copyright (C) 2013 The SomethingExplosive Project
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
# This file provides the build settings/overrides/overlays for all devices.
#

SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.cyanogenmod.superuser

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Add prebuilts and scripts
PRODUCT_COPY_FILES += \
    vendor/SoMeX/prebuilt/common/media/bootanimation/bootanimation.zip:system/media/bootanimation.zip \
    vendor/SoMeX/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/SoMeX/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Required SoMeX packages
PRODUCT_PACKAGES += \
    Camera \
    LatinIME \
    Superuser \
    su \
    busybox

# Optional SoMeX packages
PRODUCT_PACKAGES += \
    VideoEditor \
    VoiceDialer \
    Basic \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam \
    GooManager

# Common SoMeX overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/SoMeX/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/SoMeX/overlay/dictionaries

# Common SoMeX ROM version
PRODUCT_VERSION_MAJOR = 1
PRODUCT_VERSION_MINOR = 2
PRODUCT_VERSION_MAINTENANCE = 1

# Assemble SoMeX build version
BUILD_VERSION = $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)

# Set MOD and ROM versions, goo.im stuff
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=SomethingExplosive-$(BUILD_VERSION) \
    ro.romversion=$(BUILD_VERSION) \
    ro.goo.developerid=something15525 \
    ro.goo.rom=SoMeX \
    ro.goo.version=$(shell date +%s)

# Default ringtones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Girtab.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Hassium.ogg

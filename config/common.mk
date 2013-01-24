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

# Copy over bootanimation.zip
PRODUCT_COPY_FILES += \
    vendor/sjelly/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Required SJelly packages
PRODUCT_PACKAGES += \
    Camera \
    LatinIME \
    SuperSU \
    busybox

# Optional SJelly packages
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
    PhaseBeam

# Common SJelly overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/sjelly/overlay/common

# Common SJelly ROM version
PRODUCT_VERSION_MAJOR = 0
PRODUCT_VERSION_MINOR = 7
PRODUCT_VERSION_MAINTENANCE = 0

# Assemble SJelly build version
BUILD_VERSION = $(ROM_VERSION_MAJOR).$(ROM_VERSION_MINOR).$(ROM_VERSION_MAINTENANCE)

# Set MOD and ROM versions
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=SomethingJelly-$(BUILD_VERSION) \
    ro.romversion=$(BUILD_VERSION)

# Default ringtones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Girtab.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg

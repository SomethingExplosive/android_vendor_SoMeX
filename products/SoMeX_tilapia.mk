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
# This file is the build configuration for a AOSP/SomethingExplosive
# build for tilapia hardware.
#

# Inherit commons
$(call inherit-product, vendor/SoMeX/config/common_full_tablet_wifionly.mk)

# Inherit common GSM settings
$(call inherit-product, vendor/SoMeX/config/gsm.mk)

# Inherit from those products
$(call inherit-product, device/asus/tilapia/aosp_tilapia.mk)

# Tilapia overrides
PRODUCT_PROPERTY_OVERRIDES += \
     ro.camera.res=5MP

PRODUCT_BUILD_PROP_OVERRIDES += \
     PRODUCT_NAME=nakasig \
     BUILD_FINGERPRINT=google/nakasig/tilapia:4.4/KRT16S/920375:user/release-keys \
     PRIVATE_BUILD_DESC="nakasig-user 4.4 KRT16S 920375 release-keys"

# Set correct product information
PRODUCT_NAME := SoMeX_tilapia
PRODUCT_DEVICE := tilapia
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

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
# This file is the build configuration for an AOSP/SomethingExplosive
# build for grouper hardware.
#

# Inherit commons
$(call inherit-product, vendor/SoMeX/config/common_full_tablet_wifionly.mk)

# Inherit from those products
$(call inherit-product, device/asus/grouper/aosp_grouper.mk)

# Copy needed grouper files
PRODUCT_COPY_FILES += \
     device/asus/grouper/vold.fstab:system/etc/vold.fstab

# Grouper overrides
PRODUCT_PROPERTY_OVERRIDES += \
     ro.camera.res=5MP

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_DISPLAY_ID=JSS15J BUILD_FINGERPRINT="google/nakasi/grouper:4.3/JSS15J/737497:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.3 JSS15J 737497 release-keys"

# Set correct product information
PRODUCT_NAME := SoMeX_grouper
PRODUCT_DEVICE := grouper
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus
PRODUCT_RESTRICT_VENDOR_FILES := false

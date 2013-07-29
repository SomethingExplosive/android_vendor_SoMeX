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
# build for toroplus hardware.
#

# Inherit common phone settings
$(call inherit-product, vendor/SoMeX/config/common_full_phone.mk)

# Inherit common CDMA settings
$(call inherit-product, vendor/SoMeX/config/cdma.mk)

# Inherit from those products
$(call inherit-product, device/samsung/toroplus/aosp_toroplus.mk)

# Copy over toroplus files
PRODUCT_COPY_FILES += \
    device/samsung/toroplus/vold.fstab:system/etc/vold.fstab

# toroplus overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_DISPLAY_ID=JSS15J BUILD_FINGERPRINT="samsung/mysidspr/toroplus:4.3/JSS15J/737497:user/release-keys" PRIVATE_BUILD_DESC="mysidspr-user 4.3 JSS15J 737497 release-keys"

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := SoMeX_toroplus
PRODUCT_DEVICE := toroplus
PRODUCT_BRAND := Google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
PRODUCT_RESTRICT_VENDOR_FILES := false

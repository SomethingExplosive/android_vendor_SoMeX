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
# build for deb hardware.
#

# Inherit commons
$(call inherit-product, vendor/SoMeX/config/common_full_tablet_wifionly.mk)

# Inherit common GSM settings
$(call inherit-product, vendor/SoMeX/config/gsm.mk)

# Inherit from those products
$(call inherit-product, device/asus/deb/aosp_deb.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razor BUILD_DISPLAY_ID=JSS15Q BUILD_FINGERPRINT="google/razor/deb:4.3/JSS15Q/748593:user/release-keys" PRIVATE_BUILD_DESC="razor-user 4.3 JSS15Q 748593 release-keys"

# Set correct product information
PRODUCT_NAME := SoMeX_deb
PRODUCT_DEVICE := deb
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus
PRODUCT_RESTRICT_VENDOR_FILES := false

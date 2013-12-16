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
# build for toro hardware.
#

# Inherit common phone settings
$(call inherit-product, vendor/SoMeX/config/common_full_phone.mk)

# Inherit from those products
$(call inherit-product, device/samsung/toro/aosp_toro.mk)

# toro overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
     PRODUCT_NAME=mysid \
     BUILD_FINGERPRINT=google/mysid/toro:4.2.2/JDQ39/573038:user/release-keys \
     PRIVATE_BUILD_DESC="mysid-user 4.2.2 JDQ39 573038 release-keys"

# Enable Torch
PRODUCT_PACKAGES += \
        Torch

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := SoMeX_toro
PRODUCT_DEVICE := toro
PRODUCT_BRAND := Google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
PRODUCT_RESTRICT_VENDOR_FILES := false

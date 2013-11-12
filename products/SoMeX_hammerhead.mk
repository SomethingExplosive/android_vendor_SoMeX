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
# build for hammerhead hardware.
#

# Inherit common phone settings
$(call inherit-product, vendor/SoMeX/config/common_full_phone.mk)

# Inherit from those products
$(call inherit-product, device/lge/hammerhead/aosp_hammerhead.mk)

# hammerhead overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=hammerhead BUILD_FINGERPRINT=google/hammerhead/hammerhead:4.4/KRT16M/893803:user/release-keys PRIVATE_BUILD_DESC="hammerhead-user 4.4 KRT16M 893803 release-keys"

# Enable Torch
PRODUCT_PACKAGES += \
        Torch

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := SoMeX_hammerhead
PRODUCT_DEVICE := hammerhead
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

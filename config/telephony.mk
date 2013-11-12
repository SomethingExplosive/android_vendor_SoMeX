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
# This file provides the apns for all data-enabled devices.
#

# World APN list
PRODUCT_COPY_FILES += \
    vendor/SoMeX/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# World SPN overrides list
PRODUCT_COPY_FILES += \
    vendor/SoMeX/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk


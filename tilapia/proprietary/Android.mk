# Copyright (C) 2011 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),tilapia)

# /system/app

include $(CLEAR_VARS)
LOCAL_MODULE := Superuser
LOCAL_MODULE_OWNER := ChainsDD
LOCAL_SRC_FILES := system/app/Superuser.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := PRESIGNED
LOCAL_MODULE_PATH := $(TARGET_OUT_APPS)
include $(BUILD_PREBUILT)

# /system/media

include $(CLEAR_VARS)
LOCAL_MODULE := bootanimation_zip
LOCAL_MODULE_STEM := bootanimation
LOCAL_MODULE_OWNER := unknown
LOCAL_SRC_FILES := system/media/bootanimation.zip
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .zip
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/media
include $(BUILD_PREBUILT)

# /system/xbin

include $(CLEAR_VARS)
LOCAL_MODULE := su_binary
LOCAL_MODULE_STEM := su
LOCAL_MODULE_OWNER := ChainsDD
LOCAL_OVERRIDES_PACKAGES := su
LOCAL_SRC_FILES := system/xbin/su
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
include $(BUILD_PREBUILT)

endif

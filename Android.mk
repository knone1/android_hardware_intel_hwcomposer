# Copyright (C) 2008 The Android Open Source Project
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
include $(CLEAR_VARS)

ifneq ($(USE_INTEL_UFO_DRIVER),true)

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_SHARED_LIBRARIES := liblog libEGL libhardware libutils libdrm
LOCAL_CFLAGS := -DEGL_EGLEXT_PROTOTYPES
LOCAL_C_INCLUDES += frameworks/native/include/utils/ hardware/drm_gralloc external/drm external/drm/include/drm
LOCAL_SRC_FILES := hwcomposer.cpp
LOCAL_MODULE := hwcomposer.$(TARGET_PRODUCT)
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

endif # USE_INTEL_UFO_DRIVER

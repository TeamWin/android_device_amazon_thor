# Copyright (C) 2010 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 1080x608

#why this needs to be included before the others, i'll never know.
TARGET_QCOM_DISPLAY_VARIANT := caf-msm8974
TARGET_QCOM_AUDIO_VARIANT := caf-msm8974
TARGET_QCOM_MEDIA_VARIANT := caf-msm8974

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, device/amazon/thor/device.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_thor
PRODUCT_DEVICE := thor
PRODUCT_BRAND := Amazon
PRODUCT_MANUFACTURER := Amazon

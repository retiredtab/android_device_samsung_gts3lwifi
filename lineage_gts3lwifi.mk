#
# Copyright (C) 2020-2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from gts3lwifi device
$(call inherit-product, device/samsung/gts3lwifi/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gts3lwifi
PRODUCT_NAME := lineage_gts3lwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T820
PRODUCT_MANUFACTURER := samsung

PRODUCT_SYSTEM_NAME := gts3lwifi

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# https://review.lineageos.org/c/LineageOS/android_build_soong/+/401215
# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=gts3lwifi \
    BuildDesc="gts3lwifixx-user 9 PPR1.180610.011 T820XXU3CTD5 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "samsung/gts3lwifixx/gts3lwifi:9/PPR1.180610.011/T820XXU3CTD5:user/release-keys"

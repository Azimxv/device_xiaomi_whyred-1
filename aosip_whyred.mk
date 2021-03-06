#
# Copyright (C) 2018-2019 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common AOSiP stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Inherit from whyred device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Bootanimation world
TARGET_BOOT_ANIMATION_RES := 1080
IS_PHONE := true

# Inherit from custom vendor
$(call inherit-product, vendor/MiuiCamera/config.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := whyred
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := aosip_whyred
PRODUCT_MODEL := Redmi Note 5 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := whyred

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="whyred" \
    PRODUCT_NAME="whyred" \

AOSIP_BUILDTYPE := Azimxv-Edition
PRODUCT_PROPERTY_OVERRIDES += \
    ro.aosip.maintainer=AzimovHero

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DISC="coral-user 11 RP1A.201105.002 6869500 release-keys"

# Build FP to be picked by both system and vendor
BUILD_FINGERPRINT := "google/coral/coral:11/RP1A.201105.002/6869500:user/release-keys"
PLATFORM_SECURITY_PATCH_OVERRIDE := 2020-11-05

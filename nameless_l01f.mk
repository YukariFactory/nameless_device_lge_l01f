#
# Copyright 2012 The Android Open Source Project
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

# Inherit APNs list
$(call inherit-product, vendor/nameless/config/apns.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/nameless/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/l01f/l01f.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := l01f
PRODUCT_NAME := nameless_l01f
PRODUCT_BRAND := LGE
PRODUCT_MODEL := L-01F
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += \
BUILD_FINGERPRINT=lge/g2_dcm_jp/g2:4.2.2/JDQ39B/L01F11k.1386142206:user/release-keys \
    PRIVATE_BUILD_DESC="g2_dcm_jp-user 4.2.2 JDQ39B L01F11k.1386142206 release-keys"

# Inherit the SIM Toolkit
PRODUCT_PACKAGES += Stk

# Enable Torch
PRODUCT_PACKAGES += Torch
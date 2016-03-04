#
# Copyright (C) 2007 The Android Open Source Project
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

# Base configuration for communication-oriented android devices
# (phones, tablets, etc.).  If you want a change to apply to ALL
# devices (including non-phones and non-tablets), modify
# core_minimal.mk instead.

PRODUCT_PACKAGES += \
    BasicDreams \
    Browser \
    Calculator \
    Calendar \
    CalendarProvider \
    CaptivePortalLogin \
    CertInstaller \
    Contacts \
    DeskClock \
    DocumentsUI \
    DownloadProviderUi \
    Email \
    Exchange2 \
    ExternalStorageProvider \
    FusedLocation \
    InputDevices \
    KeyChain \
    Keyguard \
    LatinIME \
    Launcher2 \
    ManagedProvisioning \
    PicoTts \
    PacProcessor \
    libpac \
    PrintSpooler \
    ProxyHandler \
    Settings \
    SharedStorageBackup \
    Telecom \
    TeleService \
    VpnDialogs \
    MmsService

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_base.mk)

# Lenovo-sw SystemTheme liqf1 add 20150122 ,support LenovoThemePackage LVPCCR-22*/
# Lenovo-SW PATCHROM_themepackage caihn added 2014-06-03 begin , support lenovo theme package
$(call inherit-product, frameworks/base/LenovoThemePackage/android_4.4/theme.mk)
# Lenovo-SW PATCHROM_themepackage caihn added 2014-06-03 end
#Lenovo-sw FONT linrq1 LVPCCR-20 add 20141204, for font begin
$(call inherit-product, frameworks/base/LenovoFontManager/resources/resources.mk)
#Lenovo-sw FONT linrq1 LVPCCR-20 add 20141204, for font end

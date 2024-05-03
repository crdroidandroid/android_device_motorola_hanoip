#!/bin/bash

# Clone harware
git clone --depth=1 https://github.com/Sozosha-Dev/packages_apps_MotoActions -b fourteen-qpr2 packages/apps/MotoActions

# Clone system/qcom
git clone https://github.com/LineageOS/android_system_qcom system/qcom

# Clone ViPER4AndroidFX
git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX packages/apps/ViPER4AndroidFX

# Clone bcr
git clone https://github.com/kenway214/vendor_bcr.git vendor/bcr

# Clone vendor OSS
git clone https://github.com/Hanoip-Development/proprietary_vendor_motorola_hanoip vendor/motorola/hanoip

# Clone Kernel
git clone --depth=1 https://github.com/Sozosha-Dev/kernel_motorola_sm6150 kernel/motorola/hanoip

# CCache
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
ccache -o compression=true

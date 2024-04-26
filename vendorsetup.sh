#!/bin/bash

# Clonar el repositorio packages_apps_MotoActions desde la rama fourteen-qpr2 con profundidad 1
git clone --depth=1 https://github.com/Sozosha-Dev/packages_apps_MotoActions -b fourteen-qpr2 packages/apps/MotoActions

# Clonar el repositorio android_system_qcom en el directorio system/qcom
git clone https://github.com/LineageOS/android_system_qcom system/qcom

# Clonar el repositorio packages_apps_ViPER4AndroidFX
git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX packages/apps/ViPER4AndroidFX

# Clonar bcr
git clone https://github.com/kenway214/vendor_bcr.git vendor/bcr

# Configurar el uso de ccache
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
ccache -o compression=true

# Desayunar el dispositivo hanoip
breakfast hanoip

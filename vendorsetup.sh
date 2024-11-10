#!/bin/bash

# Add vendor, device, hardware, and other repos
export VENDOR=xiaomi
export DEVICE=sky
export DEVICE_KERNEL=sky-kernel
export HARDWARE=xiaomi
export VENDOR_BCR=bcr

# Initialize the environment
echo "Setting up the vendor and device environment for $DEVICE..."

# Adding vendor files
mkdir -p vendor/xiaomi
git clone https://github.com/pixelstar-devices/vendor_xiaomi_sky.git vendor/xiaomi/sky

# Adding kernel files
mkdir -p device/xiaomi
git clone https://github.com/pixelstar-devices/device_xiaomi_sky-kernel.git device/xiaomi/sky-kernel

# Adding hardware files
mkdir -p hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi.git hardware/xiaomi

# Adding additional vendor files
mkdir -p vendor/bcr
git clone https://github.com/suvojit213/vendor_bcr.git vendor/bcr

# Notify user
echo "Vendor setup complete. All repositories have been cloned."

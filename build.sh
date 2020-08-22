#!/bin/bash

# clone gcc toolchain from lineage q

git clone https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9.git -b lineage-17.1 arm64 --depth=1
git clone https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_arm_arm-linux-androideabi-4.9.git -b lineage-17.1 arm32 --depth=1

# clean output directory and last log file

rm -rf out
rm -rf build1.log

# Start

mkdir -p out

#make O=out clean && make O=out mrproper  // broken on this source

make O=out ARCH=arm64 oppo6771_defconfig


make -j$(nproc --all) O=out \
                      ARCH=arm64 \
                      CROSS_COMPILE="$(pwd)/arm64/bin/aarch64-linux-android-" \
                      CROSS_COMPILE_ARM32="$(pwd)/arm32/bin/arm-linux-androideabi-" \
                      | tee build1.log

# End

mkdir -p out
make O=out ARCH=arm64 oppo6771_defconfig
PATH=../clang/bin:../aarch64-linux-android-4.9/bin:../arm-linux-androideabi-4.9/bin:${PATH}
make -j$(nproc --all) O=out ARCH=arm64 CC=clang CROSS_COMPILE=aarch64-linux-android- CROSS_COMPILE_ARM32=arm-linux-androideabi-

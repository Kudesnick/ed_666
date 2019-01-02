#!/bin/bash

output="output"

cp ../edison_defconfigs/kernel_edison_defconfig arch/x86/configs/edison_defconfig

make clean
make edison_defconfig
make -j8

mkdir ../release/output/
mv arch/x86/boot/bzImage ../release/$output/bzImage
mv arch/x86/configs/edison_defconfig ../release/$output/kernel_edison_defconfig
make clean


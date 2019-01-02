#!/bin/bash

output="output"

cp ../edison_defconfigs/buildroot_edison_defconfig configs/edison_defconfig

make clean
make edison_defconfig
make 

mkdir ../release/output/
mv output/images/rootfs.cpio.bz2 ../release/$output/rootfs.cpio.bz2
mv configs/edison_defconfig ../release/$output/buildroot_edison_defconfig
make clean


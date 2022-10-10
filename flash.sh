#!/usr/bin/env zsh


pushd output/images


xfel spinand erase 0x000000 134217728
xfel spinand splwrite 0x400 0x0 sunxi-spl.bin
xfel spinand write 0x20000 u-boot.img
xfel spinand write 0x100000 rootfs.ubi

xfel reset

popd

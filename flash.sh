#!/usr/bin/env zsh

set -ex

flash() {
    xfel spinand erase 0x000000 134217728
    xfel spinand splwrite 0x400 0x0 sunxi-spl.bin
    xfel spinand write 0x20000 u-boot.img
    xfel spinand write 0x100000 rootfs.ubi

    xfel reset
}

CURRENT_DIR=$(basename "$PWD")

if [[ $CURRENT_DIR != images ]]
then
    pushd output/images
    flash
    popd
elif [[ $CURRENT_DIR = images ]]
then
    flash
fi
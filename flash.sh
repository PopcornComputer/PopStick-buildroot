#!/usr/bin/env zsh
setopt aliases
alias trace_on='set -ex'
alias trace_off='{ PREV_STATUS=$? ; set +x; } 2>/dev/null; exit $PREV_STATUS'
echo "Starting PopStick flashing sequence..."
CURRENT_DIR=$(basename "$PWD")

flash() {
    trace_on
    xfel spinand erase 0x000000 134217728
    xfel spinand splwrite 0x400 0x0 sunxi-spl.bin
    xfel spinand write 0x20000 u-boot.img
    xfel spinand write 0x100000 rootfs.ubi

    xfel reset
    trace_off
}

if [[ $CURRENT_DIR = PopStick-buildroot ]]
then
    pushd output/images
    flash
    popd
else
    flash
fi

echo "Done"

# activate the correct python environment
if [[ -f ".venv/bin/activate" ]]; then
    source .venv/bin/activate
elif [[ -f "venv/bin/activate" ]]; then
    source venv/bin/activate
fi

export ZEPHYR_BASE="$(west topdir)/zephyr"
export ZEPHYR_MCUBOOT_MODULE_DIR="$(west topdir)/bootloader/mcuboot"

export GCC_ARM_NAME=gcc-arm-none-eabi-10-2020-q4-major
export CROSS_COMPILE=zephyr
export ZEPHYR_TOOLCHAIN_VARIANT=gnuarmemb
export GNUARMEMB_TOOLCHAIN_PATH=/opt/toolchains/${GCC_ARM_NAME}

source $ZEPHYR_BASE/zephyr-env.sh


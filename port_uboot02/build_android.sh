#!/bin/bash
set -e

echo "=============================="
echo " U-Boot build script (stable)"
echo "=============================="

# 1. 强制干净环境（关键！解决你所有 implicit declaration 问题）
unset CC CXX HOSTCC CFLAGS CPPFLAGS LDFLAGS CROSS_COMPILE ARCH

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# 2. 明确 host compiler（解决 kconfig 编译）
export HOSTCC=gcc

# 3. ARM target toolchain
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-

echo "[1/4] cleaning..."
make distclean

echo "[2/4] check toolchain..."
$CROSS_COMPILE"gcc" -v | head -n 3

echo "[3/4] build defconfig..."
make mx6ull_14x14_evk_emmc_defconfig HOSTCC=gcc

echo "[4/4] compiling..."
make -j$(nproc) HOSTCC=gcc

echo "=============================="
echo "Build finished successfully"
echo "=============================="


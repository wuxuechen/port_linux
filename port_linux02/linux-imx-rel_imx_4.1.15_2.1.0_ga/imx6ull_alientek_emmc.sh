source /opt/fsl-imx-x11/4.1.15-2.1.0/environment-setup-cortexa7hf-neon-poky-linux-gnueabi
make distclean
make imx_alientek_emmc_defconfig -j$(nproc)
make menuconfig
make HOSTCFLAGS="-fcommon" HOSTCXXFLAGS="-fcommon" all -j$(nproc)
# make HOSTCFLAGS="-fcommon" HOSTCXXFLAGS="-fcommon" imx6ull-14x14-emmc-4.3-800x480-c.dtb


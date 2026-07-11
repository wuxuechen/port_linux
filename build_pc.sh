source /opt/fsl-imx-x11/4.1.15-2.1.0/environment-setup-cortexa7hf-neon-poky-linux-gnueabi
make distclean
make imx_v7_defconfig -j 16
make HOSTCFLAGS="-fcommon" HOSTCXXFLAGS="-fcommon" zImage -j$(nproc)
make HOSTCFLAGS="-fcommon" HOSTCXXFLAGS="-fcommon" imx6ull-14x14-emmc-4.3-800x480-c.dtb

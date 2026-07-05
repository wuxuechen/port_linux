# 1. 创建一个 64MB 的空镜像（大小随意，只要大于uboot即可）
dd if=/dev/zero of=sdcard.img bs=1M count=64
# 2. 把 u-boot.imx 写到 1KB 偏移处（关键！）
dd if=u-boot.imx of=sdcard.img bs=1K seek=1 conv=notrunc

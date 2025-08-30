#扩容2GB
dd if=/dev/zero bs=1G count=2 >> openwrt-23.05.5-armsr-armv8-generic-squashfs-combined

parted openwrt-23.05.5-armsr-armv8-generic-squashfs-combined
print
resizepart 2 100%

parted /dev/mmcblk1
resizepart 3 100%

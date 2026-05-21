define Device/nradio_c8660
  DEVICE_VENDOR := NRadio
  DEVICE_MODEL := C8-660
  DEVICE_DTS := mt7981-nradio-c8660
  DEVICE_DTS_DIR := ../dts
  DEVICE_PACKAGES := kmod-usb3 kmod-mt7915e kmod-mt7981-firmware \
	kmod-usb-net-qmi-wwan kmod-usb-serial-option uqmi \
	mt7981-wo-firmware automount
  UBINIZE_OPTS := -E 5
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  IMAGE_SIZE := 65536k
  KERNEL_IN_UBI := 1
  IMAGES += factory.bin
  IMAGE/factory.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += nradio_c8660

define Device/nradio_c8660
  DEVICE_VENDOR := NRadio
  DEVICE_MODEL := C8-660
  DEVICE_DTS := mt7981-nradio-c8660
  DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
  SUPPORTED_DEVICES := nradio,c8660
  IMAGE_SIZE := 128m
  IMAGES += sysupgrade.bin
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef
TARGET_DEVICES += nradio_c8660

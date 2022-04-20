#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:14042412:69a1fc5e3f7be0fb14d5abf32c2317995137b08b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:9432360:9509da2d8fa8ca48e947155b78551b6f47d19cb1 EMMC:/dev/block/platform/bootdevice/by-name/recovery 69a1fc5e3f7be0fb14d5abf32c2317995137b08b 14042412 9509da2d8fa8ca48e947155b78551b6f47d19cb1:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

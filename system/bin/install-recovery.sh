#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32785742:90480ad85c1d42c4528ba012df61308c3915df50; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27917642:c8dfd2cae1cb8c9bcf6ab897f68985d1b70357c5 EMMC:/dev/block/bootdevice/by-name/recovery 90480ad85c1d42c4528ba012df61308c3915df50 32785742 c8dfd2cae1cb8c9bcf6ab897f68985d1b70357c5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

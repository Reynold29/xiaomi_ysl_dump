#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32779598:9cf103045473ce7a2a77f1654b1c7622f5bfe803; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27915594:0dce5e508c8e72ee9db757330b464d2687a7acf2 EMMC:/dev/block/bootdevice/by-name/recovery 9cf103045473ce7a2a77f1654b1c7622f5bfe803 32779598 0dce5e508c8e72ee9db757330b464d2687a7acf2:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

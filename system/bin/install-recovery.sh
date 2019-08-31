#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:30367054:7267dad0587c286eeaf385b60e968bd74c81d11c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26924362:2549cc42b5468dc81fda46e4efc1e8ee996fc9cc EMMC:/dev/block/bootdevice/by-name/recovery 7267dad0587c286eeaf385b60e968bd74c81d11c 30367054 2549cc42b5468dc81fda46e4efc1e8ee996fc9cc:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

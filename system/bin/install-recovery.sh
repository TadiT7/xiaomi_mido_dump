#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29265230:529b3acb29ed11c85fa677e8d8db9c4a5caea04e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26273098:60b0785ac300e4c2a7700cca1e06fb4a390a7d70 EMMC:/dev/block/bootdevice/by-name/recovery 529b3acb29ed11c85fa677e8d8db9c4a5caea04e 29265230 60b0785ac300e4c2a7700cca1e06fb4a390a7d70:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 12324864 05a69988bd307c9dc05388ed5e370ae3568e4a7b 10067968 6e6c8f3df0e1431c3c09ea89d11a8ae10312a207
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:12324864:05a69988bd307c9dc05388ed5e370ae3568e4a7b; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:10067968:6e6c8f3df0e1431c3c09ea89d11a8ae10312a207 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 05a69988bd307c9dc05388ed5e370ae3568e4a7b 12324864 6e6c8f3df0e1431c3c09ea89d11a8ae10312a207:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi

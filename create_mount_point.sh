vgcreate vg_app /dev/vdb
lvcreate -l 100%FREE -n lv_app vg_app
mkfs.xfs /dev/vg_app/lv_app
mkdir /app
echo "/dev/vg_app/lv_app      /app      xfs   defaults 0 0" >> /etc/fstab
mount /app
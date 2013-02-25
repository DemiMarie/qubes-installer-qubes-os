%post

rpm --import /etc/pki/rpm-gpg/*
for initrd in /boot/initramfs-*.img; do
   version=`basename $initrd .img|cut -f 2- -d-`
   dracut --force $initrd $version
done

%end

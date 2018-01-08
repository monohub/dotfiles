#!/bin/bash

lightyellow=`echo -en "\e[93m"`
normal=`echo -en "\e[0m"`

emerge-webrsync
emerge --sync
echo 'de_DE.UTF8 UTF-8' >> /etc/locale.gen
echo 'de_DE ISO-8859-1' >> /etc/locale.gen
echo 'de_DE@euro ISO-8859-15' >> /etc/locale.gen
echo 'en_US ISO-8859-1' >> /etc/locale.gen
echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen
locale-gen
echo 'Europe/Berlin' > /etc/timezone
emerge --config sys-libs/timezone-data
emerge --oneshot cpuinfo2cpuflags
cpuinfo2cpuflags >> /etc/portage/make.conf
emerge gentoo-sources genkernel-next gentoolkit syslinux vim eix sudo dhcpcd zsh
rc-update add dhcpcd default
emerge --noreplace net-misc/netifrc
wget -O kernel-config-for-kvm https://goo.gl/anHW2d
wget -O .zshrc http://git.grml.org/f/grml-etc-core/etc/zsh/zshrc
echo 'hostname="virtualGentoo"' > /etc/conf.d/hostname
echo "${lightyellow}########## FINISHED SCRIPT ############"
echo '########## MISSING: ##########'
echo '- genkernel --menuconfig --udev --kernel-config=/path/to/kernel-config-for-kvm all'
echo '- configure syslinux'
echo '- make a symlink from net.lo to your enp sth card and add it to default runlevel'
echo '- configure /etc/conf.d/net for static or dhcp'
echo '- set profile with eselect profile list/set'
echo '- set locale with eselect locale list/set'
echo '- set keymap in /etc/conf.d/keymaps'
echo "$normal"
exit 0

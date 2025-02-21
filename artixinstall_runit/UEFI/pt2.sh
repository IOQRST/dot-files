#!/bin/bash

read -p "Enter PC name: " pcname
read -p "Enter username: " username
read -p "Swapfile val in G: " sw

# Создать файл подкачки/ create swap file
dd if=/dev/zero of=/swapfile bs=1G count=$sw status=progress
chmod 600 /swapfile
mkswap /swapfile

echo "# /swapfile" >> /etc/fstab
echo "/swapfile    none    swap    defaults    0 0" >> /etc/fstab

ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime
hwclock --systohc

nvim /etc/locale.gen
echo "LANG=ru_RU.UTF-8" >> /etc/locale.conf
locale-gen

echo 'KEYMAP=ru' >> /etc/vconsole.conf
echo 'FONT=cyr-sun16' >> /etc/vconsole.conf

echo "$pcname" > /etc/hostname
echo "127.0.1.1 localhost" >> /etc/hosts
echo "::1 localhost" >> /etc/hosts
echo "127.0.1.1 $pcname.localdomain $pcname" >> /etc/hosts

echo "root password"
passwd

pacman -S grub efibootmgr networkmanager networkmanager-runit network-manager-applet wpa_supplicant dialog os-prober dosfstools bluez bluez-runit bluez-utils cups cups-runit --noconfirm

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

ln -s /etc/runit/sv/NetworkManager/ /etc/runit/runsvdir/default/
ln -s /etc/runit/sv/bluetoothd/ /etc/runit/runsvdir/default/
ln -s /etc/runit/sv/cupsd/ /etc/runit/runsvdir/default/

useradd -mG wheel $username
passwd $username

EDITOR=nvim visudo

nano /etc/pacman.conf
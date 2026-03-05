#!/bin/bash

read -p "Enter PC name: " pcname

ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime
hwclock --systohc

nano /etc/locale.gen

echo "LANG=ru_RU.UTF-8" >> /etc/locale.conf
locale-gen

echo 'KEYMAP=ru' >> /etc/vconsole.conf
echo 'FONT=cyr-sun16' >> /etc/vconsole.conf

echo "$pcname" > /etc/hostname
echo "127.0.1.1 localhost.localdomain $pcname" >> /etc/hosts

pacman -S networkmanager --noconfirm
systemctl enable NetworkManager
systemctl mask NetworkManager-wait-online

echo "root password"
passwd 

pacman -S grub efibootmgr

grub-install /dev/sda --target=x86_64-efi --bootloader-id=GRUB --efi-directory=/boot/efi --removable
grub-mkconfig -o /boot/grub/grub.cfg
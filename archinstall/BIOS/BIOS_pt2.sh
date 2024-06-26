#!/bin/bash

read -p 'Enter PC name: ' pcname

nano /etc/locale.gen

locale-gen

echo 'LANG=ru_RU.UTF-8' > /etc/locale.conf
echo 'KEYMAP=ru' >> /etc/vconsole.conf
echo 'FONT=cyr-sun16' >> /etc/vconsole.conf

echo '$pcname' > /etc/hostname
echo '127.0.1.1 localhost.localdomain $pcname' > /etc/hosts

pacman -S networkmanager --noconfirm
systemctl enable NetworkManager

passwd 

pacman -S grub --noconfirm

lsblk

grub-install --target=i386-pc /dev/sda --removable
grub-mkconfig -o /boot/grub/grub.cfg
#!/bin/bash

sudo pacman -Syy --noconfirm
sudo pacman -S archlinux-keyring --noconfirm

pacman -Sy
pacman -S archlinux-keyring --noconfirm

loadkeys ru
setfont cyr-sun16
timedatectl set-ntp true

cfdisk

mkfs.FAT32 -L boot /dev/sda1 -f
mkswap -L swap /dev/sda2
mkfs.btrfs -L root /dev/sda3 -f
mkfs.btrfs -L home /dev/sda4 -f

swapon /dev/sda2
mount /dev/sda3 /mnt
mkdir /mnt/{home,boot}
mount /dev/sda1 /mnt/boot
mount /dev/sda4 /mnt/home

pacstrap -i /mnt btrfs-progs base base-devel linux-zen linux-zen-headers linux-firmware nano realtime-privileges amd-ucode mesa xf86-video-amdgpu vulkan-radeon libva-mesa-driver mesa-vdpau git sudo --noconfirm

genfstab -U -p /mnt >> /mnt/etc/fstab

arch-chroot /mnt /bin/bash
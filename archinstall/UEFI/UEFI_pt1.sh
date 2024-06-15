#!/bin/bash

sudo pacman -Syy --noconfirm
sudo pacman -S archlinux-keyring --noconfirm

loadkeys ru
setfont cyr-sun16
timedatectl set-ntp true

cfdisk /dev/sda

mkfs.fat -F32 /dev/sda1
mkfs.btrfs /dev/sda2 -f


mount /dev/sda2 /mnt
cd /mnt
btrfs subvolume create ./@
btrfs subvolume create ./@home
cd
umount /mnt -R
mount -o rw,noatime,compress=zstd:3,ssd,ssd_spread,discard=async,space_cache=v2,subvol=/@ /dev/sda2 /mnt
mkdir /mnt/home
mount -o rw,noatime,compress=zstd:3,ssd,ssd_spread,discard=async,space_cache=v2,subvol=/@home /dev/sda2 /mnt/home

mkdir /mnt/boot
mkdir /mnt/boot/efi
mount /dev/sda1 /mnt/boot/efi

pacstrap -i /mnt btrfs-progs base base-devel linux-zen linux-zen-headers linux-firmware nano realtime-privileges amd-ucode mesa xf86-video-amdgpu vulkan-radeon libva-mesa-driver mesa-vdpau git sudo --noconfirm

genfstab -U -p /mnt >> /mnt/etc/fstab

btrfs filesystem label /mnt "ArchLinux"

arch-chroot /mnt

#!/bin/bash

sudo pacman -Syy --noconfirm
sudo pacman -S artix-keyring --noconfirm

loadkeys ru1
setfont cyr-sun16

cfdisk /dev/sda

mkfs.fat -F32 /dev/sda1
mkfs.btrfs /dev/sda2 -f

mount /dev/sda2 /mnt
cd /mnt
btrfs subvolume create ./@
btrfs subvolume create ./@home
btrfs subvolume create ./@var
btrfs subvolume create ./@log
cd
umount /mnt -R
mkdir -p /mnt/{home,var,var/log,.snapshot}
mount -o rw,noatime,compress=zstd:3,ssd,ssd_spread,discard=async,space_cache=v2,subvol=/@ /dev/sda2 /mnt
mount -o rw,noatime,compress=zstd:3,ssd,ssd_spread,discard=async,space_cache=v2,subvol=/@home /dev/sda2 /mnt/home
mount -o rw,noatime,compress=zstd:3,ssd,ssd_spread,discard=async,space_cache=v2,subvol=/@var /dev/sda2 /mnt/var
mount -o rw,noatime,compress=zstd:3,ssd,ssd_spread,discard=async,space_cache=v2,subvol=/@log /dev/sda2 /mnt/var/log
mount -o rw,noatime,compress=zstd:3,ssd,ssd_spread,discard=async,space_cache=v2,subvol=/@snapshot /dev/sda2 /mnt/.snapshot

mkdir /mnt/boot
mkdir /mnt/boot/efi
mount /dev/sda1 /mnt/boot/efi

basestrap /mnt base base-devel runit elogind-runit btrfs-progs linux linux-headers linux-firmware nano neovim amd-ucode git sudo --noconfirm

fstabgen -U /mnt >> /mnt/etc/fstab

artix-chroot /mnt
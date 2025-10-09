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
mkdir -p /mnt/{home,var,var/log,.snapshot}
mount -o rw,noatime,compress=zstd:3,ssd,ssd_spread,discard=async,space_cache=v2,subvol=/@ /dev/sda2 /mnt
mount -o rw,noatime,compress=zstd:3,ssd,ssd_spread,discard=async,space_cache=v2,subvol=/@home /dev/sda2 /mnt/home
mount -o rw,noatime,compress=zstd:3,ssd,ssd_spread,discard=async,space_cache=v2,subvol=/@var /dev/sda2 /mnt/var
mount -o rw,noatime,compress=zstd:3,ssd,ssd_spread,discard=async,space_cache=v2,subvol=/@log /dev/sda2 /mnt/var/log
mount -o rw,noatime,compress=zstd:3,ssd,ssd_spread,discard=async,space_cache=v2,subvol=/@snapshot /dev/sda2 /mnt/.snapshot

mkdir /mnt/boot
mkdir /mnt/boot/efi
mount /dev/sda1 /mnt/boot/efi

pacstrap -i /mnt btrfs-progs base base-devel linux linux-headers linux-firmware nano realtime-privileges amd-ucode git sudo --noconfirm

genfstab -U -p /mnt >> /mnt/etc/fstab

btrfs filesystem label /mnt "ArchLinux"

arch-chroot /mnt

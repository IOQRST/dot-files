#!/bin/bash

read -p "Enter user name: " uname
useradd -m -g users -G wheel -s /bin/bash $uname
passwd $uname

EDITOR=nano visudo

nano /etc/pacman.conf

pacman -Syyu --noconfirm
pacman -S tar zip unzip 7zip unrar xz gzip cabextract innoextract: --noconfirm
pacman -S mesa lib32-mesa libva-mesa-driver lib32-libva-mesa-driver mesa-vdpau xf86-video-amdgpu vulkan-radeon lib32-vulkan-radeon lib32-vulkan-icd-loader vkd3d vulkan-icd-loader vainfo vulkan-tools lib32-vkd3d --noconfirm
pacman -S ntfs-3g mtpfs nvme-cli bluez bluez-tools bluez-utils v4l-utils --noconfirm
pacman -S pipewire pipewire-alsa pipewire-jack pipewire-pulse gst-plugin-pipewire wireplumber --noconfirm
pacman -S openssh freerdp networkmanager-openconnect networkmanager-openvpn networkmanager-vpnc networkmanager-l2tp networkmanager-pptp network-manager-applet network-manager-sstp --noconfirm
pacman -S gcc cmake meson ninja python3 python-pip go nodejs npm lua rust ruby erlang elixir --noconfirm

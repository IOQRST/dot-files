#!/bin/bash

read -p "Enter user name: " uname
useradd -m -g users -G wheel -s /bin/bash $uname
passwd $uname

EDITOR=nano visudo

nano /etc/pacman.conf

pacman -Syyu --noconfirm
pacman -S tar zip unzip p7zip unrar xz gzip --noconfirm
pacman -S mesa lib32-mesa xf86-video-amdgpu vulkan-radeon lib32-vulkan-radeon vkd3d lib32-vkd3d --noconfirm
pacman -S pipewire pipewire-alsa pipewire-jack pipewire-pulse gst-plugin-pipewire wireplumber --noconfirm
pacman -S openssh freerdp networkmanager-openconnect networkmanager-openvpn networkmanager-vpnc networkmanager-l2tp networkmanager-pptp network-manager-applet network-manager-sstp --noconfirm
pacman -S gcc cmake meson ninja python3 python-pip dart go nodejs npm lua rust ruby --noconfirm
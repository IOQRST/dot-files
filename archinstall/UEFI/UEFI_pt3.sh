#!/bin/bash

read -p "Enter user name: " uname
useradd -m -g users -G wheel -s /bin/bash $uname
passwd $uname

EDITOR=nano visudo

nano /etc/pacman.conf

pacman -Syyu --noconfirm
pacman -S tar zip unzip p7zip unrar xz gzip nodejs npm ninja gcc cmake meson lib32-mesa lib32-vulkan-radeon lib32-mesa-vdpau pipewire pipewire-alsa pipewire-jack pipewire-pulse gst-plugin-pipewire wireplumber openssh freerdp networkmanager-openconnect networkmanager-openvpn networkmanager-vpnc networkmanager-l2tp networkmanager-pptp network-manager-applet network-manager-sstp --noconfirm
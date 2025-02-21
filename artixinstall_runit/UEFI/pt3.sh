#!/bin/bash

sudo pacman -Syyu --noconfirm
sudo pacman -S tar zip unzip p7zip unrar xz gzip --noconfirm
sudo pacman -S python3 python-pip nodejs npm ninja gcc cmake meson go rust --noconfirm
sudo pacman -S lib32-mesa lib32-vulkan-radeon lib32-mesa-vdpau --noconfirm
sudo pacman -S pipewire pipewire-alsa pipewire-jack pipewire-pulse gst-plugin-pipewire wireplumber --noconfirm
sudo pacman -S openssh freerdp networkmanager-openvpn --noconfirm
sudo pacman -S xorg xdg-desktop-portal xdg-desktop-portal-wlr xdg-desktop-portal-xapp xdg-user-dirs xdg-utils wlroots --noconfirm
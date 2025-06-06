#!/bin/bash

sudo pacman -Syyu --noconfirm
sudo pacman -S tar zip unzip p7zip unrar xz gzip --noconfirm
sudo pacman -S gcc cmake meson ninja python3 python-pip dart go nodejs npm lua rust ruby --noconfirm
sudo pacman -S mesa ib32-mesa libva-mesa-driver xf86-video-amdgpu vulkan-radeon lib32-vulkan-radeon --noconfirm
sudo pacman -S pipewire pipewire-alsa pipewire-jack pipewire-pulse gst-plugin-pipewire wireplumber --noconfirm
sudo pacman -S openssh freerdp networkmanager-openvpn --noconfirm
sudo pacman -S xorg xdg-desktop-portal xdg-desktop-portal-wlr xdg-desktop-portal-xapp xdg-user-dirs xdg-utils wlroots --noconfirm
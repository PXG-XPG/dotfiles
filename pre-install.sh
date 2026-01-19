#!/bin/bash

# Check if you are root user
if [ "$EUID" -ne 0 ]; then
    echo "ERROR: This script must be run as root."
    exit 1
fi

alias download='pacman -S --noconfirm'

mv -v ./.config /home/rum/
mv -v ./.local /home/rum/
mv -v ./.ssh /home/rum/
mv -v ./Apps /home/rum/

# Sync database and update all
pacman -Syu --noconfirm

# Install yay
pacman -S --needed base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si

# Install drivers
download nvidia-open nvidia-utils lib32-nvidia-utils
download vulkan-icd-loader lib32-vulkan-icd-loader
download opencl-nvidia lib32-opencl-nvidia
download libva-nvidia-driver

# Install fonts
download ttf-0xproto-nerd wqy-zenhei noto-fonts noto-fonts-emoji ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols-mono

# Install niri
download xdg-desktop-portal-gnome
download niri

# Install zen-browser
yay -S zen-browser-bin

# Install daed: A modern web dashboard for dae
yay -S daed-avx2-bin
systemctl enable --now daed
# http://localhost:2023

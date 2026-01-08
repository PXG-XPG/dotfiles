#!/bin/bash

# Check if you are root user
if [ "$EUID" -ne 0 ]; then
    echo "ERROR: This script must be run as root."
    exit 1
fi

alias download='pacman -S --noconfirm'

# Sync database and update all
pacman -Syu --noconfirm

# Install yay
pacman -S --needed base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si

# Install nvidia driver
download nvidia-open libva-nvidia-driver

# Install fonts
download ttf-0xproto-nerd wqy-zenhei noto-fonts noto-fonts-emoji ttf-jetbrains-mono-nerd

# Install daed: A modern web dashboard for dae
yay -S daed-avx2-bin
systemctl enable --now daed
echo "Go to http://localhost:2023 and set daed. Don't forget it!"

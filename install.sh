#!/bin/bash

# You must keep network connectivity to run this script!

# Check if you are root user
if [ "$EUID" -ne 0 ]; then
    echo "ERROR: This script must be run as root."
    exit 1
fi

alias download='pacman -S --noconfirm'
alias copy='cp -vr'

export dotfiledir=.
export userdir=/home/rum

pacman -Syu --noconfirm

# Install yay for installing packages
pacman -S --needed base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si

./scripts/wm.sh

./scripts/wallpaper.sh

./scripts/inputmethod.sh

./scripts/keymap.sh

./scripts/vpn.sh

# Clean up and reboot
echo "Everything is ready. Auto-rebooting in 5s......"
sleep 5 && systemctl reboot

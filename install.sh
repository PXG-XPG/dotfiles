#!/bin/bash

echo "Check if you are root user in 10 seconds......"

echo "Check if you have aviabile network envrionment in 10 seconds......"

echo "Sync and upgrade database......"
pacman -Sy

echo "Check and install necessary package for you:"
pacman -S --needed git base-devel

echo "Install system monitor tools in 10 seconds......"
sleep 10
echo "nvtop btop mission-center"
pacman -S nvtop btop mission-center

echo "Install neovim and emacs in 10 seconds......"
sleep 10
pacman -S neovim emacs-wayland

echo "Install yay in 10 seconds:"
sleep 10
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd && rm -rf yay-bin

echo "Install awww for you......"
yay -S awww-git

echo "Install zen-browser for you......"
yay -S zen-browser-bin

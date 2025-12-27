#!/bin/bash

# Check if you are root user
if [ "$EUID" -ne 0 ]; then
    echo "ERROR: This script must be run as root."
    exit 1
fi

# Install dependency: git
pacman -S git

# Install another dependency: yay
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si

# Install nvidia driver
pacman -S nvidia-open libva-nvidia-driver libva-utils

# Install fonts
pacman -S ttf-0xproto-nerd wqy-zenhei noto-fonts noto-fonts-emoji

# Install terminal and some useful tools
yay -S wezterm-nightly-bin
pacman -S zsh
pacman -S fastfetch eza less tealdeer starship bluetui exfatprogs

# Install yazi
pacman -S yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick ouch lazygit

# Install editors
pacman -S neovim emacs-wayland wl-clipboard

# Install niri
pacman -S xwayland-satellite xdg-desktop-portal-gnome fuzzel
pacman -S niri

# Configure niri
pacman -S libnotify mako polkit-gnome
yay -S awww-git
pacman -S waybar
yay -S swaylock-effects
pacman -S swayidle

# snapper
pacman -S snapper snap-pac btrfs-assistant
pacman -S grub-btrfs inotify-tools

# Chinese input method
pacman -S fcitx5-im fcitx5-rime
yay -S rime-ice-pinyin-git

# nautilus
pacman -S ffmpegthumbnailer gvfs-smb gnome-keyring gst-plugins-base gst-plugins-good gst-libav libheif webp-pixbuf-loader libopenraw gst-plugins-bad gst-plugins-ugly

# Install screenshot tools
pacman -S grim flameshot

# Install screen capture tools
pacman -S wf-recorder obs-studio

# Install system resource monitoring tools
pacman -S nvtop btop mission-center

# Install keymap tool
pacman -S keyd

# Install daed
yay -S daed-avx2-bin

# Install browser and player
pacman -S zen-browser-bin
pacman -S celluloid

# Enable fan control
yay -S nbfc-linux

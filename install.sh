#!/bin/bash

# You must keep network connectivity to run this script!
# You need to run 'pacman -Syu' before run this script.

# Check if you are root user
if [ "$EUID" -ne 0 ]; then
    echo "ERROR: This script must be run as root."
    exit 1
fi

alias download='pacman -S --noconfirm'

cd /home/rum && mkdir tmp && cd tmp

# Install git and yay for install packages
download --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si

# Install my dotfiles and copy them to .config
cd ..
git clone https://github.com/PXG-XPG/dotfiles.git
cd dotfiles
# TODO

# Install fonts
download ttf-0xproto-nerd wqy-zenhei noto-fonts noto-fonts-emoji

# Install nvidia driver
download nvidia-open libva-nvidia-driver
# For verify the settings for VA-API by running `vainfo`, which is provided by `libva-utils`
download libva-utils

# Install terminal and some useful tools
yay -S wezterm-nightly-bin
download zsh
download fastfetch eza less tealdeer starship bluetui exfatprogs
# Install yazi
download yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick ouch lazygit
# Install editors
download neovim emacs-wayland wl-clipboard

# Install window manager: niri
download xwayland-satellite xdg-desktop-portal-gnome fuzzel
download niri

# Improve niri
download libnotify mako polkit-gnome waybar swayidle
yay -S awww-git
yay -S swaylock-effects

# snapper
download snapper snap-pac btrfs-assistant
download grub-btrfs inotify-tools

# Chinese input method
download fcitx5-im fcitx5-rime
yay -S rime-ice-pinyin-git

# nautilus
pacman -S ffmpegthumbnailer gvfs-smb gnome-keyring gst-plugins-base gst-plugins-good gst-libav libheif webp-pixbuf-loader libopenraw gst-plugins-bad gst-plugins-ugly

# Install screenshot tools
download grim flameshot

# Install screen capture tools
pacman -S wf-recorder obs-studio

# Install system resource monitoring tools
download nvtop btop mission-center

# Install keymap tool
download keyd

# Install daed
yay -S daed-avx2-bin

# Install browser and player
yay -S zen-browser-bin
pacman -S celluloid

# Enable fan control
yay -S nbfc-linux

# Clean up and reboot
echo "Everything is ready. Auto-rebooting in 5s......"
sleep 5 && systemctl reboot

#!/bin/bash

# Check if you are root user
if [ "$EUID" -ne 0 ]; then
    echo "ERROR: This script must be run as root."
    exit 1
fi

pacman -Syu --noconfirm

### WM
# Install niri
download xwayland-satellite xdg-desktop-portal-gnome fuzzel
download niri

# Install waybar
download waybar

# Install mako
download libnotify mako polkit-gnome

# Install swaylock
yay -S swaylock-effects

# Improve nautilus
download ffmpegthumbnailer gvfs-smb gvfs-mtp gnome-keyring gst-plugins-base gst-plugins-good gst-libav libheif webp-pixbuf-loader libopenraw gst-plugins-bad gst-plugins-ugly feh

# Install awww
yay -S awww-git

# Install and configure keyd
download keyd
systemctl enable keyd --now
???
keyd reload

# Install screenshot tools
download grim flameshot

# Install screen recorders
download wf-recorder obs-studio

# Install system resource monitoring tools
download nvtop btop mission-center

# Install browsers: zen and brave
yay -S zen-browser-bin
yay -Sy brave-bin

# Install Reader
yay -S koodo-reader-bin

# Install terminals
yay -S wezterm-nightly-bin
download kitty

# Install player
download celluloid

# Install shell
download zsh fish

# Install some useful CLI tools
download fastfetch eza less tealdeer starship bluetui

# Install some utils
download exfatprogs usbutils libva-utils

# Install yazi
download yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick ouch lazygit

# Install editors
download neovim emacs-wayland wl-clipboard

# Enable fan control
yay -S nbfc-linux

# Input method solution: fcitx5 which rime-ice-pinyin
# This script must be run after installing niri
download fcitx5-im fcitx5-rime
yay -S rime-ice-pinyin-git

# snapper
download snapper snap-pac btrfs-assistant
?????
download grub-btrfs inotify-tools

# Clean up and reboot
echo "Everything is ready. Auto-rebooting in 5s......"
sleep 5 && systemctl reboot

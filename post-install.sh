#!/bin/bash

# Check if you are root user
if [ "$EUID" -ne 0 ]; then
    echo "ERROR: This script must be run as root."
    exit 1
fi

alias download='pacman -S --noconfirm'
alias move='mv -v'

pacman -Syu --noconfirm

### Improve niri
# Install waybar
download waybar fuzzel xwayland-satellite
# Install mako
download libnotify mako polkit-gnome
# Install swaylock
yay -S swaylock-effects
# Improve nautilus
download ffmpegthumbnailer gvfs-smb gvfs-mtp gnome-keyring gst-plugins-base gst-plugins-good gst-libav libheif webp-pixbuf-loader libopenraw gst-plugins-bad gst-plugins-ugly feh
# Install awww
yay -S awww-git
move ./wallpaper /home/rum/Pictures/

### configure keymap
# Install and configure keyd
download keyd
systemctl enable keyd --now
cat ./etc/keyd/keymap.conf >/etc/keyd/keymap.conf
keyd reload

### Some useful softwares
# Install screenshot tools
download grim flameshot
# Install screen recorders
download wf-recorder
# Install system resource monitoring tools
download nvtop btop mission-center
# Install brave
yay -S brave-bin
# Install Reader
yay -S koodo-reader-bin

# Install terminals
yay -S wezterm-nightly-bin
download kitty
move ./.config/wezterm /home/rum/.config/
move ./.config/fish /home/rum/.config/

# Install player
download celluloid

# Install shell
download zsh fish
move ./.zshrc /home/rum/
move ./.config/fish /home/rum/.config/

# Install some useful CLI tools
download fastfetch eza tealdeer starship bluetui man-db
# Install some utils
download exfatprogs usbutils libva-utils
# Install yazi
download yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick ouch lazygit
# Install editors
download neovim upzip wl-clipboard
### Install `node` to your Apps dir
download emacs-wayland
mv -v ./.emacs.d /home/rum/
# Enable fan control
yay -S nbfc-linux

### Input method solution
# Install fcitx5 which rime-ice-pinyin
download fcitx5-im fcitx5-rime
yay -S rime-ice-pinyin-git

### KVM
download qemu-full virt-manager swtpm dnsmasq
systemctl enable --now libvirtd
virsh net-start default
virsh net-autostart default
usermod -a -G libvirt rum
cat ./etc/modprobe.d/kvm_intel.conf >/etc/modprobe.d/kvm_intel.conf
mkinitcpio -P

# Done
echo "Everything is ready. Auto-rebooting in 5s......"
sleep 5 && systemctl reboot

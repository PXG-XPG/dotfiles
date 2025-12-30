# Install window manager: niri
download xwayland-satellite xdg-desktop-portal-gnome fuzzel
download niri

# Install waybar: Highly customizable Wayland bar
download waybar

# Install mako: A lightweight notification daemon for Wayland
download libnotify mako polkit-gnome

# Install swaylock: A screen locking utility for Wayland compositors
yay -S swaylock-effects

# Improve nautilus
download ffmpegthumbnailer gvfs-smb gvfs-mtp gnome-keyring gst-plugins-base gst-plugins-good gst-libav libheif webp-pixbuf-loader libopenraw gst-plugins-bad gst-plugins-ugly feh

# Install swayosd: Listen CapLock and NumLock
download swayosd
systemctl enable --now swayosd-libinput-backend.service

# Install awww: A Solution to your Wayland Wallpaper Woes
yay -S awww-git
mkdir /home/rum/.local/wallpaper
cp -vr ./wallpaper/* /home/rum/.local/share/wallpaper/

# Input method solution: fcitx5 which rime-ice-pinyin
# This script must be run after installing niri
download fcitx5-im fcitx5-rime
yay -S rime-ice-pinyin-git
mkdir $userdir/.local/share/fcitx5
copy $dotfiledir/.local/share/fcitx5/* $userdir/.local/share/fcitx5/

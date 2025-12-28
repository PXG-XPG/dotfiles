# Install and configure keymap tool: keyd
download keyd
systemctl enable keyd --now
copy $dotfiledir/keyd/* /etc/keyd/
keyd reload

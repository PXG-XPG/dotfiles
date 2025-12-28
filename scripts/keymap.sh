# Install and configure keymap tool: keyd
download keyd
systemctl enable keyd --now
cp -vr ./keyd/* /etc/keyd/
keyd reload

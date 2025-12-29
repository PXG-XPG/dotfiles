# Install daed: A modern web dashboard for dae
yay -S daed-avx2-bin

# Enable daed
systemctl enable --now daed

# http://localhost:2023
echo "Go to http://localhost:2023 and set daed. Don't forget it!"

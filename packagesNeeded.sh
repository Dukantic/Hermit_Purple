
sudo pacman -Sy

packages=(
    kitty
    neovim    
    pipewire
    pipewire-pulse
)

for package in "${packages[@]}"; do
    sudo pacman -S --noconfirm "$package"
done

echo "All packages installed."

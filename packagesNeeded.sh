
sudo pacman -Sy

packages=(
    kitty
    dmenu
    neovim    
    pipewire
    pipewire-pulse
    feh
)

for package in "${packages[@]}"; do
    sudo pacman -S --noconfirm "$package"
done

echo "All packages installed."


sudo pacman -Sy

packages=(
    kitty
    neovim    
    dmenu
    pipewire
)

for package in "${packages[@]}"; do
    sudo pacman -S --noconfirm "$package"
done

echo "All packages installed."

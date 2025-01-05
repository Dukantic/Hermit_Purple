
sudo pacman -Syu

packages=(
    kitty
    dmenu
    neovim    
    pipewire
    pipewire-pulse
    pavucontrol
    feh
    thunar
)

for package in "${packages[@]}"; do
    sudo pacman -S --noconfirm "$package"
done

echo "All packages installed."

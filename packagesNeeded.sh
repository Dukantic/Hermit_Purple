
sudo pacman -Syu

packages=(
    networkmanager
    bash-completion
    nm-connection-editor
    kitty
    dmenu
    neovim    
    pipewire
    pipewire-pulse
    pavucontrol
    feh
    ranger
    imagemagick
    ttf-iosevka-nerd
    w3m
)


for package in "${packages[@]}"; do
    sudo pacman -S --noconfirm "$package"
done


echo "All packages installed."

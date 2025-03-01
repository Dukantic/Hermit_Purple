
sudo pacman -Syu

packages=(
    networkmanager
    bash-completion
    xorg-xrandr
    nm-connection-editor
    kitty
    dmenu
    neovim    
    pipewire
    pipewire-pulse
    pavucontrol
    pamixer
    sysstat
    feh
    ranger
    imagemagick
    ttf-iosevka-nerd
    w3m
    picom
    flameshot
)


for package in "${packages[@]}"; do
    sudo pacman -S --noconfirm "$package"
done


echo "All packages installed."

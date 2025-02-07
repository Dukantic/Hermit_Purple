#!/bin/bash
CONFIG_DIR="/etc/X11/xorg.conf.d"
CONFIG_FILE_MOUSE="50-mouse.conf"
FULL_PATH_MOUSE="$CONFIG_DIR/$CONFIG_FILE_MOUSE"

CONFIG_FILE_TRACK="50-trackpad.conf"
FULL_PATH_TRACK="$CONFIG_DIR/$CONFIG_FILE_TRACK"

CONFIG_CONTENT_MOUSE='
Section "InputClass"
    Identifier "Generic Mouse Settings"
    MatchIsPointer "yes"
    Driver "libinput"
    Option "AccelProfile" "flat"
    Option "AccelSpeed" "-0.3"
    Option "NaturalScrolling" "false"
EndSection
'

CONFIG_CONTENT_TRACK='
Section "InputClass"
    Identifier "Touchpad Settings"
    MatchIsTouchpad "yes"  
    Driver "libinput"
    Option "NaturalScrolling" "false"  
    Option "Tapping" "true"            
    Option "AccelSpeed" "0"          
EndSection
'


if [ ! -d "$CONFIG_DIR" ]; then
    sudo echo "Création du répertoire $CONFIG_DIR"
    sudo mkdir -p "$CONFIG_DIR"
fi

sudo echo "$CONFIG_CONTENT_MOUSE" > "$FULL_PATH_MOUSE"
sudo echo "$CONFIG_CONTENT_TRACK" > "$FULL_PATH_TRACK"
sudo echo "$CONFIG_CONTENT_KEYBOARD" > "$FULL_PATH_TRACK"



echo "X11 config done."


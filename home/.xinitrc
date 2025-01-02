[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
for device in $(xinput list | grep -i touchpad | awk -F'id=' '{print $2}' | awk '{print $1}'); do xinput set-prop $device "libinput Natural Scrolling Enabled" 0; done
dwmblocks &
feh --bg-fill ~/hermit_purple/wallpaper.jpg &
exec dwm


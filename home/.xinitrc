[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
for device in $(xinput list | grep -i touchpad | awk -F'id=' '{print $2}' | awk '{print $1}'); do xinput set-prop $device "libinput Natural Scrolling Enabled" 0; done
dwmblocks &
feh --bg-fill /home/dukantic/Hermit_Purple/wallpaper.jpg &
rclone mount onedrive: ~/onedrive/ --umask 022 --daemon
xrandr --output DP-1 --mode 2560x1080 --rate 200.01
xrandr --output DP-2 --mode 1920x1080 --rate 144
setxkbmap -layout us -variant intl
eval $(dbus-launch --sh-syntax)
exec dwm


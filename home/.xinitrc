[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
for device in $(xinput list | grep -i touchpad | awk -F'id=' '{print $2}' | awk '{print $1}'); do xinput set-prop $device "libinput Natural Scrolling Enabled" 0; done
dwmblocks &
feh --bg-fill /home/dukantic/Hermit_Purple/wallpaper.jpg &
rclone mount onedrive: ~/onedrive/ --umask 022 --daemon
xrandr --output eDP --mode 1920x1080 --rate 60.05
setxkbmap -layout us -variant intl
eval $(dbus-launch --sh-syntax)
exec dwm


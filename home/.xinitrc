[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
for device in $(xinput list | grep -i touchpad | awk -F'id=' '{print $2}' | awk '{print $1}'); do xinput set-prop $device "libinput Natural Scrolling Enabled" 0; done
dwmblocks &
picom &
feh --bg-fill /home/dukantic/Hermit_Purple/wallpaper2.png &
rclone mount onedrive: ~/onedrive/ --umask 022 --daemon
xrandr --output DisplayPort-0 --mode 2560x1080 --rate 200.01
xrandr --output DisplayPort-1 --mode 1920x1080 --rate 60
setxkbmap -layout us -variant intl
eval $(dbus-launch --sh-syntax)
exec dwm


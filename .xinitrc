xrandr --output HDMI-2 --mode 1920x1080 --rate 120.00 --output eDP-1 --mode 1920x1080 --rate 60.00 --right-of HDMI-2

export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN:en_US

xrdb -merge ~/.Xresources

exec startdwm

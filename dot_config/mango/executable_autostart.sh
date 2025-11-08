#!/usr/bin/env bash
set +e

wlr-randr --output "HDMI-A-2" --mode 1920x1080@120Hz --output "eDP-1" --off

# obs
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots >/dev/null 2>&1 &

# Top Bar
# waybar -c ~/.config/mango/waybar/config.jsonc -s ~/.config/mango/waybar/style.css >/dev/null 2>&1 &
QT_WAYLAND_FORCE_DPI=96 dms run >/dev/null 2>&1 &

fcitx5 --replace -d >/dev/null 2>&1 &

# wallpaper
swaybg -i ~/Pictures/wallpapers/mocha.png &

clash-verge &

# keep clipboard content
wl-clip-persist --clipboard regular --reconnect-tries 0 &

# clipboard content manager
wl-paste --type text --watch cliphist store &

/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &

export DWM=~/.config/dwm
export EDITOR='vim'

PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

xset r rate 250 50

[[ -z $DISPLAY && $TTY = "/dev/tty1" ]] && exec startx


# Added by Toolbox App
export PATH="$PATH:/home/lxw/.local/share/JetBrains/Toolbox/scripts"

export WALLPAPEREXIST=1

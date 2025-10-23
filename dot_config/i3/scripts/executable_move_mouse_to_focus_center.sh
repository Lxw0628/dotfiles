#!/bin/bash

# 获取当前焦点窗口的ID
window_id=$(xdotool getwindowfocus)

# 获取窗口的几何信息
eval "$(xdotool getwindowgeometry --shell "$window_id")"

# 获取窗口大小
eval "$(xdotool getwindowgeometry --shell -- "$window_id")"

# 计算窗口中心
center_x=$(($WIDTH / 2 + $X))
center_y=$(($HEIGHT / 2 + $Y))

# 移动鼠标到窗口中心
xdotool mousemove $center_x $center_y

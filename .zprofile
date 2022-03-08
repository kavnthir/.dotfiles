[ -f ~/.xinitrc ] && exec startx >> ~/Logs/dwm/$(date +%Y-%m-%d_%H.dwm.log) 2>&1


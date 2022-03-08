#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

[ -f $sysresources ] && xrdb -merge $sysresources
[ -f $sysmodmap ] && xmodmap $sysmodmap
[ -f "$userresources" ] && xrdb -merge "$userresources"
[ -f "$usermodmap" ] && xmodmap "$usermodmap"

export PATH="${PATH}:${HOME}/.local/bin/"
export EDITOR=nvim

xcompmgr -c -C -t-5 -l-5 -r4.2 -o.55 &
xwallpaper --zoom ~/Photos/Backgrounds/shinigami.jpg &
xbindkeys &
slstatus &
dunst &

exec dwm >> ~/Logs/dwm/$(date +%Y-%m-%d_%H.dwm.log) 2>&1

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

#xwallpaper --stretch ~/Photos/Backgrounds/$(ls ~/Photos/Backgrounds/ | sort -R | tail -1) &
xwallpaper --stretch ~/Photos/Backgrounds/pit.png &
redshift-gtk -l 37:-78 &
xmousepasteblock &
xcompmgr &
xbindkeys &
slstatus &
mullvad-vpn & 
dunst &

exec dwm 

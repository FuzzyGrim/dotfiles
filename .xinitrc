#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
	xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
	xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

	xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
	xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

nitrogen --restore &
picom &
setxkbmap -layout us -variant altgr-intl -option nodeadkeys caps:escape &
redshift &
cbatticon &
xsetroot -cursor_name left_ptr &
xinput set-prop 9 'Coordinate Transformation Matrix' 1 0 0 0 1 0 0 0 1 &
xset s off -dpms &
lxsession &
trayer --edge top --align right --widthtype request --margin 6 --iconspacing 6 --SetDockType true --SetPartialStrut true --expand true --monitor 0 --transparent true --alpha 0 --tint 0x282c34 --height 21 &
exec xmonad

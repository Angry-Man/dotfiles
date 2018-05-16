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

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#adjustment of resoution
xrandr --output VGA-1 --mode 1920x1080 &

#set wallpaper
${HOME}/scripts/theming/wpset &

#loading additional Xresources for 2bwm border coloring
${HOME}/scripts/theming/rldrsc_twobwm &

#start bar
${HOME}/sys-comps/bar/barmaster.sh &

#start dunst
${HOME}/sys-comps/dunst/dunstset.sh &
#start compton for fades
compton -f &

#start 2bwm
2bwm  

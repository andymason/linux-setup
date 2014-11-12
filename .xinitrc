#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Enable optical out
amixer -c 0 cset name='IEC958 Playback Switch' on

# exec gnome-session
# exec startkde
setxkbmap -layout gb
numlockx &
exec startxfce4

compton --config ~/.compton.conf -b
btsync --config ~/.config/btsync/btsync.conf

#!/bin/bash

#####SOURCE#####
mkdir -p ~/.config/xmobar
git clone git://github.com/jaor/xmobar ~/.config/xmobar

cd ~/.config/xmobar
#cabal install -fall_extensions

#stack install --flag xmobar:all_extensions
#with_alsa and with_iwlib extensions do not work, turn them off to install xmobar
stack install --flag xmobar:with_dbus --flag xmobar:with_threaded --flag xmobar:with_utf8 --flag xmobar:with_xft --flag xmobar:with_mpd --flag xmobar:with_mpris --flag xmobar:with_inotify --flag xmobar:with_nl80211 --flag xmobar:with_datezone --flag xmobar:with_xpm --flag xmobar:with_uvmeter --flag xmobar:with_weather

#!/bin/bash

sudo pacman -S base-devel firefox rofi nitrogen picom alacritty mpv libreoffice pipewire pipewire-alsa pipewire-pulse easyeffects make blender gimp newsboat

./1-xmonad.sh
./dotfiles.sh
./anicli.sh
./JapaneseInput.sh

#boot to xmonad
cd
startx

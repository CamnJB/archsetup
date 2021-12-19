#!/bin/bash

sudo pacman -S base-devel firefox rofi nitrogen picom alacritty mpv libreoffice 
sudo pacman -S pipewire pipewire-alsa pipewire-pulse easyeffects 
sudo pacman -S blender gimp newsboat

./1-xmonad.sh
./dotfiles.sh
./anicli.sh
./JapaneseInput.sh

#boot to xmonad
cd
startx

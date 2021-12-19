#!/bin/bash

sudo pacman -S base-devel firefox rofi nitrogen picom alacritty mpv libreoffice 
sudo pacman -S blender gimp newsboat

chmod +x ./1-xmonad.sh ./2-audio.sh ./dotfiles.sh ./ani-cli.sh ./JapaneseInput.sh

./1-xmonad.sh
./2-audio.sh
./dotfiles.sh
./ani-cli.sh
./JapaneseInput.sh

#boot to xmonad
cd
startx

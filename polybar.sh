#!/bin/bash

#####polybar stable#####
sudo pacman -Syu
git clone https://aur.archlinux.org/polybar.git  ~/.config/polybar
cd ~/.config/polybar
makepkg -sri
#sudo pacman -U polybar.tar.xz
cp /usr/share/doc/polybar/config ~/.config/polybar/


#####polybar latest#####
#sudo pacman -Syu
#git clone https://aur.archlinux.org/polybar-git.git ~/.config/polybar
#cd ~/.config/polybar
#makepkg  -sri
#sudo pacman -U polybar-git.tar.xz
#cp /usr/share/doc/polybar/config ~/.config/polybar/

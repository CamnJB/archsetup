#!/bin/bash

cd

#make .config file
sudo mkdir ~/.config

#download packages
sudo  pacman -S firefox rofi nitrogen picom alacritty mpv libreoffice pipewire pipewire-alsa pipewire-pulse easyeffects make blender gimp newsboat stack
#download xmonad depend
sudo pacman -S xorg-server xorg-apps xorg-xinit  xorg-xmessage libx11 libxft libxinerama libxrandr libxss pkgconf
#japanese fonts
sudo pacman -S adobe-source-han-sans-jp-fonts adobe-source-han-serif-jp-fonts  otf-ipafont ttf-hanazono ttf-sazanami
#japanese inputs mozc
sudo pacman -S fcitx-im fcitx-mozc

#download my dotfiles
#my git repo
sudo git clone https://github.com/CamnJB/dotfiles

#copy files to locations
sudo cp ~/dotfiles/.xinitrc ~/ && sudo cp ~/dotfiles/xmonad ~/.config/ && sudo cp ~/dotfiles/.xprofile ~/ && sudo cp ~/dotfiles/.vimrc ~/ && sudo cp ~/dotfiles/.bashrc ~/ && sudo cp ~/dotfiles/xmonad ~/.config/

#clone xmonad git
sudo git clone https://github.com/xmonad/xmonad ~/.config/xmonad
sudo git clone https://github.com/xmonad/xmonad-contrib ~/.config/monad

cd ~/.config/xmonad && sudo stack init

#set environment path
PATH=$PATH:~/.local/bin
export PATH

stack install

cd 

#ani-cli
git clone https://github.com/pystardust/ani-cli.git ~/.config

cd ~/.config/ani-cli 
sudo make

cd

startx

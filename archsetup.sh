#!/bin/bash

sudo mkdir ~/.config

#packages
sudo  pacman -S firefox rofi nitrogen picom alacritty mpv libreoffice pipewire pipewire-alsa pipewire-pulse easyeffects make blender gimp newsboat

#japanese fonts
sudo pacman -S adobe-source-han-sans-jp-fonts adobe-source-han-serif-jp-fonts  otf-ipafont ttf-hanazono ttf-sazanami

#japanese inputs mozc
sudo pacman -S fcitx-im fcitx-mozc

#my git repo
git clone https://github.com/CamnJB/dotfiles ~/

#copy files to locations
sudo cp ~/dotfiles/.xinitrc ~/
sudo cp ~/dotfiles/xmonad ~/.config/
sudo cp ~/dotfiles/.xprofile ~/
sudo cp ~/dotfiles/.vimrc ~/
sudo cp ~/dotfiles/.bashrc ~/
sudo cp ~/dotfiles/xmonad ~/.config/

#xmonad
sudo pacman -S xorg-server xorg-apps xorg-xinit  xorg-xmessage libx11 libxft libxinerama libxrandr libxss pkgconf

git clone https://github.com/xmonad/xmonad ~/.config/xmonad
git clone https://github.com/xmonad/xmonad-contrib ~/.config/monad

sudo pacman -S stack
stack init

PATH=$PATH:~/.local/bin
export PATH

stack install  

#ani-cli
cd ~/.config
git clone https://github.com/pystardust/ani-cli.git ~/.config
sudo make ~/.config/ani-cli/

startx

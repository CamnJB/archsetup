#!/bin/bash

if #make .config file
sudo mkdir ~/.config

then #download packages
sudo  pacman -S firefox rofi nitrogen picom alacritty mpv libreoffice pipewire pipewire-alsa pipewire-pulse easyeffects make blender gimp newsboat stack
#japanese fonts
sudo pacman -S adobe-source-han-sans-jp-fonts adobe-source-han-serif-jp-fonts  otf-ipafont ttf-hanazono ttf-sazanami
#japanese inputs mozc
sudo pacman -S fcitx-im fcitx-mozc

then #download my dotfiles
#my git repo
git clone https://github.com/CamnJB/dotfiles ~/

then #copy files to locations
sudo cp ~/dotfiles/.xinitrc ~/
sudo cp ~/dotfiles/xmonad ~/.config/
sudo cp ~/dotfiles/.xprofile ~/
sudo cp ~/dotfiles/.vimrc ~/
sudo cp ~/dotfiles/.bashrc ~/
sudo cp ~/dotfiles/xmonad ~/.config/

then #download xmonad depend
sudo pacman -S xorg-server xorg-apps xorg-xinit  xorg-xmessage libx11 libxft libxinerama libxrandr libxss pkgconf

then #clone xmonad git
git clone https://github.com/xmonad/xmonad ~/.config/xmonad
git clone https://github.com/xmonad/xmonad-contrib ~/.config/monad

then
stack init ~/.config/xmonad

then #set environment path
PATH=$PATH:~/.local/bin
export PATH

then
stack install  ~/.config/xmonad

then
#ani-cli
git clone https://github.com/pystardust/ani-cli.git ~/.config
sudo make ~/.config/ani-cli/
fi

startx

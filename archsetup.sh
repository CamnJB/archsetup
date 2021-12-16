#!/bin/bash

#make .config file
sudo mkdir ~/.config

wait #download packages
sudo  pacman -S firefox rofi nitrogen picom alacritty mpv libreoffice pipewire pipewire-alsa pipewire-pulse easyeffects make blender gimp newsboat stack
#japanese fonts
sudo pacman -S adobe-source-han-sans-jp-fonts adobe-source-han-serif-jp-fonts  otf-ipafont ttf-hanazono ttf-sazanami
#japanese inputs mozc
sudo pacman -S fcitx-im fcitx-mozc

wait #download my dotfiles
#my git repo
git clone https://github.com/CamnJB/dotfiles ~/

wait #copy files to locations
sudo cp ~/dotfiles/.xinitrc ~/
sudo cp ~/dotfiles/xmonad ~/.config/
sudo cp ~/dotfiles/.xprofile ~/
sudo cp ~/dotfiles/.vimrc ~/
sudo cp ~/dotfiles/.bashrc ~/
sudo cp ~/dotfiles/xmonad ~/.config/

wait #download xmonad depend
sudo pacman -S xorg-server xorg-apps xorg-xinit  xorg-xmessage libx11 libxft libxinerama libxrandr libxss pkgconf

wait #clone xmonad git
git clone https://github.com/xmonad/xmonad ~/.config/xmonad
git clone https://github.com/xmonad/xmonad-contrib ~/.config/monad

wait
stack init ~/.config/xmonad

wait #set environment path
PATH=$PATH:~/.local/bin
export PATH

wait
stack install  ~/.config/xmonad

wait
#ani-cli
git clone https://github.com/pystardust/ani-cli.git ~/.config

wait
sudo make ~/.config/ani-cli/

wait
startx

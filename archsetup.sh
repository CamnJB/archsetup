#!/bin/bash

#make .config file
echo "making .config"
sudo mkdir ~/.config

wait #download packages
echo "downloading packages"
sudo  pacman -S firefox rofi nitrogen picom alacritty mpv libreoffice pipewire pipewire-alsa pipewire-pulse easyeffects make blender gimp newsboat stack
#japanese fonts
sudo pacman -S adobe-source-han-sans-jp-fonts adobe-source-han-serif-jp-fonts  otf-ipafont ttf-hanazono ttf-sazanami
#japanese inputs mozc
sudo pacman -S fcitx-im fcitx-mozc

wait #download my dotfiles
#my git repo
echo "downloading dotfiles"
sudo git clone https://github.com/CamnJB/dotfiles ~/

echo "copying dotfiles to correct locations"
wait #copy files to locations
sudo cp ~/dotfiles/.xinitrc ~/
sudo cp ~/dotfiles/xmonad ~/.config/
sudo cp ~/dotfiles/.xprofile ~/
sudo cp ~/dotfiles/.vimrc ~/
sudo cp ~/dotfiles/.bashrc ~/
sudo cp ~/dotfiles/xmonad ~/.config/

wait #download xmonad depend
echo "downloading xmonad packages"
sudo pacman -S xorg-server xorg-apps xorg-xinit  xorg-xmessage libx11 libxft libxinerama libxrandr libxss pkgconf

echo "getting xmonad from github"
wait #clone xmonad git
sudo git clone https://github.com/xmonad/xmonad ~/.config/xmonad
sudo git clone https://github.com/xmonad/xmonad-contrib ~/.config/monad

wait
echo "stack init xmonad"
sudo stack init ~/.config/xmonad

wait #set environment path
echo "creating environment path"
sudo PATH=$PATH:~/.local/bin
sudo export PATH

wait
echo "installing xmonad"
sudo stack install  ~/.config/xmonad

wait
echo "getting ani-cli from github"
#ani-cli
sudo git clone https://github.com/pystardust/ani-cli.git ~/.config

wait
echo "making ani-cli"
sudo make ~/.config/ani-cli/

wait
echo "starting"
startx

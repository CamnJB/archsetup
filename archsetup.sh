#!/bin/bash

cd
sudo mkdir ~/.local
sudo mkdir ~/.local/bin

sudo pacman -S base-devel firefox rofi nitrogen picom alacritty mpv libreoffice pipewire pipewire-alsa pipewire-pulse easyeffects make blender gimp newsboat

#syLink dotfiles
cd
sudo git clone https://github.com/CamnJB/dotfiles.git
sudo cp ~/dotfiles/dotfiles/.xinitrc dotfiles/dotfiles/.xprofile ~/dotfiles/dotfiles/.vimrc ~/dotfiles/dotfiles/.bashrc ~/
sudo cp -r ~/dotfiles/dotfiles/.config ~/

#ani-cli clone & build
#cd ~/.config
#git clone https://github.com/pystardust/ani-cli.git
#cd ~/.config/ani-cli 
#sudo make

#boot to xmonad
cd
startx

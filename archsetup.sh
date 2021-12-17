#!/bin/bash

cd
sudo mkdir ~/.local
sudo mkdir ~/.local/bin

sudo pacman -S base-devel firefox rofi nitrogen picom alacritty mpv libreoffice pipewire pipewire-alsa pipewire-pulse easyeffects make blender gimp newsboat
#download xmonad depend
sudo pacman -S xorg xorg-server xorg-apps xorg-xinit libx11 libxft libxinerama libxrandr libxss pkgconf stack
#japanese fonts
sudo pacman -S adobe-source-han-sans-jp-fonts adobe-source-han-serif-jp-fonts  otf-ipafont ttf-hanazono ttf-sazanami
#japanese inputs mozc
sudo pacman -S fcitx-im fcitx-mozc

#syLink dotfiles
cd
sudo git clone https://github.com/CamnJB/dotfiles.git
sudo cp -L ~/dotfiles/dotfiles/.xinitrc dotfiles/dotfiles/.xprofile ~/dotfiles/dotfiles/.vimrc ~/dotfiles/dotfiles/.bashrc ~/
sudo cp -rL ~/dotfiles/dotfiles/.config ~/

#clone & build xmonad
cd ~/.config/xmonad
sudo git clone https://github.com/xmonad/xmonad
sudo git clone https://github.com/xmonad/xmonad-contrib
sudo stack init

cd
PATH=$PATH:~/.local/bin
export PATH

cd ~/.config/xmonad
sudo stack install

#ani-cli clone & build
#cd ~/.config
#git clone https://github.com/pystardust/ani-cli.git
#cd ~/.config/ani-cli 
#sudo make

#boot to xmonad
cd
startx

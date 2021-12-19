#!/bin/bash

#Installs Japanese fonts
sudo pacman -S adobe-source-han-sans-jp-fonts adobe-source-han-serif-jp-fonts  otf-ipafont ttf-hanazono ttf-sazanami
#Installs mozc for Japanese inputs
sudo pacman -S fcitx-im fcitx-mozc

#Add these lines to .bashrc to enbable inputs
#export GYK_IM_MODULE='fcitx'
#export QT_IM_MODULE='fcitx'
#export SDL_IM_MODULE='fcitx'
#export XMODIFIERS='@im=fcitx'

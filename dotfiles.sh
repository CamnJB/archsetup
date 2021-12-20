#!/bin/bash

git clone https://github.com/camnjb/dotfiles ~/dotfiles
cp ~/dotfiles/dotfiles/.bashrc ~/dotfiles/dotfiles/.vimrc ~/dotfiles/dotfiles/.xinitrc ~/dotfilesdotfiles/.xprofile ~/
cp ~/dotfiles/dotfiles/.config/xmonad/xmonad.hs ~/.config/xmonad && cp -r ~/dotfiles/dotfiles/.config/xmonad/lib ~/.config/xmonad/
#xmobarrc
cp ~/dotfiles/dotfiles/.config/xmobar/xmobarrc ~/.config/xmobar/

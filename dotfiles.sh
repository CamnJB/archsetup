#!/bin/bash

git clone https://github.com/camnjb/dotfiles/dotfiles ~/
cp ~/dotfiles/.bashrc ~/dotfiles/.vimrc ~/dotfiles/.xinitrc ~/dotfiles/.xprofile
cp ~/dotfiles/.config/xmonad/xmonad.hs ~/.config/xmonad && cp -r ~/dotfiles/.config/xmonad/lib ~/.config/xmonad/

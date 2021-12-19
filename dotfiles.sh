#!/bin/bash

git clone https://github.com/camnjb/dotfiles ~/
cp ~/dotfiles/dotfiles/.bashrc ~/dotfiles/dotfiles/.vimrc ~//dotfilesdotfiles/.xinitrc ~//dotfilesdotfiles/.xprofile ~/
cp ~/dotfiles/dotfiles/.config/xmonad/xmonad.hs ~/.config/xmonad && cp -r ~/dotfiles/dotfiles/.config/xmonad/lib ~/.config/xmonad/

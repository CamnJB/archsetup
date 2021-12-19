#!/bin/bash

#Download xmonad dependencies
sudo pacman -S xorg-server xorg-apps xorg-xinit libx11 libxft libxinerama libxrandr libxss pkgconf
sudo pacman -Syu

#create directories for xmonad
mkdir -p ~/.local/bin && mkdir -p ~/.config/xmonad && cd ~/.config/xmonad
touch xmonad.hs
echo "import XMonad" >> xmonad.hs
echo "main :: IO ()" >> xmonad.hs
echo "main = xmonad def" >> xmonad.hs

#clone xmonad from git
git clone https://github.com/xmonad/xmonad
git clone https://github.com/xmonad/xmonad-contrib

#####BUILD WITH STACK#####
sudo pacman -S stack
sudo paman -Syu
stack init #--allow-different-user
PATH=$PATH:~/.local/bin && export PATH && echo $PATH >> ~/.bashrc
#sudo source ~/.bashrc
echo $PATH
stack install #--allow-different-user

#####BUILD WITH CABAL#####
#sudo pacman -S cabal-install
#touch cabal.project && echo "packages: */*.cabal" >> cabal.project #If not used cabal will use latest packages from Hackage
#sudo cabal update
#PATH=$PATH:~/.cabal/bin/xmonad && export PATH && echo $PATH >> ~/.bashrc
#source ~/.bashrc
#echo $PATH
#cabal install --package-env=$HOME/.config/xmonad  --lib xmonad xmoand-contrib
#cabal install --package-env=$HOME/.config/xmonad xmonad

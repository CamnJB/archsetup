#!/bin/bash

#Download xmonad dependencies
sudo pacman -S xorg-server xorg-apps xorg-xinit libx11 libxft libxinerama libxrandr libxss pkgconf
sudo pacman -Syu

#create directories for xmonad
mkdir -p ~/.config/xmonad && cd ~/.config/xmonad
touch xmonad.hs
echo "import XMonad" >> xmonad.hs
echo "main :: IO ()" >> xmonad.hs
echo "main = xmonad def" >> xmonad.hs

#clone xmonad from git
sudo git clone https://github.com/xmonad/xmonad
sudo git clone https://github.com/xmonad/xmonad-contrib

#####BUILD WITH STACK#####
#build with stack
sudo pacman -S stack
sudo paman -Syu
echo $PATH
export PATH=$PATH:~./.local/bin
stack init
stack install

#####BUILD WITH CABAL#####
#build with cabal-install
#sudo pacman -S cabal-install
#touch cabal.project && echo "packages: */*.cabal" >> cabal.project #If not used cabal will use latest packages from Hackage
#cabal update
#echo $PATH
#PATH=$PATH:~/.cabal/bin/xmonad
#cabal install --package-env=$HOME/.config/xmonad  --lib xmonad xmoand-contrib
#cabal install --package-env=$HOME/.config/xmonad xmonad

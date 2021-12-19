#!/bin/bash

#####SOURCE#####
mkdir -p ~/.config/xmobar
git clone git://github.com/jaor/xmobar ~/.config/xmobar

cd ~/.config/xmobar
#cabal install -fall_extensions
stack install --flag xmobar:all_extensions

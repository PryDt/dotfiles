#!/bin/sh
#
# update.sh - copies dotfiles from system to repo
#
# WARNING: make sure to run from the repo directory
#

cp ~/.config/i3/* ./config/i3/
cp ~/.config/nvim/* ./config/nvim/
cp ~/.config/rofi/* ./config/rofi/

cp ~/.vimrc ./vimrc
cp ~/.zshrc ./zshrc
cp ~/.xinitrc ./xinitrc
cp ~/.Xresources ./Xresources

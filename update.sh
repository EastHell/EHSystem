#!/bin/bash

# Description:
#   Install useful software
#
# Example of usage:
#   source update.sh

# Install Oh-my-zsh (should be first, because it replace .zshrc file)
source ${SCRIPT_DIR}/omz_install.sh
# Install brew
source ${SCRIPT_DIR}/brew_install.sh

# Add p10k configurations
rm ~/.p10k.zsh
cp ~/.EHSystem/.p10k.zsh ~/.p10k.zsh

# Replace .zshrc with new one
rm ~/.zshrc
cp ~/.EHSystem/.zshrc ~/.zshrc

# nnn plugins
if [ ! -d ${XDG_CONFIG_HOME:-$HOME/.config}/nnn/plugins ]
then
  curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh
fi

# fzf
if [ ! -f ~/.fzf.zsh ]
then
$(brew --prefix)/opt/fzf/install
fi

# neovim config
if [ ! -d ~/.config/nvim ]
then
    mkdir -p ~/.config/nvim
fi

cp -R ~/.EHSystem/.config/nvim ~/.config

# reload zsh
exec zsh
trap 'exit 0' 0
exit 0

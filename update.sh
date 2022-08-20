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
$(brew --prefix)/opt/fzf/install

# reload zsh
exec zsh

#!/bin/bash

# Description:
#   Install oh my zsh
#
# Example of usage:
#   source omz_install.sh
#
# Attention! This script should be used before another scripts with .zsh modifications
# becouse omz backup .zsh file and replace it with selfmaded

if [ -d ~/.oh-my-zsh ]
then
  echo "Oh my zsh already installed"
else
  echo "Installing Oh my zsh"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Replace .zshrc with new one
rm ~/.zshrc
cp ~/.EHSystem/.zshrc ~/.zshrc

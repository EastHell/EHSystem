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

# Replace .zshrc with new one
rm ~/.zshrc
cp ~/.EHSystem/.zshrc ~/.zshrc

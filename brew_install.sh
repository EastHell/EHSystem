#!/bin/bash

# Description:
#   Install homebrew and do necessary configuration
#
# Example of usage:
#   source brew_install.sh

# Check if homebrew already installed, else install it
if [[ $(command -v brew) == "" ]]
then
  echo "Installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  
  # M1 homebrew configuration, might me unecessary for Intel systems
  echo 'eval "\$(opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "\$(opt/homebrew/bin/brew shellenv)"
else
  echo "Homebrew already installed"
  echo "Update homebrew"
  brew update
fi

brew bundle --file ~/.EHSystem/Brewfile

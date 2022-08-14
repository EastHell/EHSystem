#!/bin/bash

# Check if homebrew already installed, else install it
if [[ $(command -v brew) == "" ]]
then
  echo "Installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "\$(opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "\$(opt/homebrew/bin/brew shellenv)"
else
  echo "Homebrew already installed"
  exit 1
fi


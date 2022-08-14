#!/bin/bash

if [ -d ~/.oh-my-zsh ]
then
  echo "Oh my zsh already installed"
  exit 1
else
  echo "Installing Oh my zsh"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

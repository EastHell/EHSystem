#!/bin/bash

# Check if homebrew already installed, else install it
if [[ $(command -v brew) == "" ]]
then
  echo "Homebrew isn't installed"
else
  echo "Homebrew already installed"
  exit 1
fi


#!/bin/bash

# Description:
#   Add path to PATH variable in current shell
#
# Parameters:
#   $1 - path to add
# 
# Exaple of usage
#   source add_to_path.sh ~/.EHSystem
#
# Attention! This script doesent change .zshrc file,
# to add something ing .zshrc file, you will need to
# modify .zshrc file in current repository, which will
# replace .zshrc file from home directory

echo "Export ${1} to PATH"

# Add path enviroment variable if it's not already added
if [[ ":${PATH}:" != *":${1}:"* ]]
then
  export PATH=$PATH:$1
  echo "${1} exported to PATH"
else
  echo "${1} already exist in $PATH variable"
fi

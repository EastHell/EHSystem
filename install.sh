#!/bin/bash

readonly SYSTEM_REMOTE_URL="https://github.com/EastHell/EHSystem.git"
readonly SYSTEM_LOCAL_PATH="${HOME}/.EHSystem"

# Check if EHSystem is installed
if [ -d ${SYSTEM_LOCAL_PATH} ]
then
  echo "${SYSTEM_LOCAL_PATH} already exist."
  exit
fi

# Clone EHSystem repo to ~/.EHSystem
git clone "$SYSTEM_REMOTE_URL" "$SYSTEM_LOCAL_PATH"

# Add path enviroment variable if it doesn't
if [[ ":${PATH}:" != *":~/.EHSystem:"* ]]
then
  echo -n 'export PATH=$PATH:~/.EHSystem' >> ${HOME}/.zshrc
  source $SYSTEM_LOCAL_PATH/.EHSEnviroment
else
  echo "${SYSTEM_LOCAL_PATH} already exist in $PATH variable"
fi

# Install brew
source SYSTEM_LOCAL_PATH/brew_install.sh

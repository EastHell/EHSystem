#!/bin/bash

readonly SYSTEM_REMOTE_URL="https://github.com/EastHell/EHSystem.git"
readonly SYSTEM_LOCAL_PATH="${HOME}/.EHSystem"

if [ -d ${SYSTEM_LOCAL_PATH} ]
then
  echo "${SYSTEM_LOCAL_PATH} already exist."
  exit
fi

git clone "$SYSTEM_REMOTE_URL" "$SYSTEM_LOCAL_PATH"

if [[ ":${PATH}:" != *":~/.EHSystem:"* ]]
then
  echo -n 'export PATH=\$PATH:~/.EHSystem' >> ${HOME}/.zshrc
  source $SYSTEM_LOCAL_PATH/.EHSEnviroment
else
  echo "${SYSTEM_LOCAL_PATH} already exist in $PATH variable"
fi

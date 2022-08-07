#!/bin/bash

SYSTEM_REMOTE_URL="https://github.com/EastHell/EHSystem.git"
SYSTEM_LOCAL_PATH="${HOME}/.EHSystem"

if [ -d ${SYSTEM_LOCAL_PATH} ]
then
  echo "${SYSTEM_LOCAL_PATH} already exist."
  exit
fi

git clone "$SYSTEM_REMOTE_URL" "$SYSTEM_LOCAL_PATH"

if [[ ":${PATH}:" != *":${SYSTEM_LOCAL_PATH}:"* ]]
then
  echo -n $"export PATH=${PATH}:${SYSTEM_LOCAL_PATH}" >> ${HOME}/.zshrc
  export PATH=${PATH}:${SYSTEM_LOCAL_PATH}
else
  echo "${SYSTEM_LOCAL_PATH} already exist in $PATH variable"
fi

#!/bin/bash

SYSTEM_REMOTE_URL="https://github.com/EastHell/System.git"
SYSTEM_LOCAL_PATH="${HOME}/.system"

if [ -d ${SYSTEM_LOCAL_PATH} ]
then
  echo "${SYSTEM_LOCAL_PATH} already exist."
  exit
fi

git clone "$SYSTEM_REMOTE_URL" "$SYSTEM_LOCAL_PATH"

if [[ ":${PATH}:" != *":${SYSTEM_LOCAL_PATH}:"* ]]
then
  echo "${SYSTEM_LOCAL_PATH} already exist in $PATH variable"
else
  echo "export PATH=${PATH}:${SYSTEM_LOCAL_PATH}" >> ${HOME}/.zshrc
  export PATH=${PATH}:${SYSTEM_LOCAL_PATH}
fi

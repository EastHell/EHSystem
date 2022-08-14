#!/bin/bash

# Description:
#   This script trying to clone EHSystem to ~/.EHSystem
#   and add it to PATH variable

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

# Add EHSystem path enviroment variable if it doesn't
source $SYSTEM_LOCAL_PATH/add_to_path.sh ~/.EHSystem

# Run update command
source ${SYSTEM_LOCAL_PATH}/EHSystem update

#!/bin/bash

SOURCE_DIR="/home/node/exampleApp"

# Copy exampleApp to current folder if it is empty
if [ -z "$(ls -A .)" ]; then
  echo "Current folder is empty. Copying files from $SOURCE_DIR..."
  cp -r "$SOURCE_DIR"/* .
fi

# Checking if lock file is created and if node_modules folder does not exist yet, install required packages
if [[ -f "package-lock.json" ]] ;
then
    if [[ ! -d "node_modules" ]] ;
    then
        echo "Installing packages..."
        npm ci
    fi
fi

exec "$@"

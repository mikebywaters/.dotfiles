#!/bin/bash

read -p "Do you want to initiliase this git repository and sync with github? If this repo is already intialised this will reset your code to origin/master [y/N] "
if [[ $REPLY == [yY]* ]]; then
    git init
    git remote add origin "https://github.com/mikebywaters/.dotfiles.git"
    git fetch origin
    git reset --hard origin/master
fi

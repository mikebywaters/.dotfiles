#!/bin/bash
brew install git

read "?Do you want to initiliase git? If this repo is already intialised this will reset your code to origin/master [y/N] "
if [[ $REPLY == [yY]* ]]; then
    git init
    git remote add origin "https://github.com/mikebywaters/.dotfiles.git"
    git fetch origin
    git reset --hard origin/master
fi

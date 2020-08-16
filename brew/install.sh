#!/bin/bash

################################
# Taps                         #
################################
source ~/.dotfiles/brew/vars/taps.sh

brew tap "${taps[@]}"

################################
# Packages                     #
################################
source ~/.dotfiles/brew/vars/packages.sh

brew install "${packages[@]}"
brew cleanup

################################
# Apps                         #
################################
source ~/.dotfiles/brew/vars/apps.sh

for application in ${apps[@]}
do
    brew cask install $application
done

brew cu -afy # Force ugprade of all packages.

#!/bin/bash
set -u
set -e
sudo -v

# Check for Homebrew and install it if missing
if ! brew_location="$(type -p "brew")" || [[ -z $brew_location ]]; then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update && brew upgrade

# Let's get these puppies into the Applications directory.
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Install Caskroom
brew tap buo/cask-upgrade
brew install brew-cask-completion
brew tap homebrew/cask-versions

brew cask outdated # List outdated casks.

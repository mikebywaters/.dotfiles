#!/bin/bash

# Let's get these puppies into the Applications directory.
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Install Caskroom
brew tap caskroom/cask
brew tap buo/cask-upgrade
brew install brew-cask-completion
brew tap caskroom/versions

brew cask outdated # List outdated casks.

# Install packages
apps=(
    # Browsers
    firefox
    google-chrome

    # Automation/Productivity/Team Tools.
    alfred
    harvest
    flux
    transmission
    the-unarchiver
    micro-snitch
    spectacle
    shift

    # Password managers
    lastpass
    1password

    # Developer Tools (Editors/IDE/Terminal)
    github
    vscodium
    iterm2
    transmit # SFTP & Amazon S3 File Transfer
    virtualbox
    vagrant
    vagrant-manager # VM's
    insomnia
    tableplus

    # Media Players/Convertors.
    calibre # eBook conversion/management | https://manual.calibre-ebook.com/generated/en/cli-index.html
    vlc # Best video player.

    # Music
    spotify
    splice
    
    # Chats
    whatsapp
    goofy
    microsoft-teams
    zoomus
    slack

    # Linktree
    pritunl
    zeplin
    tuple

    # misc
    steam
    )

for application in ${apps[@]}
do
    brew cask install $application
done

for application in ${apps[@]}
do
    brew install caskroom/cask/$application
done

brew cu -afy # Force ugprade of all packages.

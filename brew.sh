#!/bin/bash
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew & latest formulae.
brew update && brew upgrade

taps=(
    buildkite/cli
)

brew tap "${taps[@]}"

apps=(
    # Multimedia
    exiftool
    guetzli
    imagemagick
    jpeg
    libpng
    optipng
    ffmpeg

    # Shell and CLI
    awscli
    curl
    git
    git-crypt
    circleci
    coreutils
    grep
    jq
    mkcert
    wget

    docker
    docker-machine
    kubectl
    minikube
    helm
    terraform
    terragrunt

    python3
    pyenv
    node
    yarn

    zsh
    zsh-completions
    zsh-syntax-highlighting
    zplug
)

brew install "${apps[@]}"
brew cleanup
xcode-select --install
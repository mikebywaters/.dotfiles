#!/bin/bash
set -u
set -e
sudo -v

# Python & pyenv
brew upgrade pyenv || true
brew install pyenv || true

# Ensure pyenv is initialized and set in zsh
if ! grep -q "pyenv init -" "~/.zshrc"; then
  echo -e 'if command -v pyenv &> /dev/null; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
fi

if [[ "$PATH" != *:$HOME ]]; then
  echo -e "PATH=$PATH:$HOME/.local/bin" >> ~/.zshrc
fi

source ~/.zshrc
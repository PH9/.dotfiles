#!/usr/bin/env bash
set -euo pipefail

brew bundle --file "$(dirname $0)"/Brewfile --no-lock

brew tap homebrew/cask-fonts
brew install --cask font-fira-code
brew install zsh-syntax-highlighting

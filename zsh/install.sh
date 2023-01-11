#!/usr/bin/env bash
set -euo pipefail

brew install starship
eval "$(starship init zsh)"

brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font

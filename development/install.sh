#!/usr/bin/env bash

brew bundle --file $(dirname $0)/Brewfile --no-lock

brew tap homebrew/cask-fonts
brew install --cask font-fira-code

#!/usr/bin/env bash

brew install 'nvm'
. nvm/path.zsh
nvm install --lts
nvm use --lts

npm install --global yarn

# Web Developer
brew install 'pyenv'
python_to_install_version=$(pyenv install -l | rg ' 3.\d+.\d+$' | tail -1 | xargs)
pyenv install -s "$python_to_install_version"

brew install 'pipenv'
brew install --cask 'chromedriver'

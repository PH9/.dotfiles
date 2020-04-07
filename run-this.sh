#!/bin/zsh

# install brew

if ! [ -x "$(command -v brew)" ]; then
  echo '[!] Homebrew is not install yet, trying to install...'
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo '[I] Homebrew is already install, skip installation.'
fi

# brew setup

brew update
brew upgrade

# Setup Ruby
brew install rbenv

ruby_version=2.7.0

rbenv install $ruby_version
rbenv init

rbenv global $ruby_version

if grep 'eval "$(rbenv init -)"' "$HOME/.zshrc" >/dev/null; then
    echo "[I] Already set rbenv to ~/.zshrc"
else
    echo "[!] Setting rbenv to ~/.zshrc"
    ex -sc '1i|eval "$(rbenv init -)"' -cx $HOME/.zshrc
    eval "$(rbenv init -)"
fi

gem install bundler
bundle update

xcode_version=11.4

xcversion update
xcversion list
xcversion install $xcode_version
xcversion select $xcode_version --symlink

# Continue with brew since some dependency needed full version of xcode

brew bundle

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

gem install bundler
bundle install

# Setup vi
echo 'set number
set ruler
syntax on' > ~/.vimrc

# TODO: Setup ~/.zshrc
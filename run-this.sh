#!/bin/zsh

./macos/install.sh
./macos/macos.sh

my_email=wasith.t@gmail.com

git config --global user.name "Wasith Theerapattrathamrong"
git config --global user.email $my_email

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

ruby_version=2.7.1

echo '[I] Install ruby version '$ruby_version' from rbenv.
If already install it will skip automatically.'

rbenv install $ruby_version -s
rbenv init

rbenv global $ruby_version

if grep 'eval "$(rbenv init -)"' "$HOME/.zshrc" >/dev/null; then
    echo "[I] Already set rbenv to ~/.zshrc"
else
    echo "[!] Setting rbenv to ~/.zshrc"
    ex -sc '1i|eval "$(rbenv init -)"' -cx $HOME/.zshrc
fi

eval "$(rbenv init -)"

gem install bundler
bundle update

xcode_version=11.4
export XCODE_INSTALL_USER=$my_email

xcversion update
xcversion list
xcversion install $xcode_version
xcversion select $xcode_version --symlink

# Continue with brew since some dependency needed full version of xcode

brew bundle

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Setup vi
echo 'set number
set ruler
syntax on' > ~/.vimrc

# TODO: Setup ~/.zshrc

# Install SDKMAN

curl -s "https://get.sdkman.io" | bash

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

sdk install java 11.0.6.hs-adpt

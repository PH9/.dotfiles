#!/bin/zsh

# install brew

if ! [ -x "$(command -v brew)" ]; then
  echo '[!] Homebrew is not install yet, trying to install...'
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo '[I] Homebrew is already install, skip installation.'
fi


brew update
brew upgrade

brew bundle

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Setup Ruby
ruby_version=2.7.0

rbenv install $ruby_version
rbenv init

rbenv global $ruby_version

if grep 'eval "$(rbenv init -)"' "$HOME/.zshrc" >/dev/null; then
    echo "[I] Already set rbenv to ~/.zshrc"
else
    echo "[!] Setting rbenv to ~/.zshrc"
    ex -sc '1i|eval "$(rbenv init -)"' -cx $HOME/.zshrc
fi

gem install bundler
bundle install

# Setup vi
echo 'set number
set ruler
syntax on' > ~/.vimrc

# TODO: Setup ~/.zshrc
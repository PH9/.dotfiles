#!/bin/zsh

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

brew bundle

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Setup Ruby
ruby_version=2.6.5

rbenv install $ruby_version
rbenv init

rbenv global $ruby_version

echo 'eval "$(rbenv init -)"' >> ~/.zshrc

gem install bundler
bundle install

# Setup vi
echo 'set number
set ruler
syntax on' > ~/.vimrc

# TODO: Setup ~/.zshrc
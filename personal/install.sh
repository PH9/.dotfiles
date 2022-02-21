# This file will install a list from Brewfile in the same directory.
# --no-lock will not create Brewfile.lock after install
brew bundle --file $(dirname $0)/Brewfile --no-lock

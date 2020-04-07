if grep 'eval "$(rbenv init -)"' "$HOME/.zshrc"
then
    echo "Already set rbenv to ~/.zshrc"
else
    echo "Setting rbenv to ~/.zshrc"
fi
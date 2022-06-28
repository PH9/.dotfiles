# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gp='git push origin HEAD'

alias gca='git commit -a'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.

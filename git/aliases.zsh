# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (($ + commands[hub])); then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias g'git'
alias gs='git status' # upgrade your git if -sb breaks for you. it's fun.
alias gst='git status'
alias gsb='git status -sb'

alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

alias gco='git checkout'
alias gcb='git checkout -b'

alias gd='git diff'
alias gdc='git diff --cached'
alias gds='git diff --staged'

alias ga='git add'
alias gc='git commit -v'
alias gca='git commit -a'
alias gcm='git commit -m'
alias 'gc!'='git commit -v --amend'
alias 'gcn!'='git commit -v --no-edit --amend'

alias gp='git push origin HEAD'

alias gf='git fetch'
alias gfa='git fetch --all --prune --jobs=10'
alias gup='git pull --rebase'
alias gupa='git pull --rebase --autostash'
alias gupav='git pull --rebase --autostash -v'
alias gupom='git pull --rebase origin $(git_main_branch) --autostash -v'

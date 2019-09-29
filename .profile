alias e="code"

alias bu="bundle update"
alias be="bundle exec"
alias bepu="bundle exec pod update"
alias bf="bundle exec fastlane"

alias yt="youtube-dl"

export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/tools/bin:$PATH"
export PATH="$PATH:$HOME/flutter/bin"

export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"

eval "$(rbenv init -)"

alias ios="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
alias watchos="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator\ \(Watch\).app"

# GIT
alias gs='git status -sb'

# lazy to type remote and branch
alias gp='git push origin HEAD'

# remove + or - in front of line it already green and red
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

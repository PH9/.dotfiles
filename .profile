alias bu=bundle update
alias be=bundle exec
alias bepu=bundle exec pod update
alias bf=bundle exec fastlane

export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"
export PATH=$JAVA_HOME/bin:$PATH
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"

eval "$(rbenv init -)"

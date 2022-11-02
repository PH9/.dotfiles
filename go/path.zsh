export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"

export GOROOT="$(brew --prefix golang)/libexec"

if [[ $PATH != *$GOPATH* ]]; then
  export PATH="${GOPATH}/bin:${PATH}"
fi

if [[ $PATH != *$GOROOT* ]]; then
  export PATH="${GOROOT}/bin:${PATH}"
fi

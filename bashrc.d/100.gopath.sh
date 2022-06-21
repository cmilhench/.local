if [[ -d "/usr/local/go" ]]; then
  export GOPATH=/usr/local/go && PATH=$GOPATH/bin:$PATH
  export GOPRIVATE='github.com/cm-dev'
fi


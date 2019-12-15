if [[ -d "$HOME/Code/cm/golang" ]]; then
  export GOPATH=$HOME/Code/cm/golang && PATH=$GOPATH/bin:$PATH
  export GOPRIVATE='github.com/cm-dev'
fi


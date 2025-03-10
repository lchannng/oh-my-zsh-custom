# Environment variable
# set PATH so it includes user's private bin if it exists
if [ -d $HOME/.local/bin ]; then
    export PATH=$HOME/.local/bin:$PATH
fi

if [ -n $GOPATH ]; then
    export GOPATH=$HOME/go
fi

if [ -d $HOME/coding/go ]; then
    export GOPATH=$HOME/coding/go
fi

if [ -d $GOPATH/bin ]; then
    export PATH=$GOPATH/bin:$PATH
fi

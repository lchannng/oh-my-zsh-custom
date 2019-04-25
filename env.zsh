# Environment variable
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.bin" ] ; then
    PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/go" ]; then
    export GOPATH=$HOME/codin/go
    export PATH="$PATH:$GOPATH/bin"
fi

if [ -d "$HOME/usr/bin" ]; then
    export PATH="$PATH:$HOME/usr/bin"
fi

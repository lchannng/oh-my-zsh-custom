# Environment variable
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.bin" ] ; then
    PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/coding/go" ]; then
    export GOPATH=$HOME/coding/go
    export PATH="$PATH:$GOPATH/bin"
fi

if [ -d "$HOME/.local/bin" ]; then
    export PATH="$PATH:$HOME/.local/bin"
fi

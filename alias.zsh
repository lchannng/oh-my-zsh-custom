# editor
export EDITOR='vim'
alias vi='vim'
alias lvim="vim -c \"normal '0\"" #open last edited file

# pacman
alias pacu='pacman -Syu'
alias pac='pacman -Si'
alias pacQi='pacman -Qi'
alias pacRs='pacman -Rs'
alias pacs='pacman -Ss'

# extract tarball
alias gz='tar zxvf'
alias bz2='tar jxvf'

#others
alias du='du -h'
alias df='df -h'
alias lsblk='lsblk -l -f'
alias c='clear'

function setproxy {
    export http_proxy=127.0.0.1:1087
    export https_proxy=127.0.0.1:1087
}

function unsetproxy {
    unset http_proxy
    unset https_proxy
}

function mkpasswd() {
    cat /dev/urandom | LC_CTYPE=C tr -dc 'a-zA-Z0-9' | fold -w ${1:-32} | head -n 1
}

function mksshkey() {
    name=$1
    re="[[:space:]]+"
    if [[ $name =~ $re ]]; then
        echo "key name contains on or more spaces"
    fi
    ssh-keygen -t ed25519 -N "" -f ~/.ssh/$name
}


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

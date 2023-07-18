# terminal prompt color
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \$ '

# Git Bash in Windows
# export PS1='\[\033[32m\]\u@\h \[\033[35m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\] '

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias gl='git log'
alias grep='grep --color'
alias egrep='egrep --color'
alias py='python3'


# set proxy to access magic websites in terminal
set_proxy()
{
    export http_proxy=127.0.0.1:1234;
    export https_proxy=127.0.0.1:1234;
}

# unset proxy
unset_proxy()
{
    unset https_proxy;
    unset http_proxy;
}



# terminal prompt color
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \$ '

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias gl='git log'
alias grep='grep --color'
alias py='python3'


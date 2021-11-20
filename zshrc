# ignore case sensitive
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

# colors
autoload -U colors && colors
PROMPT="%{$fg[blue]%}%B%n%{$reset_color%} %{$fg[green]%}%B%1~ %{$reset_color%}%% "

# customed alias
alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'
alias typora='open -a /Applications/Typora.app/Contents/MacOS/Typora'

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -a'
alias gs='git status'
alias gl='git log'
alias grep='grep --color'
alias py='python3'


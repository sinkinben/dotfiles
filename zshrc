# ignore case sensitive
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

# display git branch name on prompt
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

# colors
autoload -U colors && colors
PROMPT="%{$fg[blue]%}%B%n%{$reset_color%} %{$fg[green]%}%B%1~%{$reset_color%} %{$fg[cyan]%}%B$(parse_git_branch)%{$reset_color%} %% "
export CLICOLOR=1
export LSCOLORS=ExGxFxdaCxDaDahbadeche

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


function runcpp()
{
    if [ -f ./a.out ]; then rm a.out; fi;
    clang++ $1 -o a.out -std=c++17; ./a.out
}


# find all files by filename pattern, case insensitive
function fall() { find . -iname "$1"; }

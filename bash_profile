#Shell customizations
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
if [[ $OSTYPE == "darwin21" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"   
    shopt -s histappend
    complete -C '/usr/local/bin/aws_completer' aws
    #bash completion
    [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
    source <(kubectl completion bash)
    #shell env variables
    source ~/.dotfiles/env 
    source ~/.alias
fi
if [[ $OSTYPE == "linux-gnu" ]]; then
    source ~/.alias
fi

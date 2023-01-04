#Shell customizations
export PS1="\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export HISTTIMEFORMAT="%d/%m/%y %T "
if [[ $OSTYPE == "darwin21" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"   
    shopt -s histappend
    complete -C '/opt/homebrew/bin/aws_completer' aws
    #bash completion
    [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
    #source all the things
    source ~/.dotfiles/all_the_things
fi
if [[ $OSTYPE == "linux-gnu" ]]; then
    source ~/.alias
    source ~/stolen_alias_linux
fi

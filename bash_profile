#Shell customizations
export ENVIRONMENT="DEVELOPMENT"
export PS1="\[\033[33;1m\]\W\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export HISTTIMEFORMAT="%d/%m/%y %T "
if [[ $OSTYPE == "darwin23" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"   
    shopt -s histappend
    complete -C '/usr/local/bin/aws_completer' aws

    #bash completion
    [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
    #Python version management  (brew install pyenv)
    export PYENV_ROOT="$HOME/.pyenv"
    [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
    #source all the things
    source ~/.dotfiles/all_the_things
fi
if [[ $OSTYPE == "linux-gnu" ]]; then
    source ~/.alias
    source ~/.dotfiles/all_the_things_linux
fi

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


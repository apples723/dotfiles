export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

#vault cert for 2u-login
export VAULT_CACERT=$HOME/.certs/vault-ca.pem
if [[ $OSTYPE == "darwin21" ]]; then
    export GOPATH=$HOME/go
    export GOROOT="$(brew --prefix golang)/libexec"
    export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
    shopt -s histappend
    complete -C '/usr/local/bin/aws_completer' aws
    #bash completion
    [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
    source <(kubectl completion bash)
    export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
    source ~/.alias
fi
if [[ $OSTYPE == "linux-gnu" ]]; then
    source ~/.alias
fi

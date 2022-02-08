export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
#vault addr for 2u-login
export VAULT_ADDR=https://vault.main.prod.2u.com:8200/
#aws region 
export AWS_REGION=us-west-2
#vault cert for 2u-login
export VAULT_CACERT=$HOME/.certs/vault-ca.pem
source ~/.alias
source ~/.dotfiles/k8s_aliases
source ~/.dotfiles/aws_aliases
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
shopt -s histappend
alias new_ec2="sh ~/.terraformify/terraformify.sh "
alias new_ec2_dev="sh ~/.terraformify_dev/terraformify.sh "
complete -C '/usr/local/bin/aws_completer' aws
#bash completion
 [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
source <(kubectl completion bash)
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
#vault addr for 2u-login
export VAULT_ADDR=https://vault.main.prod.2u.com:8200/
#vault cert for 2u-login
export VAULT_CACERT=$HOME/.certs/vault-ca.pem
source ~/.alias
source ~/.dotfiles/k8s_aliases
shopt -s histappend
alias new_ec2="sh ~/.terraformify/terraformify.sh "
alias new_ec2_dev="sh ~/.terraformify_dev/terraformify.sh "
export PATH="/usr/local/opt/openjdk/bin:$PATH"

ln -s ~/.dotfiles/bash_profile ~/.bash_profile
if [[ $OSTYPE == "linux-gnu" ]]; then
    ln -s ~/.dotfiles/linux_alias ~/.alias
fi
if [[ $OSTYPE == "darwin"* ]]; then
    ln -s ~/.dotfiles/alias ~/.alias
fi
#all distros...
ln -s ~/.dotfiles/gitignore_global ~/.gitignore_global
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/terraformrc ~/.terraformrc

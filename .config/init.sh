#!/bin/bash
#echo ".config-repo/" >> $HOME/.gitignore
git clone --bare https://github.com/scaramangado/private-configuration.git $HOME/.private-config-repo
git clone --bare https://github.com/scaramangado/configuration.git $HOME/.config-repo
git --git-dir=$HOME/.config-repo/ --work-tree=$HOME config --local status.showUntrackedFiles no
[ -f .zshrc ] && mv .zshrc .zshrc.bak
git --git-dir=$HOME/.config-repo/ --work-tree=$HOME checkout main
git --git-dir=$HOME/.private-config-repo/ --work-tree=$HOME config --local status.showUntrackedFiles no
git --git-dir=$HOME/.private-config-repo/ --work-tree=$HOME checkout main
source $HOME/.zshrc

echo "Run .config/switch-to-ssh.sh after copying the SSH keys"


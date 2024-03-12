#!/bin/zsh
if [[ "$PWD" != "$HOME/dotfiles/zsh" ]]; then
	echo 'Please clone into ~/dotfiles/zsh'
	exit 1
fi

set -v

echo Clone submodules
git submodule update --depth 1 --init --recursive

echo Creating symlinks
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc

echo "====== manual installs ======"
echo "Install zoxide: https://github.com/ajeetdsouza/zoxide"


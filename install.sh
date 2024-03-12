#!/bin/zsh
if [[ "$PWD" != "$HOME/dotfiles/zsh" ]]; then
	echo 'Please clone into ~/dotfiles/zsh'
	exit 1
fi

set -v

echo Clone antidote
git clone --depth=1 https://github.com/mattmc3/antidote.git antidote

echo Creating symlinks
ln -s -f ~/dotfiles/zsh/zshrc ~/.zshrc

echo "====== manual installs ======"
echo "Install zoxide: https://github.com/ajeetdsouza/zoxide"


#!/bin/zsh
if [[ "$PWD" != "$HOME/dotfiles/zsh" ]]; then
	echo 'Please clone into ~/dotfiles/zsh'
	exit 1
fi

echo "Copy zshrc_stub to zshrc if it doesn't exist"
[ ! -f ./zshrc ] && cp zshrc_stub zshrc

echo Clone antidote
git clone --depth=1 https://github.com/mattmc3/antidote.git antidote

echo Re-bundle antidote
rm -f zsh_plugins.zsh

echo Creating symlinks
ln -s -f ~/dotfiles/zsh/zshrc ~/.zshrc

echo "====== manual installs ======"
echo "Install zoxide: https://github.com/ajeetdsouza/zoxide"

exec zsh

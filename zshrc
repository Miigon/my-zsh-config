# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

zshhome="$HOME/dotfiles/zsh"

export EDITOR=nvim

### oh my zsh config
DISABLE_MAGIC_FUNCTIONS="true" # no auto escape brackets in url
HIST_STAMPS="yyyy-mm-dd"

####### Antidote #######
zsh_plugins=$zshhome/zsh_plugins.zsh
fpath+=($zshhome/antidote)
autoload -Uz $zshhome/antidote/antidote
# Generate static file in a subshell when zsh_plugins.txt is updated.
if [[ ! $zsh_plugins -nt ${zsh_plugins:r}.txt ]]; then
  (antidote bundle <${zsh_plugins:r}.txt >|$zsh_plugins)
fi
autoload -Uz compinit && compinit
source $zsh_plugins
########################

HIST_STAMPS="yyyy-mm-dd"

export LANG=en_US.UTF-8
alias vim="nvim"
alias sl="ls"

# remove ugly ohmyzsh colors.
export LSCOLORS=
export LS_COLORS=

eval "$(zoxide init zsh)"

FILE=$zshhome/localrc && test -f $FILE && source $FILE

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $zshhome/p10k.zsh ]] || source $zshhome/p10k.zsh

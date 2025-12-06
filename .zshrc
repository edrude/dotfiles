# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# oh-my-zsh setup
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
HIST_STAMPS="mm/dd/yyyy"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
PATH="~/bin:$PATH"
export STOW_DIR="$HOME/dotfiles"
export STOW_TARGET="$HOME"


if command -v ~/bin/nvim &>/dev/null; then
  alias vim='~/bin/nvim'
fi

alias bake='bundle exec rake'
alias be='bundle exec'

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="fishy"

plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.local/bin:$HOME/anaconda3/bin:/usr/local/opt/curl/bin:/usr/local/opt/gettext/bin:$PATH"

GPG_TTY=$(tty)
export GPG_TTY

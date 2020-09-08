export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="fishy"

plugins=(git vi-mode history-substring-search)

# for ZSH
case "$OSTYPE" in
  darwin*)
    plugins+=(osx)
  ;;
  linux*)
  ;;
  dragonfly*|freebsd*|netbsd*|openbsd*)
  ;;
esac

source $ZSH/oh-my-zsh.sh


if (( $+commands[rbenv] )); then
  eval "$(rbenv init -)"
fi

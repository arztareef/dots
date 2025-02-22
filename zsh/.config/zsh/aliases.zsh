# Aliases
alias f="fastfetch"
alias lg="lazygit"
alias fk='fuck'
alias bal='bob update --all'
alias n='nvim'
alias v='vim'
alias szrc="source $ZDOTDIR/.zshrc"

if command -v eza 2>&1 >/dev/null 
then
  alias ls="eza --color=always --icons=always --group-directories-first -h"
  alias l="eza -l --color=always --icons=always --group-directories-first -h"
  alias la="eza -la --color=always --icons=always --group-directories-first -h"
  alias ld="eza -D --color=always --icons=always --group-directories-first"
  alias lf="eza -f --color=always --icons=always --group-directories-first"
fi

if command -v bat 2>&1 >/dev/null
then
  alias cat="bat"
fi

if command -v zoxide 2>&1 >/dev/null
then
  alias cd="z"
fi

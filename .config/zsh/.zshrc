
#                     __                       ____
#   ____ __________  / /_____ _________  ___  / __/
#  / __ `/ ___/_  / / __/ __ `/ ___/ _ \/ _ \/ /_
# / /_/ / /    / /_/ /_/ /_/ / /  /  __/  __/ __/
# \__,_/_/    /___/\__/\__,_/_/   \___/\___/_/
#
#	Z-SH System configuration created by arztareef.


########### Options

setopt no_case_glob # Case Insensitive globbing
setopt auto_cd # Auto Changed Directory i.g .. /tmp /etc
setopt append_history # Append the history instead of overwriting it.
setopt inc_append_history # Save history after every command instead of exiting it
setopt hist_expire_dups_first # Expire duplicates first
setopt hist_ignore_dups # do not store duplications
setopt hist_find_no_dups # ignore duplicates when searching
setopt hist_reduce_blanks # reduce blanks from history
setopt hist_verify # allows to change !! before execution setopt correct # Correction to invalid commands. setopt correct_all # Same thing setopt interactivecomments # allow comments in inline terminal
setopt list_rows_first

########## History

HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history # File location to save the history in (!zdotdir = home)
SAVEHIST=4096 # Amount of lines to save in .zsh_history
HISTSIZE=256 # Amount of lines to load in a current session from .zsh_history

########## Themes

# Tardwm
export red="#d96c70"
export green="#8abd80"
export blue="#6f8fae"
export gray="#333333"
export white="#cccccc"
export fg="#666666"
export black="#24272c"

########## Aliases


alias nv="nvim"
alias -g ls='eza --icons always'
alias -g ll='ls -l'
alias -g la='ls -la'
alias open='xdg-open'
alias -g pcup="sudo pacman -Syu"
alias -g pcin="sudo pacman -S"
alias -g pcrm="sudo pacman -Rsnc"
alias zconf="$HOME/.config/zsh"
alias dwmconf="$HOME/.local/share/dwm"
alias dwmauto="nv $HOME/.local/share/dwm/autostart.sh"
alias dmenuconf="$HOME/.local/share/dmenu"
alias dwmbconf="$HOME/.local/share/dwmblocks"
alias stconf="$HOME/.local/share/st"
alias localshare="$HOME/.local/share/"
alias dots="$HOME/.dots/"
alias nvconf="$HOME/.config/nvim"
alias sbarconf="$HOME/.local/share/sbar"
alias zrc="nvim $HOME/.config/zsh/.zshrc && source ~/.config/zsh/.zshrc"
alias srczsh="source $HOME/.config/zsh/.zshrc"
alias geverything="git add . && git commit -m \"new update\" && git push origin master"
alias incle="rm config.h; sudo make clean install && make clean"
alias config="cd $HOME/.config"
alias clswp='rm -rf $HOME/.local/state/nvim/swap/*'
alias killsbar="kill -9 $(cat ~/.cache/pidofbar) && xsetroot -name \"Killed sbar.\""
alias unlockdb="sudo rm -vf /var/lib/pacman/db.lck"
alias lg="lazygit"

########## Completion

autoload -Uz compinit && compinit

# Case in-sensitive
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Bash completion
autoload bashcompinit && bashcompinit

########## Exporting Variables

export EDITOR="nvim"
export TERM="xterm-256color"
export BROWSER="librewolf"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share/"
export GOPATH="$HOME/.local/share/go"
export BAT_THEME="ansi"
export XCURSOR_PATH=${XCURSOR_PATH}:$HOME/.icons:$HOME/.local/share/icons

if [ -d "$HOME/.local/bin" ]; then
    export PATH=$PATH:$HOME/.local/bin
fi

if [ -d "$HOME/.cargo/bin" ]; then
    export PATH=$PATH:$HOME/.cargo/bin
fi

if [ -d "$HOME/.local/share/nvim/mason/bin" ]; then
    export PATH=$PATH:$HOME/.local/share/nvim/mason/bin
fi

########## PROMPT
PROMPT="%(?.(%F{4}%B%n%b%f%) %F{13}%1~%f > .(%F{1}%B%n%b%f%) %F{13}%1~%f > )"
RPROMPT="%(?..:()"

########## SOURCING

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZDOTDIR/.git-prompt.sh

ZSH_AUTOSUGGEST_MANUAL_REBIND=" "

########## Syntax

typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=1,bold'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=135,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=5,underline'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=5,bold,underline'
ZSH_HIGHLIGHT_STYLES[command]='fg=5'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=5,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=4,bold'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=12,bold,underline'
ZSH_HIGHLIGHT_STYLES[path]='fg=7,underline'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=13,underline'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=12,bold'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=12,underline'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=12,bold'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=12,underline'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=12,bold'
ZSH_HIGHLIGHT_STYLES[comment]='fg=7,underline'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh



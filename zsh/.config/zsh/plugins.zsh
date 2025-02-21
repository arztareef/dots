# Directory for zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Automaticall install zinit if the directory is not present
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

###############
# Plugins
###############

# syntax-highlighting, autosuggestions
zinit ice silent wait"!0" 
zinit light zsh-users/zsh-syntax-highlighting
zinit ice silent wait"!0" 
zinit light zsh-users/zsh-autosuggestions

# Zsh-syntax highlighting colorscheme
source "$ZDOTDIR/themes/mocha.zsh"

# Zsh autosuggestions configuration
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_MANUAL_REBIND=" "


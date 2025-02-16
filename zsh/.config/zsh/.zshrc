# Sourcing
source "$ZDOTDIR/eval.zsh"
source "$ZDOTDIR/options.zsh"
source "$ZDOTDIR/aliases.zsh"
source "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

# zsh-autosuggest config
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_MANUAL_REBIND=" "

# Colorscheme
source "$ZDOTDIR/themes/mocha.zsh"


# Sourcing autocompletion
source "$ZDOTDIR/completion.zsh"

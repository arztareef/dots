source "$ZDOTDIR/eval.zsh"

# Plugins
source "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_MANUAL_REBIND=" "

# Define a function to load heavy completions after the first prompt
function load_completions_once {
  source "$ZDOTDIR/options.zsh"
  source "$ZDOTDIR/aliases.zsh"
  # Colorscheme
  source "$ZDOTDIR/themes/mocha.zsh"
  # Completion
  source "$ZDOTDIR/completion.zsh"
  precmd_functions=(${(M)precmd_functions:#load_completions_once})
}

# Add the function to the precmd hook (a built-in mechanism)
precmd_functions+=(load_completions_once)


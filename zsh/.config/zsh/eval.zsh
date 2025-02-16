# Zoxide
eval "$(zoxide init zsh)"
### SETTING THE STARSHIP PROMPT ###
eval "$(starship init zsh)"

eval $(thefuck --alias)
# You can use whatever you want as an alias, like for Mondays:
eval $(thefuck --alias FUCK)

if which fzf &>/dev/null; then
  # Set up fzf key bindings and fuzzy completion
  source <(fzf --zsh)
fi

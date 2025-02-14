
# Zoxide 
eval "$(zoxide init zsh)"
### SETTING THE STARSHIP PROMPT ###
eval "$(starship init zsh)"

eval $(thefuck --alias)
# You can use whatever you want as an alias, like for Mondays:
eval $(thefuck --alias FUCK)

# FZF
if command -v fzf &> /dev/null; then
  source <(fzf --zsh)
fi

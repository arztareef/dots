
# ===============================
# ZSH Autocompletion Configuration
# ===============================

# -- Completer Functions --
# _complete      : Main completer for our completions.
# _approximate   : Tries to correct already typed context if no match is found.
# _expand_alias  : Expands an alias; must be declared before _complete.
# _extensions    : Completes the glob *., suggesting possible file extensions.
zstyle ':completion:*' completer _extensions _complete _approximate

# -- Matching and Case Sensitivity --
zstyle ':completion:*' matcher-list \
    '' \
    'm:{a-zA-Z}={A-Za-z}' \
    'r:|[._-]=* r:|=*' \
    'l:|=* r:|=*'

# -- Directory and File Handling --
# Enable completion for ".." directories
zstyle ':completion:*' special-dirs true

# Squeeze multiple slashes (e.g. // becomes / instead of /*/)
zstyle ':completion:*' squeeze-slashes true

# -- Menu Selection and Output Grouping --
# Enable menu selection for completions
zstyle ':completion:*' menu select

# Grouping output (set to empty to disable additional grouping headers)
zstyle ':completion:*' group-name ''

# Show verbose comments with completions when available
zstyle ':completion:*' verbose yes

# Format for messages and warnings
zstyle ':completion:*:messages' format ' %F{magenta} -- %d --%f'
zstyle ':completion:*:warnings' format '%B%F{red}==> no matches found%f %b'

# -- Corrections --
# Format corrections output using _approximate
zstyle ':completion:*:*:*:*:corrections' format '%U%B%F{blue}%d (errors: %e)%f%B%u'

# -- Caching --
# Enable caching for completion data
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"

# -- Colors and Decorations --
# Format descriptions with color and text attributes
zstyle ':completion:*:*:*:*:descriptions' format '%U%B%F{magenta}%d%f%b%u'

# Use LS_COLORS for file listing in completions
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# -- Module Loading and Key Bindings --
# Load the complist module for enhanced listing
zmodload zsh/complist

# Bind Shift+Tab to reverse menu completion in menuselect mode
bindkey -M menuselect '^[[Z' reverse-menu-complete

# Load bash compatibility for older bash completions
autoload bashcompinit && bashcompinit

# Initialize the completion system
autoload -Uz compinit
compinit

# ===============================
# ZSH Autocompletion Configuration
# ===============================

# -- Completer Functions --
# Set up completer functions:
#   _extensions: Completes file extensions (e.g., *.)
#   _complete: Main completer for generating completions
#   _expand_alias  : Expands an alias; must be declared before _complete.
#   _approximate: Corrects already typed text if no exact match is found
zstyle ':completion:*' completer _extensions _complete _approximate

# -- Matching and Case Sensitivity --
# Define matching rules to allow flexible and case-insensitive matching.
# (The commented block below shows an alternate configuration.)
zstyle ':completion:*' matcher-list \
    '' \
    'm:{a-zA-Z}={A-Za-z}' \
    'r:|[._-]=* r:|=*' \
    'l:|=* r:|=*'

# -- Directory and File Handling --
# Enable completion for parent directory ("..")
zstyle ':completion:*' special-dirs true

# Collapse multiple consecutive slashes into a single slash
zstyle ':completion:*' squeeze-slashes true

# -- Menu Selection and Output Grouping --
# Enable interactive menu selection for completions
zstyle ':completion:*' menu select

# List directories before files in the completion list
zstyle ':completion:*' list-dirs-first true

# Disable additional grouping headers by setting the group name to empty
zstyle ':completion:*' group-name ''

# Enable verbose comments with completions when available
zstyle ':completion:*' verbose yes

# -- Messages and Warnings Formatting --
# Customize the format for completion messages and warnings
zstyle ':completion:*:messages' format '%F{yellow}==> %d %f'
zstyle ':completion:*:warnings' format '%B%F{red}==> no matches found%f %b'

# -- Corrections --
# Format the corrections output provided by _approximate
zstyle ':completion:*:*:*:*:corrections' format '%U%B%F{blue}%d (errors: %e)%f%B%u'

# -- Caching --
# Enable caching to speed up completion data retrieval
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"

# Enable alias expansion for sudo commands during completion
zstyle ':completion::complete:*' gain-privileges 1 

# -- Colors and Decorations --
# Set the format for descriptions with color and text attributes
zstyle ':completion:*:*:*:*:descriptions' format '%U%B%F{magenta}%d%f%b%u'

# Use LS_COLORS for file listing colors in completions
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Separate sections in manual page completions
zstyle ':completion:*:manuals' separate-sections true 

# -- Module Loading and Key Bindings --
# Load the complist module for enhanced completion listing
zmodload zsh/complist

# Bind Shift+Tab to reverse the menu selection order in menuselect mode
bindkey -M menuselect '^[[Z' reverse-menu-complete

# Load bash compatibility for older bash completions
autoload bashcompinit && bashcompinit

# Initialize the Zsh completion system
autoload -Uz compinit
# https://gist.github.com/ctechols/ca1035271ad134841284?permalink_comment_id=2978873
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;
# _comp_options+=(globdots)        # Include hidden files.

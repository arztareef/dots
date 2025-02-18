# Options
setopt HIST_IGNORE_ALL_DUPS   # ignore duplicates in history
setopt HIST_FIND_NO_DUPS      # do not find duplicate commands while searching
setopt HIST_EXPIRE_DUPS_FIRST # expire duplicates first
setopt HIST_IGNORE_DUPS       # do not store duplications
setopt HIST_REDUCE_BLANKS     # removes blank lines from history
setopt AUTO_CD                # auto cd on ./dir
setopt NO_CASE_GLOB           # Case insensitive globbing
setopt HIST_VERIFY            # allows to change !! before execution
# setopt GLOB_COMPLETE
setopt SHARE_HISTORY # share history across multiple zsh sessions
setopt EXTENDED_GLOB
setopt APPEND_HISTORY      # append to history
setopt interactivecomments # interactive comments
setopt INC_APPEND_HISTORY  # adds commands as they are typed, not at shell exit
setopt LIST_PACKED         # Pack the completions into a smaller stuff idk

# History
export HISTSIZE=128 # Memory
export SAVEHIST=256 # History File
export HISTFILE="$ZDOTDIR/.zsh_history"

# Use vim-keybindings
# bindkey -v

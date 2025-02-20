# History Options
setopt HIST_IGNORE_ALL_DUPS   # Remove older duplicate commands when adding a new one.
setopt HIST_FIND_NO_DUPS      # Exclude duplicate commands from history searches.
setopt HIST_EXPIRE_DUPS_FIRST # Trim duplicates before unique commands when history is full.
setopt HIST_IGNORE_DUPS       # Skip storing a command if it matches the immediately previous one.
setopt HIST_REDUCE_BLANKS     # Remove extra blanks from commands before saving.
setopt HIST_VERIFY            # Expand history (e.g. !!) into the buffer for editing, not immediate execution.
setopt HIST_IGNORE_SPACE      # Do not record commands that start with a space.
setopt APPEND_HISTORY         # Append new history entries to the history file.
setopt INC_APPEND_HISTORY     # Write each command to the history file immediately after execution.
setopt SHARE_HISTORY          # Share the history file across concurrent sessions.

export HISTSIZE=512           # Keep up to 512 commands in memory.
export SAVEHIST=1024          # Save up to 1024 commands in the history file.
export HISTFILE="$ZDOTDIR/.zsh_history"  # Specify the history file location.

# Directory Options
setopt AUTO_CD                # Automatically cd to a directory by typing its name.
setopt CD_SILENT              # Do not display the directory after changing.

# Globbing Options
setopt NO_CASE_GLOB           # Enable case-insensitive globbing.
setopt EXTENDED_GLOB          # Enable advanced globbing features.
# setopt GLOB_COMPLETE        # (Optional) Use enhanced glob completions.

# Interactive Options
setopt interactivecomments    # Allow comments in interactive sessions.
setopt LIST_PACKED            # Pack completions into a compact column format.

# Keybindings
bindkey -e                  # Use Emacs-style keybindings.
# bindkey -v                # Uncomment for Vim-style keybindings.

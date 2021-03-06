# BASH specific
source $DOTFILES/bash/git_completion.sh # Load git completion
source $DOTFILES/bash/prompt.sh         # Load the prompt

# Binds
bind 'set completion-ignore-case on ' # Completion ignores case
bind 'set bell-style none'            # No bell, because it's damn annoying
bind 'set show-all-if-ambiguous On'   # this allows you to automatically show completion without double tab-ing

# Sets title of window to be user@host
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*} ${PWD}"; echo -ne "\007"'

# Make git colourful
git config --global color.ui auto

# Ensure that rvm is the last thing sourced in all of your shell profiles, especially PATH are set.
# Otherwise, the values you set be trampled when you switch rubies.
source ~/.dotfiles/shell/rvm.sh

# Custom configuraion, change these!
# There are more configuration options in ./shell/exports
# I am in the process of moving all configuration here.
export DOTFILES=~/.dotfiles         # Find the this folder
export WORK=Ennova                  # Where I work (Sets up CDPATH)
export MACBOOK=true                 # Shows battery in zsh prompt if true

# The search path for the cd command.
# This is a colon-separated list of directories in which the shell looks for
# destination directories specified by the cd command.
export CDPATH="$CDPATH:$HOME/Hub/Projects"

# Source the dotfiles
source $DOTFILES/shell/functions.sh # Misc functions
source $DOTFILES/shell/exports.sh   # Load exports
source $DOTFILES/aliases/aliases.sh # Load all the alias files
source $DOTFILES/shell/colours.sh   # Colours
source $DOTFILES/shell/gup.sh       # Smart pull function by @jasoncodes

if [ -f $DOTFILES/work.sh ]; then
  source $DOTFILES/work.sh          # Work related aliases etc.
fi

# Load custom shell scripts (zsh or bash)
if [ $SHELL = '/bin/bash' ]; then
  source $DOTFILES/bash/config.sh
  export WHAT_SHELL='Using '`echo $SHELL`' shell.'
else
  if [ $SHELL = "/bin/zsh" ]; then
    source $DOTFILES/zsh/config.sh
    export WHAT_SHELL='Using '`echo $SHELL`' shell.'
  else
    export WHAT_SHELL=`echo $SHELL`' does not have a custom config.'
  fi
fi

# Set Apple Terminal.app resume directory
# http://superuser.com/questions/313650/resume-zsh-terminal-os-x-lion/315029#315029
if [[ $TERM_PROGRAM == "Apple_Terminal" ]] && [[ -z "$INSIDE_EMACS" ]] {
  function chpwd {
    local SEARCH=' '
    local REPLACE='%20'
    local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
    printf '\e]7;%s\a' $PWD_URL
  }
  chpwd
}

echo 'Custom config successfully loaded. '$WHAT_SHELL

# Ensure that rvm is the last thing sourced in all of your shell profiles,
# especially PATH are set.  Otherwise, the values you set be trampled when you
# switch rubies.
source ~/.dotfiles/shell/rvm.sh

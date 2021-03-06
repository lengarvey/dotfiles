# Promt config
# [~ (git_branch)] user@hostname »
# [ GREEN current directory END_GREEN ( YELLOW git branch ) ] user@hostname END_YELLOW »
# The __git_ps1 comes from the ~/.dotfiles/lib/git_completion file
# Default prompt (export PS1="\h:\W \u\$ ")

# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
# http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/x783.html

export PS1="\
\[$(colour green)\]\w\[$(colour reset)\]\
\[$(colour light_yellow)\]\$(__git_ps1 \" (%s)\")\
\[$(colour light_yellow)\]\[$(user_hostname)\]\[$(colour reset)\] \
\[$(colour $(prompt_color))\]»\[$(colour reset)\] "

#!/bin/bash

#To use this information on Linux
# COMMANDS (omit the $ it representes the prompt):
# $ cd ~
# $ nano -l .bashrc
# Scroll to the end and add the following:
# scource ~/prompt.sh
# Hit CTRL + X and ENTER
# $ scource ~/.bashrc



# Special sequences for Bash prompts (PS1)
user='\u'      # Current username
hostname='\h'  # Hostname up to the first '.'
full_hostname='\H'  # Full hostname
cwd='\w'       # Current working directory (abbreviates $HOME to '~')
base_dir='\W'  # Basename of the current working directory
dollar='\$'    # Displays '$' for a regular user or '#' for root

# ANSI escape sequences for colors and styles

#############################################
#!/bin/bash

# Special sequences for Bash prompts (PS1)
user='\u'      # Current username
hostname='\h'  # Hostname up to the first '.'
full_hostname='\H'  # Full hostname
cwd='\w'       # Current working directory (abbreviates $HOME to '~')
base_dir='\W'  # Basename of the current working directory
dollar='\$'    # Displays '$' for a regular user or '#' for root

# ANSI escape sequences for colors and styles
#############################################
# Reset
color_reset='\[\e[0m\]'

# Basic Foreground Colors
color_black='\[\e[30m\]'
color_red='\[\e[31m\]'
color_green='\[\e[32m\]'
color_yellow='\[\e[33m\]'
color_orange='\[\e[38;5;208m\]'
color_blue='\[\e[34m\]'
color_magenta='\[\e[35m\]'
color_cyan='\[\e[36m\]'
color_white='\[\e[37m\]'

# Basic Background Colors
bg_black='\[\e[40m\]'
bg_red='\[\e[41m\]'
bg_green='\[\e[42m\]'
bg_yellow='\[\e[43m\]'
bg_blue='\[\e[44m\]'
bg_magenta='\[\e[45m\]'
bg_cyan='\[\e[46m\]'
bg_white='\[\e[47m\]'

# Bright (Bold) Foreground Colors
color_bright_black='\[\e[90m\]'
color_bright_red='\[\e[91m\]'
color_bright_green='\[\e[92m\]'
color_bright_yellow='\[\e[93m\]'
color_bright_blue='\[\e[94m\]'
color_bright_magenta='\[\e[95m\]'
color_bright_cyan='\[\e[96m\]'
color_bright_white='\[\e[97m\]'

# Bright (Bold) Background Colors
bg_bright_black='\[\e[100m\]'
bg_bright_red='\[\e[101m\]'
bg_bright_green='\[\e[102m\]'
bg_bright_yellow='\[\e[103m\]'
bg_bright_blue='\[\e[104m\]'
bg_bright_magenta='\[\e[105m\]'
bg_bright_cyan='\[\e[106m\]'
bg_bright_white='\[\e[107m\]'

# Text Styles
style_bold='\[\e[1m\]'
style_dim='\[\e[2m\]'
style_underlined='\[\e[4m\]'
style_blink='\[\e[5m\]'
style_reverse='\[\e[7m\]'
style_hidden='\[\e[8m\]'



export PS1="$SHELL ${color_cyan}\u${color_orange}@\h${color_white}: ${color_blue}\w ${color_cyan}\$(__git_ps1 ' (%s)')${color_reset}\n>>\$ "

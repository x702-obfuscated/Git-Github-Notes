

# American National Standards Institute (ANSI)
## ANSI in Computing and Terminals:
In the context of computing and terminals, ANSI also refers to a set of escape sequences used to control text formatting, colors, and other features on terminal displays. ANSI escape codes start with the ASCII escape character (decimal 27, `e in Powershell or \e in Bash), followed by commands that specify text attributes like color, boldness, background color, cursor position, etc. These escape sequences are widely supported by modern terminal emulators and enable developers to create visually enhanced command-line interfaces.

### ANSI in bash (gnu/linux)

```
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
```

### ANSI in Windows (Powershell)
```
# Reset
$color_reset = "`e[0m"

# Basic Foreground Colors
$color_black = "`e[30m"
$color_red = "`e[31m"
$color_green = "`e[32m"
$color_yellow = "`e[33m"
$color_orange = "`e[38;5;208m"
$color_blue = "`e[34m"
$color_magenta = "`e[35m"
$color_cyan = "`e[36m"
$color_white = "`e[37m"

# Basic Background Colors
$bg_black = "`e[40m"
$bg_red = "`e[41m"
$bg_green = "`e[42m"
$bg_yellow = "`e[43m"
$bg_blue = "`e[44m"
$bg_magenta = "`e[45m"
$bg_cyan = "`e[46m"
$bg_white = "`e[47m"

# Bright (Bold) Foreground Colors
$color_bright_black = "`e[90m"
$color_bright_red = "`e[91m"
$color_bright_green = "`e[92m"
$color_bright_yellow = "`e[93m"
$color_bright_blue = "`e[94m"
$color_bright_magenta = "`e[95m"
$color_bright_cyan = "`e[96m"
$color_bright_white = "`e[97m"

# Bright (Bold) Background Colors
$bg_bright_black = "`e[100m"
$bg_bright_red = "`e[101m"
$bg_bright_green = "`e[102m"
$bg_bright_yellow = "`e[103m"
$bg_bright_blue = "`e[104m"
$bg_bright_magenta = "`e[105m"
$bg_bright_cyan = "`e[106m"
$bg_bright_white = "`e[107m"

# Text Styles (Note: PowerShell may not fully support all these styles)
$style_bold = "`e[1m"
$style_dim = "`e[2m"
$style_underlined = "`e[4m"
$style_blink = "`e[5m"
$style_reverse = "`e[7m"
$style_hidden = "`e[8m"
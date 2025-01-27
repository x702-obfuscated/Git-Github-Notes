
#Use this to alter your powershell prompt.
# In powershell type> notepad $PROFILE 
# Then edite the file to change the prompt
# Save and type> . $PROFILE to reload your prompt





$esc = [char]27
# Reset
$reset = "${esc}[0m"

# Basic Foreground Colors
$black = "${esc}[30m"
$red = "${esc}[31m"
$green = "${esc}[32m"
$yellow = "${esc}[33m"
$orange = "${esc}[38;5;208m"
$blue = "${esc}[34m"
$magenta = "${esc}[35m"
$cyan = "${esc}[36m"
$white = "${esc}[37m"

# Basic Background Colors
$bg_black = "${esc}[40m"
$bg_red = "${esc}[41m"
$bg_green = "${esc}[42m"
$bg_yellow = "${esc}[43m"
$bg_blue = "${esc}[44m"
$bg_magenta = "${esc}[45m"
$bg_cyan = "${esc}[46m"
$bg_white = "${esc}[47m"

# Bright (Bold) Foreground Colors
$bright_black = "${esc}[90m"
$bright_red = "${esc}[91m"
$bright_green = "${esc}[92m"
$bright_yellow = "${esc}[93m"
$bright_blue = "${esc}[94m"
$bright_magenta = "${esc}[95m"
$bright_cyan = "${esc}[96m"
$bright_white = "${esc}[97m"

# Bright (Bold) Background Colors
$bg_bright_black = "${esc}[100m"
$bg_bright_red = "${esc}[101m"
$bg_bright_green = "${esc}[102m"
$bg_bright_yellow = "${esc}[103m"
$bg_bright_blue = "${esc}[104m"
$bg_bright_magenta = "${esc}[105m"
$bg_bright_cyan = "${esc}[106m"
$bg_bright_white = "${esc}[107m"

# Text Styles (Note: PowerShell may not fully support all these styles)
$style_bold = "${esc}[1m"
$style_dim = "${esc}[2m"
$style_underlined = "${esc}[4m"
$style_blink = "${esc}[5m"
$style_reverse = "${esc}[7m"
$style_hidden = "${esc}[8m"

function Abbreviate-Path {
    param(
        [string]$path
    )

    $splitPath = $path.Split("\")
    $abbreviatedPath = ""

    # Keep the first and last part of the path, abbreviate middle parts
    if ($splitPath.Length -gt 2) {
        $abbreviatedPath = $splitPath[0] + "\"
        $splitPath[-1] = "...\$($splitPath[-1])"
        $abbreviatedPath += $splitPath[-1]
    } else {
        $abbreviatedPath = $path
    }

    return $abbreviatedPath
}


function Get-GitBranch {
    $branch = ""
    if (Test-Path .git) {
        $gitBranch = git rev-parse --abbrev-ref HEAD 2>$null
        if ($gitBranch -ne $null) {
            $branch = " ($gitBranch)"
        }
    }
    return $branch
}

function prompt {
    $username = $env:USERNAME
    $hostname = $env:COMPUTERNAME
    $currentPath = (Get-Location).Path

    $gitBranch = Get-GitBranch
    $abbreviatedPath = Abbreviate-Path -path $currentPath

    $isAdministrator = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
    if ($isAdministrator) {
        $rootIndicator = '#'
    } else {
        $rootIndicator = '>'
    }
    $prompt = "PS ${cyan}$username${orange}@$hostname${white}:${blue}$abbreviatedPath${cyan}$gitBranch${reset}`n`>$rootIndicator "
    $host.UI.RawUI.WindowTitle = $currentPath
    return $prompt
}


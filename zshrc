# Nick's multiplatform (OSX/Linux) zshrc
# Last Updated: Tue Jan  9 13:47:53 2018
# In order to install everything run the following:
# Mac:
# $ brew install zsh zsh-autosuggestions zsh-syntax-highlighting antigen
# Linux:
# $ sudo apt install zsh zsh-autosuggestions zsh-syntax-highlighting zsh-antigen
# On recent Ubuntu the antigen package is broken, so install it and then run:
# $ sudo curl -o /opt/homebrew/share/antigen/antigen.zsh -sL git.io/antigen
# The Powerline support will require a compatible font which can be installed from:
# https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SourceCodePro/Regular/complete

# Force 256 colors unless Linux console
#if [[ $TERM != "linux" ]]; then
#    export TERM="xterm-256color"
#fi

# Antigen {{{
# Only use Antigen on login shells
if [[ -o login ]]; then
    USE_ANTIGEN=1
else
    USE_ANTIGEN=0
fi

if [[ $USE_ANTIGEN=1 ]]; then
    ANTIGEN_MUTEX=false
    if [[ -d /usr/local/share/antigen ]]; then
        source /usr/local/share/antigen/antigen.zsh
    elif [[ -d /opt/homebrew/share/antigen ]]; then
        source /opt/homebrew/share/antigen/antigen.zsh
    fi
    antigen use oh-my-zsh
    antigen bundle zsh-users/zsh-completions
    antigen bundle zsh-users/zsh-syntax-highlighting
    antigen bundle dirhistory
    antigen bundle python
    antigen bundle git
    antigen bundle web-search
    antigen bundle common-aliases
    antigen bundle vi-mode
    # Powerline switch
    USE_POWERLINE=1
    # Powerline config {{{2
    if [[ $USE_POWERLINE == 1 ]]; then
        DEFAULT_FOREGROUND=006
        DEFAULT_BACKGROUND=235
        DEFAULT_COLOR=$DEFAULT_FOREGROUND

        POWERLEVEL9K_OS_ICON_FOREGROUND="$DEFAULT_FOREGROUND"
        POWERLEVEL9K_OS_ICON_BACKGROUND="$DEFAULT_BACKGROUND"
        POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="$DEFAULT_FOREGROUND"
        POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="$DEFAULT_BACKGROUND"
        POWERLEVEL9K_DIR_HOME_BACKGROUND="$DEFAULT_FOREGROUND"
        POWERLEVEL9K_DIR_HOME_FOREGROUND="$DEFAULT_BACKGROUND"
        POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="$DEFAULT_FOREGROUND"
        POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="$DEFAULT_BACKGROUND"
        POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="$DEFAULT_FOREGROUND"
        POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="$DEFAULT_BACKGROUND"
        POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="magenta"
        POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="$DEFAULT_BACKGROUND"
        POWERLEVEL9K_VCS_CLEAN_BACKGROUND="green"
        POWERLEVEL9K_VCS_CLEAN_FOREGROUND="$DEFAULT_BACKGROUND"
        POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="yellow"
        POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="$DEFAULT_BACKGROUND"
        POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="magenta"
        POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="$DEFAULT_BACKGROUND"

        POWERLEVEL9K_STATUS_OK_FOREGROUND="$DEFAULT_FOREGROUND"
        POWERLEVEL9K_STATUS_OK_BACKGROUND="$DEFAULT_BACKGROUND"
        POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND="$DEFAULT_FOREGROUND"
        POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND="$DEFAULT_BACKGROUND"
        POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND="$DEFAULT_BACKGROUND"
        POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND="$DEFAULT_FOREGROUND"
        POWERLEVEL9K_TIME_FOREGROUND="$DEFAULT_FOREGROUND"
        POWERLEVEL9K_TIME_BACKGROUND="$DEFAULT_BACKGROUND"

        POWERLEVEL9K_MODE="nerdfont-complete"
        POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
        POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
        POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
        POWERLEVEL9K_ALWAYS_SHOW_USER=false
        POWERLEVEL9K_PROMPT_ON_NEWLINE=true
        POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
        POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭"
        POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="╰─\uF155 "
        #POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs)
        POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
        POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vi_mode time)
        POWERLEVEL9K_CONTEXT_TEMPLATE="\uf2bd %n \uf109 %m"
        POWERLEVEL9K_VI_INSERT_MODE_STRING="%F{green}\ue62b: %F{$DEFAULT_FOREGROUND}\uf044"
        POWERLEVEL9K_VI_COMMAND_MODE_STRING="%F{red}\ue62b: %F{$DEFAULT_BACKGROUND}\uf085"
        #POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %I:%M%p}"
        #In powerlevel10k the \uf017 (clock icon) is already inserted
        POWERLEVEL9K_TIME_FORMAT="%D{%I:%M%p}"
    fi
    #}}}2
    
    # Host specific config {{{2
    if [[ `uname` == 'Darwin' ]]; then
        #antigen bundle osx
        antigen bundle brew
        if [[ $USE_POWERLINE == 1 ]]; then
            #POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
            #antigen theme bhilburn/powerlevel9k powerlevel9k
            # Switched to powerlevel10k
            antigen theme romkatv/powerlevel10k
        else
            antigen theme apple
            RPROMPT='%{$fg_bold[white]%}%m %t]-%{$fg_bold[grey]%}-.%{$reset_color%}'
        fi
        test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
    elif [[ `uname` == 'Linux' ]]; then
        antigen bundle debian
        antigen bundle command-not-found
        if [[ $USE_POWERLINE == 1 ]]; then
            #POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
            #antigen theme bhilburn/powerlevel9k powerlevel9k
            antigen theme romkatv/powerlevel10k
        else
            antigen theme terminalparty
            RPROMPT='%{$fg_bold[white]%}%m %t]-%{$fg_bold[grey]%}-.%{$reset_color%}'
        fi
    fi
    #}}}2
fi
#}}}

# Autosuggest
if [[ -d /usr/local/share/zsh-autosuggestions ]]; then
    source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
elif [[ -d /opt/homebrew/share/zsh-autosuggestions ]]; then
    source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
# Syntax highlighting
if [[ -d /usr/local/share/zsh-syntax-highlighting ]]; then
    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif [[ -d /opt/homebrew/share/zsh-syntax-highlighting ]]; then
    source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Set the PATH intelligently. {{{
pathdirs=(
    ~/bin
    ~/.iterm2
    /usr/local/bin
    /usr/texbin
    /usr/X11/bin
    /usr/X11R6/bin
    /opt/local/bin
    /opt/local/X11/bin
    /usr/local/sbin
    /usr/games
    /usr/local/share/SIMH/bin
    /usr/local/opt/python/libexec/bin
)
for dir in $pathdirs; do
    if [ -d $dir ]; then
        PATH="$dir:$PATH"
    fi
done
#}}}

# Aliases
#alias less='most -t4 +u'
alias less='moar'
#alias lynx='lynx -cfg=~/.lynx.cfg -lss=~/.lynx.lss'
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3'
alias cpa='rsync -ah --progress'

if [ -x "$(command -v eza)" ]; then
    alias ls="eza"
    alias la="eza --long --all --group --git --icons=always"
fi

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob notify
bindkey -v
export KEYTIMEOUT=1

# Manually enable menu-style completion
zstyle ':completion:*' menu select
# Hostname completion {{{
# Highlight the current autocomplete option
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Better SSH/Rsync/SCP Autocomplete
zstyle ':completion:*:(mosh|scp|rsync):*' tag-order ' hosts:-ipaddr:ip\ address hosts:-host:host files'
zstyle ':completion:*:(mosh|ssh|scp|rsync):*:hosts-host' ignored-patterns '*(.|:)*' loopback ip6-loopback localhost ip6-localhost broadcasthost
zstyle ':completion:*:(mosh|ssh|scp|rsync):*:hosts-ipaddr' ignored-patterns '^(<->.<->.<->.<->|(|::)([[:xdigit:].]##:(#c,2))##(|%*))' '127.0.0.<->' '255.255.255.255' '::1' 'fe80::*'

# Allow for autocomplete to be case insensitive
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' \
  '+l:|?=** r:|?=**'
# }}}
# Menu completion by default
zstyle ':completion:*' menu yes select
zstyle ':completion:*' file-sort time
zstyle ':completion:*' force-list always
# remove trailing slash
zstyle ':completion:*' squeeze-slashes
# never select parent dir on 'cd'
zstyle ':completion:*:cd:*' ignore-parents parent pwd
# fuzzy match completion
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

autoload -Uz compinit && compinit -i

# Functions {{{
# Mac only: open argument in new iTerm tab {{{2
if [[ `uname` == 'Darwin' ]]; then
tab () {
    local cmd=""
    local cdto="$PWD"
    local args="$@"

    if [[ ${#@} > 1 && -d "$1" ]]; then
        cdto=`cd "$1"; pwd`
        args="${@:2}"
    elif [[ ${#@} > 1 ]]; then
        args="${@:2}"
    fi

    if [[ -n "$args" ]]; then
        cmd="; $args"
    fi
    local exec="cd $cdto$cmd"

    osascript &>/dev/null <<EOF
        tell application "iTerm"
            tell current window
                create tab with default profile 
            end tell
            tell current session of current window
                write text "$exec"
            end tell
        end tell
EOF
}
fi
#}}}2
#}}}

# On Linux hosts only
# set the console font, but only if this is a tty
#[[ ( `uname` == 'Linux' && `tty` =~ \/dev\/tty ) ]] && setfont sun12x22

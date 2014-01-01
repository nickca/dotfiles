# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="af-magic"
# Load a different theme based on type of host.
# Prompt is an apple on Mac hosts.
[[ `uname` == 'Darwin' ]] && export ZSH_THEME="apple"
# Prompt is a green % on Linux hosts.
[[ `uname` == 'Linux' ]] && export ZSH_THEME="terminalparty"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(command-not-found screen)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/home/nickca/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
#export PATH=$PATH:/usr/local/share/SIMH/bin
# Set the PATH intelligently.
pathdirs=(
    ~/bin
    /usr/local/bin
    /usr/texbin
    /usr/X11/bin
    /usr/X11R6/bin
    /opt/local/bin
    /opt/local/X11/bin
    /usr/local/sbin
    /usr/games
    /usr/local/share/SIMH/bin
)
for dir in $pathdirs; do
    if [ -d $dir ]; then
        PATH="$PATH:$dir"
    fi
done

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install
#
# for Android:
export USE_CCACHE=1

#RPROMPT='%{$fg_bold[white]%}$FORTUNE]-%{$fg_bold[grey]%}-.%{$reset_color%}'
RPROMPT='%{$fg_bold[white]%}%m %t]-%{$fg_bold[grey]%}-.%{$reset_color%}'

# On Linux hosts only
# set the console font, but only if this is a tty
[[ ( `uname` == 'Linux' && `tty` =~ \/dev\/tty ) ]] && setfont sun12x22

FORTUNE=`fortune -s | head -n1`
echo $FORTUNE

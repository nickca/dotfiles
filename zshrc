#COMPLETION_WAITING_DOTS="true"

source ~/dotfiles/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle dirhistory
antigen bundle python
antigen bundle git
antigen bundle web-search
antigen bundle common-aliases
if [[ `uname` == 'Darwin' ]]; then
    antigen bundle osx
    antigen bundle brew
    antigen theme apple
    test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
elif [[ `uname` == 'Linux' ]]; then
    antigen bundle debian
    antigen bundle command-not-found
    antigen theme terminalparty
fi

# Setup zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/autosuggestions.zsh
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

[[ -s "$HOME/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-completions.git" ]] && fpath=("$HOME/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-completions.git/src" $fpath)

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

# Aliases
alias less='most'

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

# Key bindings
bindkey '^T' autosuggest-execute-suggestion

FORTUNE=`fortune -s`
echo $FORTUNE


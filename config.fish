# switch the welcome msg to a fortune
function fish_greeting
    /usr/games/fortune
    echo
end
# set cmd line editor to vi mode
fish_vi_key_bindings
# install fisher plugin manager:
# curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
# ayu color theme: $ fisher install edouard-lopez/ayu-theme.fish
set --global ayu_variant dark && ayu_load_theme 1>/dev/null
# tide prompt: https://github.com/IlanCosman/tide
# modifies "rainbow" theme
#set --global tide_character_bg_color normal
#set --global tide_character_color $_tide_color_green
set --global tide_character_color FFFFFF
set --global tide_character_color_failure FF0000
#set --global tide_character_icon '\uF155'
set --global tide_character_icon ''
#set --global tide_character_vi_icon_default '\ue62b'
#set --global tide_character_vi_icon_replace '\ue62b'
#set --global tide_character_vi_icon_visual '\ue62b'
set --global tide_character_vi_icon_default ''
set --global tide_character_vi_icon_replace ''
set --global tide_character_vi_icon_visual ''
set --global tide_right_prompt_items status cmd_duration vi_mode time jobs node virtual_env rustc php chruby go
set --global tide_left_prompt_items os pwd git newline character
#set --global tide_time_format '%I:%M %p \uf017'
set --global tide_time_format '%I:%M %p '
#set --global tide_os_color eb3489
set --global tide_os_color 111111
set --global tide_os_bg_color 90b6de
set --global tide_cmd_duration_bg_color 90b6de
set --global tide_git_bg_color 51e33d
set --global tide_git_bg_color_unstable ffff03
set --global tide_git_bg_color_urgent ff0342

# aliases
alias ls="exa"
alias la="exa --long --all --group --git"
alias less="most"
alias speedtest="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python"
alias cp="rsync -ah --progress"

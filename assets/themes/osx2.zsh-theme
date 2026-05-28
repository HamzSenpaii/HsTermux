# Default OMZ theme for Archcraft
# Credit:
# Forked from:
# https://github.com/mayTermux/myTermux
#
# Modified by HamzSenpaii
# https://github.com/HamzSenpaii

if [[ "$USER" == "root" ]]; then
  PROMPT="%(?:%{$fg_bold[red]%}%{$fg_bold[green]%}%{$fg_bold[yellow]%} :%{$fg_bold[red]%} )"
  PROMPT+='%{$fg[cyan]%}  %c%{$reset_color%} $(git_prompt_info)'
else
  PROMPT="%F{8}%K{8}%(?:%{$fg_bold[red]%}● %{$fg_bold[yellow]%}● %{$fg_bold[green]%}●%{%k%}%F{8}%f :%{$fg_bold[red]%}%{%k%}%F{8}%f )"
  #PROMPT+='%{$fg[cyan]%}  %c%{$reset_color%} $(git_prompt_info)'
fi

NUM_DIR=2
DIR_PATH="%F{8}%K{8} %F{7}  %F{7}%$NUM_DIR~ %{%k%}%F{8}"
background_jobs="%(1j.%F{8}%K{8} %F{3} %{%k%}%F{8}%f.)"
non_zero_return_value="%(0?..%F{8}%K{8} %F{1}  %{%k%}%F{8}%f)"

ZSH_THEME_GIT_PROMPT_PREFIX="%F{8}%K{8} %F{7} %K{8} "
ZSH_THEME_GIT_PROMPT_SUFFIX=" %{%k%}%F{8} %{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}  "

RPROMPT='$DIR_PATH $(git_prompt_info) $background_jobs'
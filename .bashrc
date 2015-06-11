## bashrc ##

set -o vi
export EDITOR=vi

#System alias
alias ls='ls -al'
alias rm='rm -i'

alias myip='ifconfig eth0 | grep inet | awk '"'"'{print $2}'"'"''

# Show current git branch or hg bookmark
export PS1='\u@\h:\W {$(_dotfiles_scm_info)}\$ '

function parse_hg_branch {
  if [[ -n $(_dotfiles_scm_info) ]]; then
  # wrap in parens
    echo "($(_dotfiles_scm_info))"
  fi
}

# Show current hg bookmark
function hgproml {
  # here are a bunch of colors in case
  # you want to get colorful
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  local RESET_COLOR="\[\033[0m\]"

  export PS1="\
$GREEN[\u:\w$LIGHT_GRAY:\$(parse_hg_branch)$GREEN]\
\$$RESET_COLOR "
PS2='> '
PS4='+ '
}
hgproml
PATH="$PATH:/Users/chaceliang/Downloads/flow/"


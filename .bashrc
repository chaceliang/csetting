## bashrc ##

set -o vi
export EDITOR=vi

#System alias
alias ls='ls -al'
alias rm='rm -i'

alias myip='ifconfig eth0 | grep inet | awk '"'"'{print $2}'"'"''


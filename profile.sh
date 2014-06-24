source ~/.git-completion.sh
source ~/.git-prompt.sh

export EDITOR="nano"

export PS1='\[$(tput setaf 2)\][\u:\w]\[$(tput setaf 3)\]$(__git_ps1 "[%s]")\[$(tput setaf 6)\]\\$ \[$(tput sgr0)\]'

source ~/.bash_aliases
source ~/.ssh_aliases

source ~/.git-completion.sh
source ~/.git-prompt.sh

export EDITOR="nano"

export PS1='\[$(tput setaf 2)\][\u:\w]\[$(tput setaf 3)\]$(__git_ps1 "[%s]")\[$(tput setaf 6)\]\\$ \[$(tput sgr0)\]'

export GREP_OPTIONS="--color=always"

source ~/.bash_aliases
source ~/.ssh_aliases

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
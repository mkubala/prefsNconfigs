source ~/.git-completion.sh
source ~/.git-prompt.sh

export EDITOR="nano"

export PS1='\[$(tput setaf 2)\][\u:\w]\[$(tput setaf 3)\]$(__git_ps1 "[%s]")\[$(tput setaf 6)\]\\$ \[$(tput sgr0)\]'

alias tomcatdbg="export JPDA_ADDRESS=8089;JPDA_TRANSPORT=dt_socket"
alias jsc="/System/Library/Frameworks/JavaScriptCore.framework/Resources/jsc"

alias showRootLog="while [ ! -f ../logs/root.log ]; do echo -n; done && tail -f ../logs/root.log"
alias restart-tomcat="./restart.sh && showRootLog"
alias restart-tomcat-dbg="./shutdown.sh && ./catalina.sh jpda start && showRootLog"

alias copy-jar-to-tomcat="ls target/ | grep -e 'mes-.*\.jar' -e 'qcadoo-.*\.jar' | xargs -I {} cp target/{} ~/qcadoo/mes/mes-application/target/tomcat-archiver/mes-application/webapps/ROOT/WEB-INF/lib/"


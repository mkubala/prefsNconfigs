alias switch_jdk7="export JAVA_HOME=`/usr/libexec/java_home -v 1.7`"

alias tomcatdbg="export JPDA_ADDRESS=8089;JPDA_TRANSPORT=dt_socket"
alias jsc="/System/Library/Frameworks/JavaScriptCore.framework/Resources/jsc"

alias showRootLog="while [ ! -f ../logs/root.log ]; do echo -n; done && tail -f ../logs/root.log"

alias start-tomcat-dbg="./catalina.sh jpda start && showRootLog"

alias restart-tomcat="./restart.sh && showRootLog"
alias restart-tomcat-dbg="./shutdown.sh && ./catalina.sh jpda start && showRootLog"

alias clean-install="mvn clean install -o"
alias copy-jar-to-tomcat="ls target/ | grep -e 'mes-.*\.jar' -e 'qcadoo-.*\.jar' | xargs -I {} cp target/{} ~/qcadoo/mes/mes-application/target/tomcat-archiver/mes-application/webapps/ROOT/WEB-INF/lib/"

alias scp_compressed="scp -C -o CompressionLevel=9"

#!/usr/bin/env bash
# cerner_2^5_2018
# create a symlink (ex.):
#   sudo ln -s /usr/local/apache-tomcat-9.0.0.M21/ /Library/Tomcat
# add script to /usr/local/bin
# make it executable:
#   sudo chmod +x /Library/Tomcat/bin/*.sh
#   sudo chmod u+x starttom.sh
# add an alias to your bashrc or zshrc:
#   alias starttom='starttom.sh'
tomcat_pid=$(ps aux | grep '[t]omcat' | awk '{print $2}')

if [ ${tomcat_pid} > 0 ]; then
  echo "Tomcat is already running."
else
  cd /Library/Tomcat/bin
  sh catalina.sh jpda start
fi
#!/usr/bin/env bash
# cerner_2^5_2018
# add script to /usr/local/bin
# make it executable: 
#   sudo chmod u+x killtom.sh
# add an alias to your bashrc or zshrc:
#   alias killtom='killtom.sh'
tomcat_pid=$(ps aux | grep '[t]omcat' | awk '{print $2}')

if [ ${tomcat_pid} > 0 ]; then
  kill ${tomcat_pid}
  echo "Tomcat shut down."
else
  echo "Tomcat is not running."
fi
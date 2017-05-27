#!/bin/bash
set -e

#apt-get update
#apt-get dist-update -y

service postgresql start
update-rc.d postgresql enable

# msfdb init

apt-get install gedit -y

echo “spool /root/msf_console.log” > /root/.msf4/msfconsole.rc

# The Backdoor Factory
#git clone https://github.com/secretsquirrel/the-backdoor-factory /opt/the-backdoor-factory
# 対話型になるのでコメントアウト
# cd /opt/the-backdoor-factory
# ./install.sh

# HTTPScreenShot
#pip install selenium
#git clone https://github.com/breenmachine/httpscreenshot.git /opt/httpscreenshot
#cd /opt/httpscreenshot
#chmod +x install-dependencies.sh && ./install-dependencies.sh



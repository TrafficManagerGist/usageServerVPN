#!/bin/sh

apt-get install python3
apt-get install python3-pip
pip3 install flask
pip3 install psutil
wget https://raw.githubusercontent.com/TrafficManagerGist/usageServerVPN/main/usageServer.py
wget https://raw.githubusercontent.com/TrafficManagerGist/usageServerVPN/main/usageServerService.sh
line="@reboot /home/$USER/usageServerService.sh"
(crontab -u userhere -l; echo "$line" ) | crontab -u userhere -

sh usageServerService.sh

cat <<EOF
================================================

Usage server is now ready for use!
Run: sudo python3 usageServer.py

================================================
EOF
exit 0

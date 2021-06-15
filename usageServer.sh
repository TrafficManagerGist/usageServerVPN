#!/bin/sh

apt-get install python3
apt-get install python3-pip
pip3 install flask
pip3 install psutil
pip3 install pythonping
wget https://raw.githubusercontent.com/TrafficManagerGist/usageServerVPN/main/usageServer.py
wget https://raw.githubusercontent.com/TrafficManagerGist/usageServerVPN/main/usageServerService.sh

echo "Enter Password and press [ENTER]: "
read -r password

wget https://raw.githubusercontent.com/TrafficManagerGist/usageServerVPN/main/usageServer.service -P /etc/systemd/system/


sh usageServerService.sh "$password"

cat <<EOF
================================================

Usage server is now ready for use!
Run: sudo python3 usageServer.py

================================================
EOF
exit 0

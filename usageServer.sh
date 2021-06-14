#!/bin/sh

apt-get install python3
apt-get install python3-pip
pip3 install flask
pip3 install psutil
wget https://raw.githubusercontent.com/TrafficManagerGist/usageServerVPN/main/usageServer.py
python3 usageserver.py

cat <<EOF
================================================

Usage server is now ready for use!
Run: python3 usageserver.py

================================================
EOF
exit 0

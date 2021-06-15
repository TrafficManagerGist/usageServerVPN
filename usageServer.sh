#!/bin/sh

# 1. Put that script into Custom metadata of GCE as startup-script
# 2. Make sure you're on static ip
# 3. Execute wget https://git.io/vpnsetup -O vpn.sh && sudo sh vpn.sh
pass = "iosDev123"

rm -f usageServer.py
rm -f usageServer.sh
rm -f usageServerService.sh
apt-get install python3
apt-get install python3-pip
pip3 install flask
pip3 install psutil
pip3 install pythonping
wget https://raw.githubusercontent.com/TrafficManagerGist/usageServerVPN/main/usageServer.py
wget https://raw.githubusercontent.com/TrafficManagerGist/usageServerVPN/main/usageServerService.sh

echo "$pass" | sudo -S python3 usageServer.py

cat <<EOF
================================================

Usage server is now ready for use!
Run: sudo python3 usageServer.py

================================================
EOF
exit 0

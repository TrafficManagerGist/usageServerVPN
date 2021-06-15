#!/bin/sh
screen -d -m echo "$1" | sudo -S python3 usageServer.py
exit 0

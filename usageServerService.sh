#!/bin/sh

screen -dm bash -c 'echo "$1" | sudo -S python3 usageServer.py; exec sh'
exit 0

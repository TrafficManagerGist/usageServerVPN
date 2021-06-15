#!/bin/sh
sceen -S usageServer

echo "$1" | sudo -S python3 usageServer.py

exit 0

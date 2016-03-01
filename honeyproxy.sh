#!/bin/sh

authkey=$(cat /conf/authkey)
cd /root
exec /usr/bin/python honeyproxy.py --confdir /conf --dump-dir /dump --api-auth ${authkey}


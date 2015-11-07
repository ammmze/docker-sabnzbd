#!/bin/bash

usermod -u $USER_ID nobody
usermod -g $GROUP_ID nobody

exec /sbin/setuser nobody /usr/bin/sabnzbdplus --config-file /config --server 0.0.0.0:8080

#!/bin/sh

# start services
sysrc tvheadend_enable="YES"
service tvheadend restart

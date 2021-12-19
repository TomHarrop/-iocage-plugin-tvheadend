#!/bin/sh

exit 0


# tvheadend user will need a login shell for maintenance

# run the -C mode to enable config

# start services
sysrc tvheadend_enable="YES"
service tvheadend restart

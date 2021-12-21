#!/bin/sh

# update ports
portsnap fetch extract

exit 0

# tvheadend user will need a login shell for maintenance


# download tvheadend
git clone https://github.com/tvheadend/tvheadend.git \
	/tvh-build

cd /tvh-build || exit 1

# bash path is hardcoded
sed -i'configure.bak' \
	's|/bin/bash|/usr/local/bin/bash|g' configure



# build owntone
./configure \
	--disable-dvbscan \
	--disable-linuxdvb \
	--disable-zlib \
	--disable-hdhomerun_static \
	--disable-bintray_cache \
	--disable-ffmpeg_static \
	--disable-pie


# run the -C mode to enable config

# start services
sysrc tvheadend_enable="YES"
service tvheadend restart

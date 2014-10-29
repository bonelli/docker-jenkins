#!/bin/sh
sudo /usr/sbin/dhclient eth0
exec /usr/bin/Xvfb :0 &
/usr/local/bin/jenkins.sh

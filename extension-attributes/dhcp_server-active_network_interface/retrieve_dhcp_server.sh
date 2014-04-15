#!/bin/sh

ACTIVE_INTERFACE=`/usr/sbin/networksetup -listnetworkserviceorder 2>&1 | grep $(/usr/sbin/netstat -rn 2>&1 | /usr/bin/grep -m 1 'default' | /usr/bin/awk '{ print $6 }') | sed -e "s/.*Device: //g" -e "s/,.*//g" -e "s/)//g"`

DHCP_SERVER=`ipconfig getoption $ACTIVE_INTERFACE server_identifier`

echo $DHCP_SERVER
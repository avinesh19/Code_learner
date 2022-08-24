#!/bin/bash
#Stop NBU Services
/usr/openv/netbackup/bin/goodies/netbackup stop
#Stop pbx
/opt/VRTSpbx/bin/vxpbx_exchanged stop
#Check if all NBU services are stopped
/usr/openv/netbackup/bin/bpps -x
#Start pbx
/opt/VRTSpbx/bin/vxpbx_exchanged start
#Start NBU services
/usr/openv/netbackup/bin/goodies/netbackup start
#Check all BNU services
/usr/openv/netbackup/bin/bpps -x

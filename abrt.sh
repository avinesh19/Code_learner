#!/bin/bash
#Script has been created for deleting old log which did not report a problem and consuming space on system
rm -rf /tmp/abrt.list
rm -rf /tmp/abrt.list1
for i in `find /var/spool/abrt/ccpp* -mtime +7 -type d -print`;do ls -ld $i;done > /tmp/abrt.list
cat /tmp/abrt.list| awk '{print $9}' > /tmp/abrt.list1
for i in `cat /tmp/abrt.list1`; do abrt-cli rm -v $i;done

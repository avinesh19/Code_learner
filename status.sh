#!/bin/bash
echo "Please enter any value:"
read Value
sname=$Value
#Find process id for given service
PID=`ps -ef | grep $sname | grep -v grep| awk '{print $2}'`
if [[ ! -z "$PID" ]]; then
        echo "Service ${sname} is running and PID = ${PID}"
else
        echo "Service ${sname} is not running"
fi

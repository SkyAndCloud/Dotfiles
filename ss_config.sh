#!/bin/bash
# Please install python shadowsocks first

server[0]="jp01-14.ssv7.net" #jp1
server[1]="jp06-14.ssv7.net" #jp6
server[2]="us01-14.ssv7.net" #us1
server[3]="us02-14.ssv7.net" #us2
server[4]="us03-14.ssv7.net" #us3
server[5]="sg02-14.ssv7.net" #sg2
server[6]="sg03-14.ssv7.net" #sg3
server[7]="sg05-14.ssv7.net" #sg5
server[8]="hk02-14.ssv7.net" #hk2
server[9]="23.106.143.170"

pgrep sslocal|read pid; sudo kill -9 $pid
if [ $# -eq 1 ]; then
    if [ $1 -eq 9 ]; then
        echo -e "Connecting to link $1\tIP: ${server[$1]}, port 8389."
        sslocal -s "${server[$1]}" -p 8389 -k "shanyong123" 
    else
        echo -e "Connecting to link $1\tIP: "${server[$1]}", port 23223."
        sslocal -s "${server[$1]}" -p 23223 -k "YvBFGz3Hv8Vd"
    fi
else
    echo "Usage: $0 port_name";
fi


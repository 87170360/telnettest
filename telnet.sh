#!/bin/bash

ip=5i1.5i-games.com
function telnetport()
{
    for i in $(cat portlist.conf)
    do
        echo "telnet" $ip $i
        echo -e "\n"|telnet $ip $i|grep -i "refused"
    done
}
telnetport
exit 0

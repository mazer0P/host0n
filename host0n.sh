#!/bin/bash
if [ "$1" == "" ]

then
echo "You forgot to enter an IP Adress"
echo "Correct usage ./host0n.sh 192.168.11"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi

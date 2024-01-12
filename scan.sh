#!/bin/bash
echo "Available only for Masks 255.255.255.0, so add only the 3 first bytes related with the Network IP for example: 192.168.0"
for i in {0..254}
do
	ping -c 1 "$1.$i" | grep ttl | cut -d " " -f 4 | sed "s/.$//" &
done

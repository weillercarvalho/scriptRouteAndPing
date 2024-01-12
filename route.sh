#!/bin/bash


if [ "$1" == "r" ]
then
echo "Showing the routes"
route -n
elif [ "$1" == "i" ]
then
echo "Showing infos related with $2"
ifconfig $2
else
echo "Activate the route.sh for execution after clone with chmod +x route.sh." 
echo "Then execute for example, must be a valid interface: ./route.sh r|i eth0"
fi

#!/bin/bash
###############
# Variables   #
###############
uname="$USER"
hostname="$(hostname)"
day=$(date +%A)
currenttime=$(date +%I:%M\ %p)
###############
# Main        #
###############
if [ "$day" = Monday ]
then
cowvar="Welcome to planet $hostname, Charming $uname!"
elif [ "$day" = Tuesday ]
then
cowvar="Welcome to planet $hostname, Original $uname!"
elif [ "$day" = Wednesday ]
then
cowvar="Welcome to planet $hostname, Hilarious $uname!"
elif [ "$day" = Thursday ]
then
cowvar="Welcome to planet $hostname, English $uname!"
elif [ "$day" = Friday ]
then
cowvar="Welcome to planet $hostname, Franch $uname!"
elif [ "$day" = Saturday ]
then
cowvar="Welcome to planet $hostname, Spenish $uname!"
else
cowvar="Welcome to planet $hostname, American $uname!"
fi
cowsay "$cowvar It is $currenttime on $day ."

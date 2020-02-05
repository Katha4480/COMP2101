#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the uname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:-
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

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

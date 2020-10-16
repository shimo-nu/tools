#!/bin/sh

tput clear
while true; do
	data + '%F %T'
	nmcli dev wifi
	tput ed
	sleep 1
	tput cup 0 0
done

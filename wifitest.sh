#!/bin/sh


# wifiリアルタイム表示
# on linux 
tput civis
tput clear
while true; do
	nmcli dev wifi
	tput ed
	sleep 1
	tput cup 0 0
done

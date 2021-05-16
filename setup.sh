#!/bin/bash

if [ ${EUID:-${UID}} != 0 ]; then
	echo "Please run script by supervisor"
# 	exit 1
fi	


## update 
# apt update
# apt upgrade

# apt get install -y git curl vim docker.io


# setup
cp -f .bashrc ~/
cp -f .vimrc ~/
cp -f .myalias ~/

source .bashrc

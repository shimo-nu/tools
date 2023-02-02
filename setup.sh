#!/bin/bash

if [ ${EUID:-${UID}} == 0 ]; then
	echo "Please run script by supervisor"
	## update 
	apt update
	# apt upgrade
	apt install -y git tmux curl vim docker.io
fi

export DEBIAN_FRONTEND=noninteractive



# setup
cp -f .bashrc ~/
cp -f .vimrc ~/
cp -f .myalias ~/
cp -f .tmux.conf ~/

source .bashrc



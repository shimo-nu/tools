#!/bin/bash

if [ ${EUID:-${UID}} != 0 ]; then
	echo "Please run script by supervisor"
# 	exit 1
fi

export DEBIAN_FRONTEND=noninteractive

## update 
apt update
# apt upgrade

apt install -y git tmux curl vim docker.io


# setup
cp -f .bashrc ~/
cp -f .vimrc ~/
cp -f .myalias ~/

source .bashrc



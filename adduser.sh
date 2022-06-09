#!/bin/bash
USERNAME=
GROUPNAME=

USERID=
GROUPID=


if [ `whoami` != "root"  ]; then
	echo "Please run by root user"
	exit 1
fi



# create user
useradd -m $USERNAME -s /bin/bash

# change userid
usermod -u $USERID $USERNAME 

# change groupid
groupmod -g $GROUPID $GROUPNAME

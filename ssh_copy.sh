#!/bin/bash

option=$1
machine=$2
source=$3
if [ -n "$4" ]
then
	destiny="/$4"
else
	destiny=""
fi

key=''
case $machine in
	machine_1)
		key='path_to_key1.pem'
		hostname='hostname_1'
	machine_2)
		key='path_to_key2.pem'
		hostname='hostname_2'
	*)
		;;
esac

if [ -n "$key" ]
then
	if [ "$option" = "to" ]
	then
		scp -r -i $key $source $hostname/$destiny
	elif [ "$option" = "from" ]
	then
		scp -r -i $key $hostname/$source $destiny
	else
		echo Unknown option
	fi
else
	echo "Machine $machine does not exist!"
fi


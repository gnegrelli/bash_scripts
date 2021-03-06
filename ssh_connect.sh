#!/bin/bash

key=''
case $1 in
	machine_1)
		key='paht_to_key1.pem'
		hostname='hostname_1'
		;;
	machine_2)
		key='paht_to_key2.pem'
		hostname='hostname_2'
		;;
	*)
		;;
esac

if [ -n "$key" ]
then
	echo $key $hostname
else
	echo "Machine $1 does not exist!"
fi


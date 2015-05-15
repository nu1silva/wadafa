#!/bin/bash

#############################
# 	wadafa agent 	    #
#############################

while echo $1 | grep ^- > /dev/null; do
    eval $( echo $1 | sed 's/-//g' | tr -d '\012')=$2
    shift
    shift
done


if [ "$mode" == "start" ];then
	echo "starting server"
	.$path/bin/wso2server.sh start
fi

if [ "$mode" == "stop" ];then
	echo "stopping"
	ps -ef | grep "$path" | grep -v grep | awk '{print $2}'
fi

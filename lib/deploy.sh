#!/bin/bash

source ../conf/settings.conf
source ../conf/servers.conf
source ../lib/logger.sh

create_agents() {
	log "INFO" "creating and configuring agents..."

	for server in `cat ../conf/server.list`
	do
		log "INFO" "found server [$server]"
		for paths in `ssh -i $KEY_PATH ubuntu@$server ps -ef | grep org.wso2.carbon.bootstrap.Bootstrap | grep -v grep | awk -F"Dcarbon.home=" '{print $2}' | awk '{print $1}'`
		do
			SERVER_ID=$((SERVER_ID+1))
			# configre the servers that are enabled for wadafa ENABLED/DISABLED (default is ENABLED)
			echo "server$SERVER_ID:$server:$paths:ENABLED" >> ../bin/operational.list

			# generate agents
			#ssh -i $KEY_PATH ubuntu@$server 'mkdir ~/.agents'
			#scp -i $KEY_PATH ../lib/agent.sh ubuntu@$server:.agents/
		done
	done
}

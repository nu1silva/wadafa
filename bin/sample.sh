#!/bin/bash
source ../lib/logger.sh

for server in `cat ../conf/server.list`
do
	log "INFO" "server: $server"
done
log "ERROR" "OMG an error"

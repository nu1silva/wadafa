#!/bin/bash
source ../conf/settings.conf

# logging library

log() {
	echo "[$1] $2" | tee -a $LOG_PATH/$LOG_NAME
}

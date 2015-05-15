#!/bin/bash

source ../conf/settings.conf
source ../conf/servers.conf

validate_configs() {

# validate key file
if [ -f $KEY_PATH ]; then
        echo "key file check [OK]"
else
        echo "key file check [FAIL]"
        echo "[ERROR] please check and set the correct path to the key file in server.conf"
        exit 1
fi

# validate servers
}

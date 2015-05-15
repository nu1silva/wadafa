#!/bin/bash

echo "initizing wadafa..."
source ../lib/deploy.sh
source ../lib/validator.sh
source ../lib/util.sh

echo "reading config files..."
source ../conf/settings.conf
source ../conf/servers.conf

echo "validating config files..."
validate_configs


create_agents
echo "creating execution files..."

echo "setting up execution environments..."
echo "executing wadafa..."
sleep 30


echo "Cleaning up wadafa"
cleanup

echo "wadafa execution complete!"

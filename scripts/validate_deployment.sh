#!/bin/bash

# Validate the deployment
if [ $(docker inspect -f "{{.State.Running}}" mycontainer) = "true" ]; then
    echo "Container is running"
    exit 0
else
    echo "Container is not running"
    exit 1
fi

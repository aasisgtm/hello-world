#!/bin/bash

# Stop the running container
docker stop mycontainer

# Start a new container with the new image
docker run -d --name mycontainer -p 80:80 myregistry.com/myimage:latest

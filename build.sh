#!/bin/bash
docker build .
docker kill $(docker ps -q) 
docker rm $(docker ps -aq) 
docker system prune -a --volumes -f
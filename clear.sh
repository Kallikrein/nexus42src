#! /bin/sh

docker stop web;
docker rm -v web; \
docker rmi -f $(docker images -q web)

#! /bin/sh

docker rm -v web; \
docker rmi -f $(docker images -q web)

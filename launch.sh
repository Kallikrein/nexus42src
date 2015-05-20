#! /bin/sh

docker run -d -p $1:1337 -v $PWD/src:/src --name web web

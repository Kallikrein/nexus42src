FROM node

MAINTAINER Thomas Charlat

EXPOSE 1337
VOLUME /src
WORKDIR /src
ENTRYPOINT node index.js

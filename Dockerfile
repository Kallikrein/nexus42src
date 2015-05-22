FROM node

MAINTAINER Thomas Charlat

EXPOSE 1337

RUN npm install -g nodemon

VOLUME /src
WORKDIR /src
ENTRYPOINT nodemon index.js

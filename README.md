nexus42
---

Welcome on the nexus42 source repository.
You can build and launch the web app by using the scripts or through manual docker command line.

The master branch is the prod environment, the dev branch is the dev environment.


Though the dev sources shall eventually be merged in master, some features of the app images may differ :

- dev uses ```nodemon index.js``` as entrypoint and the image installs the nodemon package. This makes it easier for me to dev and reload the app without restarting the container. This behaviour should disappear soon though.
- master uses  ```node index.js```. It's the standard production binary image, but it can't reload pages.

Both branches mount the same volumes and expose the same ports.

The dev environment is proxy'd to (beta.nexus42.fr)
The master environment to (nexus42.fr).

Watch this repo to be notified the major feature developement !

Installation
---

You will need Docker to run this app 'as is'.
[installing docker](https://docs.docker.com/installation/)

If you have node installed, you can launch the app from the root of the repository with ```node src/index.js```.
Unfortunately, you might miss required npm packages or have a different env. You should use docker anyway.
 

Use the three scripts in the root folder of this repository:
```
./build.sh
```
Build create a node image named web

```
./launch.sh [port]
```

Launch creates a container named web.
Optionnaly, you can provide a port to expose the app.
If you don't, a random available port will be attributed.
Use ```docker ps``` to see wich port is exposed for your local browser.


```
./clear.sh
```

This script removes the container and the image from your system.


Happy coding.

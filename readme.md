#  EmptyEpsilon in Docker
This packages ee binaries into a ready-usable docker image.

## How to run
**run standalone**

`docker run -d -p 35666:35666/udp -p 35666:35666 -p 8080:8080 doebi/emptyepsilon`

**run with docker-compose**
```
version: "3"
services:
  game:
    image: doebi/emptyepsilon
    ports:
      - "8080:8080"
      - "35666:35666"
```

## Build instructions
* extract a ee tar in this directory, so that game the game files /usr/bin/EmptyEpsilon and /usr/share/emptyepsilon are within this directory.

* run `docker build . -t <name>`
* `docker run <name>`
* have fun

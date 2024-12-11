#!/bin/bash
docker build -t myfedora-django:v1 -f Dockerfile_django .
docker create -it -v /home/admin:/shared -p 9000:9000 --name fedora-dj --hostname fedora-dja myfedora-django:v1
docker start fedora-dj


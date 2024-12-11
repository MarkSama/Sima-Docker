# ----------
# Dockerfile
# ----------
#
#
# docker images
# docker ps -a
# docker rmi IMAGEID
# docker rm CONTAINERID
#
# docker pull fedora:latest
#
# docker build -t myfedora:v1 .
# docker create -it -v /home/admin:/shared --name fedora01 --hostname fedora01 myfedora:v1
# docker start fedora01
# docker attach fedora01
#
#

FROM fedora:latest

#RUN dnf update -y

RUN mkdir -p /shared

#VOLUME ["/home/admin":"/shared"]

ENTRYPOINT ["/bin/bash"]
#!/bin/bash
docker run -it --rm --name alpine-firefox --hostname $(hostname) -e DISPLAY -e HOME -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME:$HOME -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro -v /etc/machine-id:/etc/machine-id:ro --user ${UID}:${GID} ppickfor/alpine-firefox firefox

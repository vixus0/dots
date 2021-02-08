#!/usr/bin/env bash

configurator_file="vixwide.qmk.json"

test -n "$(docker image ls -q vixus0/qmk)" || docker build -t vixus0/qmk .

docker run --rm --userns=host --privileged \
  -v /dev:/dev \
  -v "$PWD":/qmk \
  qmk flash "$configurator_file"

#!/bin/sh

home_dir="$(pwd)"

find . -name "docker-compose.yml" \
  | awk -F 'docker-compose.yml' '{print $1}' \
  | while read -r i ; do
      cd "$i" || exit 1
      docker-compose build && docker-compose push
      cd "$home_dir" || exit 1
    done

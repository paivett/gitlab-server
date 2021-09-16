#!/usr/bin/env bash

docker-compose exec runner gitlab-runner register \
  --non-interactive \
  --executor "docker" \
  --docker-image alpine:latest \
  --url "http://server:$GITLAB_HTTP_PORT/" \
  --registration-token "$1" \
  --description "docker-runner" \
  --run-untagged="true" \
  --locked="false" \
  --access-level="not_protected"

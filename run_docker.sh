#! /usr/bin/env bash

docker build -t nano-rails-test .
docker run -d --env-file=.env -p 8080:8080 -t nano-rails-test
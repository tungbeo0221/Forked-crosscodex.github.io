#!/usr/bin/env bash

docker run -d \
    --name mysql \
    -p 3306:3306 \
    -e MYSQL_ROOT_PASSWORD=root_password \
    --restart unless-stopped \
    mysql:latest

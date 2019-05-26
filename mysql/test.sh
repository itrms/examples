#!/bin/sh
docker-compose up -d
docker run --rm \
    --network=host \
    -v $PWD:/home/project \
    -w /home/project \
    itrms/itrms:0.1.0-alpha --mysql -c 1000 -n 50000
docker-compose down

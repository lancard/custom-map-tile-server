#!/bin/bash

# copy volume
docker volume rm osm-data
docker volume create --name osm-data

docker container run --rm -it \
           -v osm-data-backup:/from \
           -v osm-data:/to \
           alpine ash -c "cd /from ; cp -av . /to"

# import data
docker run --rm -it \
        -v osm-data:/data/database/ \
        -v /root/osm/data/data.osm:/data.osm \
        -v /root/osm/data/run.sh:/run.sh \
        overv/openstreetmap-tile-server 

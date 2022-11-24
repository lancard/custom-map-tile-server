#!/bin/bash

rm -rf tiles_default
mkdir tiles_default
chmod 777 tiles_default
rm -f style/mapnik.xml
docker run \
	-p 8080:80 -p 5432:5432 \
	-v osm-data:/data/database/ \
	-v $PWD/tiles_default:/data/tiles/default \
	-v $PWD/style:/data/style \
	-e NAME_MML=fans.mml \
	-d overv/openstreetmap-tile-server \
	run

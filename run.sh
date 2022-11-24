#!/bin/bash

rm -rf tiles_default/*
rm -f style/mapnik.xml
docker run \
	-p 8080:80 -p 5432:5432 \
	-v osm-data:/data/database/ \
	-v /root/osm/tiles_default:/data/tiles/default \
	-v /root/osm/style:/data/style \
	-e NAME_MML=fans.mml \
	-d overv/openstreetmap-tile-server \
	run

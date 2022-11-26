#!/bin/bash

docker run \
	--rm \
	-v osm-data-backup:/data/database/ \
	-e DOWNLOAD_PBF=https://github.com/lancard/filtered-south-korea-osm/raw/main/filtered.osm.pbf \
	-e DOWNLOAD_POLY=https://download.geofabrik.de/asia/south-korea.poly \
	overv/openstreetmap-tile-server \
	import

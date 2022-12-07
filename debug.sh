#!/bin/bash

git pull

rm -rf tiles_default
mkdir tiles_default
chmod 777 tiles_default
rm -f style/mapnik.xml

docker run -it --entrypoint /bin/bash lancard/tile-server

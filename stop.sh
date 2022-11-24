#!/bin/bash

CID=`docker container ls -lq`
docker rm $CID -f

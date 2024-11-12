#!/bin/sh
docker run --rm -v $1:/app gruebel/retirejs:latest --outputformat text --outputpath /app/$2
exit 0

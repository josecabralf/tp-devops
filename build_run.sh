#!/bin/sh
cd db

docker build -t bd-crud-users:latest .

cd ../api

docker build -t api-crud-users:latest .

# docker network create crud-users-net

docker run -d --rm \
  --name db-crud-users \
  --network $1 \
  -v db-crud-users-data:/var/lib/mysql \
  -e MYSQL_ROOT_PASSWORD=r00t \
  -e MYSQL_DATABASE=utn \
  -e MYSQL_USER=testuser \
  -e MYSQL_PASSWORD=testpass \
  bd-crud-users:latest

cd ../nginx

docker build -t nginx:latest .

docker run -d --rm \
  --name api-crud-users \
  --network $1 \
  -e MYSQL_DATABASE_USER=testuser \
  -e MYSQL_DATABASE_PASSWORD=testpass \
  -e MYSQL_DATABASE_HOST=db-crud-users \
  -e MYSQL_DATABASE_DB=utn \
  api-crud-users:latest

docker run --name nginx-users --rm -d -p 8080:80 --network $1 nginx

cd ../api-node

docker build -t api-node:latest .

docker run -d --rm \
	 --name api-node \
	 --network $1 \
	 api-node:latest

cd ../web

# docker network create front-minet

docker build -t react:latest .

docker run -d --rm \
	--name react \
	--network $2 \
	-p 25000:80 \
	react:latest

exit 0

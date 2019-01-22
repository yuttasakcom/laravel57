#!/bin/bash

mkdir ssl && openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ssl/default.key -out ssl/default.crt

mkdir -p data/mariadb

docker-compose up -d --build
docker-compose exec php cp ./.env.example ./.env
docker-compose exec php composer install -vvv
docker-compose exec php chmod 777 storage -R
docker-compose exec php ./artisan key:generate
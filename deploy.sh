#!/bin/bash

cd docker-compose
docker-compose up -d consul
echo "Wating 10 sec for consul to start"
sleep 10
docker-compose up -d consul-config-loader
echo "Waiting 10s for consul config"
sleep 10
docker-compose up -d app-mariadb
echo "Waiting 60s for uaa to be started"
sleep 10
docker-compose up -d

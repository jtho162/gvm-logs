#! /bin/bash

# This script is used to quickly identify GVM services, then view the last few log entries.
set -e

DOWNLOAD_DIR=$HOME/greenbone-community-container

echo "Display running services"
docker-compose -f $DOWNLOAD_DIR/docker-compose-$RELEASE.yml -p greenbone-community-edition top
echo
echo

echo "GSA Logs"
docker-compose -f $DOWNLOAD_DIR/docker-compose-$RELEASE.yml -p greenbone-community-edition logs --tail 10 gsa
echo
echo

echo "GVMD Logs"
docker-compose -f $DOWNLOAD_DIR/docker-compose-$RELEASE.yml -p greenbone-community-edition logs --tail 10 gvmd
echo
echo

echo "MQTT Broker Logs"
docker-compose -f $DOWNLOAD_DIR/docker-compose-$RELEASE.yml -p greenbone-community-edition logs --tail 10 mqtt-broker
echo
echo

echo "Notus Scanner Logs"
docker-compose -f $DOWNLOAD_DIR/docker-compose-$RELEASE.yml -p greenbone-community-edition logs --tail 10 notus-scanner
echo
echo

echo "OSPD SCANNER Logs"
docker-compose -f $DOWNLOAD_DIR/docker-compose-$RELEASE.yml -p greenbone-community-edition logs --tail 10 ospd-openvas
echo
echo

echo "Postgres GVM Logs"
docker-compose -f $DOWNLOAD_DIR/docker-compose-$RELEASE.yml -p greenbone-community-edition logs --tail 10 pg-gvm
echo
echo

echo "Redis Logs"
docker-compose -f $DOWNLOAD_DIR/docker-compose-$RELEASE.yml -p greenbone-community-edition logs --tail 10 redis-server
echo
echo

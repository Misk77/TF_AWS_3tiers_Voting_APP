#!/bin/bash
docker-compose -f /tmp/voting-app/docker-compose-simple.yml build
docker-compose -f /tmp/voting-app/docker-compose-simple.yml up

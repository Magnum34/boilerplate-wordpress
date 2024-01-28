#!/bin/sh
docker-compose -f ./docker-compose.yml exec -it wordpress composer create-project roots/bedrock

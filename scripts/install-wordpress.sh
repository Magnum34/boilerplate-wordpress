#!/bin/sh
if [ -d $PWD/apps/bedrock ]; then
  echo "Install wordpress"
  docker-compose -f ./docker-compose.yml exec -it wordpress bash -c "cd bedrock && composer update"
else
  echo "Create Structure for wordpress and install wordpress"
  docker-compose -f ./docker-compose.yml exec -it wordpress composer create-project roots/bedrock
fi

cp ./apps/bedrock/.env.example  ./apps/bedrock/.env
echo "Please configure the file   ./apps/bedrock/.env more info https://roots.io/bedrock/docs/installation/"

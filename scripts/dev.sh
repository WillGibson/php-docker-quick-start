#!/usr/bin/env bash

if [ "$1" == "--build-image" ]; then

   # rm -rf ./PhpStorm2016.3
   # cp -R ~/Library/Preferences/PhpStorm2016.3 ./PhpStorm2016.3

   git add -A
   git commit -m "Automatic commit $NOW"
   git push
   echo $DATE > $LAST_COMMIT_FILE

fi

docker-compose up -d
docker-compose exec php bash

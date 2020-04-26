# PHP Docker Quick Start

Just something to fire up a quick dev environment for playing around.

Has PHPUnit ready to go for your TDDing and uses a Docker container so you just fire that up and jump in to a bash prompt to run your commands.

It is envisaged that you would copy the files into a new project/repository then start playing.

## Requirements

* Docker & Docker Compose (tested with Docker 19.03.8 and Docker Compose 1.25.4)

## Quick start

    ./scripts/dev.sh

You can use the following options...

    --build-image          Forces rebuild of the Docker image
    --recreate-containers  Forces recreation of the Docker container

That will leave you at a shell prompt in the container where you can run this one liner to get cracking...

    composer install && ./vendor/bin/phpunit && node .

## Exit and take down

Exit the container then....

    ./scripts/down.sh

## Installation

From shell prompt in the container...

    composer install
    
## Run tests

From shell prompt in the container having run the build command...

    ./vendor/bin/phpunit
    
## Run the app

From shell prompt in the container having run the build command...

    node .

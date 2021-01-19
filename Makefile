.PHONY:
install-deps:
		docker-compose run --rm php composer install

.env:
		cp .env.dist .env

.PHONY:
start:
		docker-compose up -d

.PHONY:
php:
		docker-compose exec php /bin/bash

.PHONY:
stop:
		docker-compose stop

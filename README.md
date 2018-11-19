Dockerize symfony/website-skeleton
===================

Prerequisites :
------------
- install docker-ce
- install docker-compose


Used docker images
------------
- nginx:1.15.5-alpine
- custom php ( based on php:7.2.11-fpm ) (cf /docker/php/Dockerfile)
- mysql:5.7

---

Install
------------
From project path run the following command:
```
$  docker-compose pull
$  make .env
```
Once done edit .env with your custom variables

Start
------------
```
$  make start
```

Stop
------------
```
$  make stop
```

---

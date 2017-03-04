DB_ENV_CONFIG= ./ws-redis.env


TAG = $(shell echo `grep "tag=" ./ws-redis.env | cut -d'=' -f1- `)
VERSION = $(shell echo `grep "version=" ./ws-redis.env| cut -d'=' -f1- `)


build:
	docker build -t ws-redis-alpine-3-5-redis-3-2 .


tag-it:
	docker tag $(TAG) wilsonic/s-redis-alpine-3-5-redis-3-2:$(VERSION)


hub-push:
	docker push wilsonic/s-redis-alpine-3-5-redis-3-2

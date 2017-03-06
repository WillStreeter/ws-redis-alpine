TAG = $(shell echo `grep "TAG=" ./redis.config.env | sed 's/.*=//'`)
VERSION = $(shell echo `grep "VERSION=" ./redis.config.env | sed 's/.*=//'`)

build:
	docker build -t ws-redis-alpine .


tag-it:
	docker tag $(TAG) willsonic/ws-redis-alpine:$(VERSION)


hub-push:
	docker push willsonic/ws-redis-alpine

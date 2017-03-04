
TAG=920428db04ae
VERSION=v0.0.1


build:
	docker build -t ws-redis-alpine-3-5-redis-3-2 .


tag-it:
	docker tag $(TAG) willsonic/ws-redis-alpine-3-5-redis-3-2:$(VERSION)


hub-push:
	docker push willsonic/ws-redis-alpine-3-5-redis-3-2

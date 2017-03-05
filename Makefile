
TAG=d0536d0e59fe
VERSION=v0.0.1


build:
	docker build -t ws-redis-alpine .


tag-it:
	docker tag $(TAG) willsonic/ws-redis-alpine:$(VERSION)


hub-push:
	docker push willsonic/ws-redis-alpine

.PHONY: all build push deploy run stop

all: build push deploy

build:
	docker build -t pogasanov/myproject:latest -f config/myhome/Dockerfile .

push:
	docker push pogasanov/myproject:latest

deploy:
	eb deploy

run:
	docker-compose up -d

stop:
	docker-compose down

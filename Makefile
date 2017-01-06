
export NAME=hi-dacca
export IMAGE=$(NAME)
export VERSION_LABEL ?= latest

all: build deploy

build:
	yarn
	docker build -t $(IMAGE):$(VERSION_LABEL) .

run: build
	docker run -it -p 8080:8080 hi-ecs

deploy:
	make -f ../chalice-app-deployer/Makefile deploy

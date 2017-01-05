
TAG ?= latest

all: build deploy

build:
	yarn
	docker build -t hi-ecs:$(TAG) .

run: build
	docker run -it -p 8080:8080 hi-ecs

deploy:
	docker tag hi-ecs:$(TAG) 158527237998.dkr.ecr.ap-southeast-2.amazonaws.com/hi-ecs:$(TAG)
	docker push 158527237998.dkr.ecr.ap-southeast-2.amazonaws.com/hi-ecs:$(TAG)

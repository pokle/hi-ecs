
TAG ?= latest

all: build deploy

build:
	docker build -t hi-ecs:$(TAG) .

deploy:
	docker tag hi-ecs:$(TAG) 158527237998.dkr.ecr.ap-southeast-2.amazonaws.com/hi-ecs:$(TAG)
	docker push 158527237998.dkr.ecr.ap-southeast-2.amazonaws.com/hi-ecs:$(TAG)

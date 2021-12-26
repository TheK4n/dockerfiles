
CONTAINER_NAME=debian
VOLUME_NAME=Shared
IMAGE_NAME=$(USER)/debian:custom

all: build

build:
	docker build -t $(IMAGE_NAME) .

run:
	mkdir $(VOLUME_NAME) || true
	touch .env || true
	docker run --env-file .env --rm -it --name $(CONTAINER_NAME) -v $(PWD)/$(VOLUME_NAME):/root/$(VOLUME_NAME) $(IMAGE_NAME)

stop:
	docker stop $(CONTAINER_NAME)

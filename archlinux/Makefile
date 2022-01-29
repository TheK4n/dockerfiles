
CONTAINER_NAME=archlinux
VOLUME_NAME=Shared
IMAGE_NAME=$(USER)/archlinux:custom
SSH_PORTS=2222:22

all: build

build:
	docker build -t $(IMAGE_NAME) .

run:
	mkdir $(VOLUME_NAME) || true
	touch .env || true
	docker run --env-file .env --rm -it --name $(CONTAINER_NAME) -v $(PWD)/$(VOLUME_NAME):/root/$(VOLUME_NAME) -p 2222:22 $(IMAGE_NAME)

runs:
	mkdir $(VOLUME_NAME) || true
	touch .env || true
	docker run --env-file .env --rm -it -d --name $(CONTAINER_NAME) -v $(PWD)/$(VOLUME_NAME):/root/$(VOLUME_NAME) -p $(SSH_PORTS) $(IMAGE_NAME) sleep infinity

attach:
	docker attach $(CONTAINER_NAME)

stop:
	docker stop $(CONTAINER_NAME)

rm:
	docker rm $(CONTAINER_NAME)

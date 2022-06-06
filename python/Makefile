
CONTAINER_NAME=python
VOLUME_NAME=Shared
IMAGE_NAME=$(USER)/python


all: build

build:
	docker build -t $(IMAGE_NAME) .

run:
	mkdir $(VOLUME_NAME) || true
	docker run --rm -it --name $(CONTAINER_NAME) \
		-v $(PWD)/$(VOLUME_NAME):/root/$(VOLUME_NAME) \
		$(IMAGE_NAME)

stop:
	docker stop $(CONTAINER_NAME)


CONTAINER_NAME=alpine
VOLUME_NAME=Shared
IMAGE_NAME=alpine

all: run

run:
	mkdir $(VOLUME_NAME) || true
	docker run --rm -it --name $(CONTAINER_NAME) \
		-v $(PWD)/$(VOLUME_NAME):/root/$(VOLUME_NAME) \
		$(IMAGE_NAME)

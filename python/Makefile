
CONTAINER_NAME=python
VOLUME_NAME=Shared
IMAGE_NAME=$(USER)/python
NETWORK=no-internet


all: build

build:
	docker build -t $(IMAGE_NAME) .

run:
	mkdir $(VOLUME_NAME) || true
	docker run --rm -it --name $(CONTAINER_NAME) \
		-v $(PWD)/$(VOLUME_NAME):/app/$(VOLUME_NAME) \
		--read-only=true --network $(NETWORK) \
		$(IMAGE_NAME)

create_network:
	docker network create --internal --subnet 10.2.1.0/24 $(NETWORK)

disable_network:
	docker network connect $(NETWORK) $(CONTAINER_NAME)

stop:
	docker stop $(CONTAINER_NAME)


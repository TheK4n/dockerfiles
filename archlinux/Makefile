
CONTAINER_NAME=archlinux
VOLUME_NAME=Shared
IMAGE_NAME=$(USER)/archlinux
NETWORK=devnet


all: build

build:
	docker build -t $(IMAGE_NAME) .

run:
	mkdir $(VOLUME_NAME) || true
	touch .env || true
	docker run --env-file .env --rm -it --name $(CONTAINER_NAME) \
		-v $(PWD)/$(VOLUME_NAME):/root/$(VOLUME_NAME) \
		--net $(NETWORK) \
		$(IMAGE_NAME)


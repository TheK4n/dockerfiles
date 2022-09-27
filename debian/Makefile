
CONTAINER_NAME=debian
VOLUME_NAME=Shared
IMAGE_NAME=$(USER)/debian
SSH_PORTS=2222:22
NETWORK=devnet
SUBNET=172.19.0
ADDR=$(SUBNET).100
SHELL=/bin/bash


all: build

build:
	docker build -t $(IMAGE_NAME) --build-arg SSHKEY="$$(cat ~/.ssh/id_rsa.pub)" .

create_network:
	docker network create --subnet=$(SUBNET).0/16 $(NETWORK)

run:
	mkdir $(VOLUME_NAME) || true
	touch .env || true
	docker run --env-file .env --rm -it --name $(CONTAINER_NAME) \
		-v $(PWD)/$(VOLUME_NAME):/root/$(VOLUME_NAME) \
		--net $(NETWORK) --ip $(ADDR) \
		$(IMAGE_NAME) $(SHELL)

rund:
	mkdir $(VOLUME_NAME) || true
	touch .env || true
	docker run --env-file .env --rm -it -d --name $(CONTAINER_NAME) \
		-v $(PWD)/$(VOLUME_NAME):/root/$(VOLUME_NAME) \
		--net $(NETWORK) --ip $(ADDR) -p $(SSH_PORTS) \
		$(IMAGE_NAME) sleep infinity
	docker exec $(CONTAINER_NAME) service ssh restart

attach:
	docker exec -it $(CONTAINER_NAME) $(SHELL)

stop:
	docker stop $(CONTAINER_NAME)



CONTAINER_NAME=debian
VOLUME_NAME=Shared
IMAGE_NAME=$(USER)/debian:custom
SSH_PORTS=2222:22

all: build

build:
	docker build -t $(IMAGE_NAME) --build-arg SSHKEY="$$(cat ~/.ssh/id_rsa.pub)" .

run:
	mkdir $(VOLUME_NAME) || true
	touch .env || true
	docker run --env-file .env --rm -it --name $(CONTAINER_NAME) -v $(PWD)/$(VOLUME_NAME):/root/$(VOLUME_NAME) $(IMAGE_NAME)

rund:
	mkdir $(VOLUME_NAME) || true
	touch .env || true
	docker run --env-file .env --rm -it -d --name $(CONTAINER_NAME) -v $(PWD)/$(VOLUME_NAME):/root/$(VOLUME_NAME) -p $(SSH_PORTS) $(IMAGE_NAME) sleep infinity
	docker exec $(CONTAINER_NAME) service ssh restart

attach:
	docker attach $(CONTAINER_NAME)

stop:
	docker stop $(CONTAINER_NAME)


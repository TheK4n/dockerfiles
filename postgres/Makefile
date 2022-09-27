
CONTAINER_NAME=postgres
VOLUME_NAME=postgres
POSTGRES_PASSWORD=1234
PORT_OUT=54321
PORT_IN=5432
NETWORK=devnet
SUBNET=172.19.0
ADDR=$(SUBNET).100


all: rund

rund:
	docker run --rm -p $(PORT_OUT):$(PORT_IN) -d --name $(CONTAINER_NAME) \
		-e POSTGRES_PASSWORD=$(POSTGRES_PASSWORD) -v $(VOLUME_NAME):/var/lib/postgresql/data \
		--net $(NETWORK) --ip $(ADDR) \
		postgres

connect:
	echo "--> Enter password: $(POSTGRES_PASSWORD) <--"
	psql -h $(ADDR) -p $(PORT_IN) -U postgres

volume:
	docker volume create $(VOLUME_NAME)

stop:
	docker stop $(CONTAINER_NAME)

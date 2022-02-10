
CONTAINER_NAME=postgres
VOLUME_NAME=postgres
POSTGRES_PASSWORD=1234
PORT_OUT=54321
PORT_IN=5432

all: rund

rund:
	docker run --rm -p $(PORT_OUT):$(PORT_IN) -d --name $(CONTAINER_NAME) -e POSTGRES_PASSWORD=$(POSTGRES_PASSWORD) -v $(VOLUME_NAME):/var/lib/postgresql/data postgres

connect:
	psql -h 127.0.0.1 -p $(PORT_OUT) -U postgres

volume:
	docker volume create $(VOLUME_NAME)

stop:
	docker stop $(CONTAINER_NAME)

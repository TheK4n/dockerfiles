
CONTAINER_NAME=redis
VOLUME_NAME=redis
PORT_OUT=63791
PORT_IN=6379
SUBNET_NAME=devnet
ADDR=172.18.0.102


all: rund

rund:
	docker run --rm -p $(PORT_OUT):$(PORT_IN) -d --name $(CONTAINER_NAME) \
		--net $(SUBNET_NAME) --ip $(ADDR) \
		redis

connect:
	redis-cli -h $(ADDR) -p $(PORT_IN)

stop:
	docker stop $(CONTAINER_NAME)

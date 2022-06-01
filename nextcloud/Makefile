
CONTAINER_NAME=nextcloud
VOLUME_NAME=nextcloud
PORT_OUT=8080
PORT_IN=80


all: rund

rund:
	docker run --restart always -p $(PORT_OUT):$(PORT_IN) -d --name $(CONTAINER_NAME) \
		 -v $(VOLUME_NAME):/var/www/html \
		nextcloud

stop:
	docker stop $(CONTAINER_NAME)

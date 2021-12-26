all: build

build:
	docker build -t thek4n/debian:my .

run:
	mkdir volume || true
	touch .env || true
	docker run --env-file .env --rm -it --name debian -v $(PWD)/volume:/app thek4n/debian:my


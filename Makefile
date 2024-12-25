
.PHONY: build
build:
	docker build -t docker-goose -f ./build/package/Dockerfile .


.PHONY: install
install:
	chmod +x ./scripts/*
	sudo cp ./scripts/* /usr/local/bin/

.PHONY: uninstall
uninstall:
	rm -f /usr/local/bin/docker-goose-down
	rm -f /usr/local/bin/docker-goose-up

.PHONY: all
all: build install

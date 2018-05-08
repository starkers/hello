NAME    := starkers/hello
# last 8 chars of the current git hash
VERSION :=  $(shell git rev-parse HEAD | cut -c 33-40)


.PHONY: all

all: build

build:
	docker build -t $(NAME):$(VERSION) .

tag:
	docker tag $(NAME):$(VERSION) $(NAME):latest

release: tag
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F $(VERSION); then echo "$(NAME) version $(VERSION) is not yet built. Please run 'make build'"; false; fi
	docker push $(NAME)
	@echo "*** Don't forget to create a tag by creating an official GitHub release."

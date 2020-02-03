DOCKER_IMAGE=ponylang/ponyc:0.33.1-alpine

NAME=$(notdir $(PWD))
DOCKER=docker run -it -v $(PWD):/mnt -w /mnt --rm $(DOCKER_IMAGE)
COMPILE=ponyc -b $(NAME) --static --triple=x86_64-unknown-linux-musl --link-ldcmd=bfd
CHOWN=chown -R $(shell id -u):$(shell id -g)
UMOUNT=$(CHOWN) $(NAME)

.PHONY: all compile console

all: compile

compile:
	$(DOCKER) sh -c "$(COMPILE) && $(UMOUNT)"

console:
	$(DOCKER) sh

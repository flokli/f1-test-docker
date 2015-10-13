REV=$(shell git rev-parse --abbrev-ref HEAD)
NAME="f1test"

all: image

image:
	@echo ${NAME}:${REV}
	docker build -t andir/${NAME}:${REV} .
	docker push andir/${NAME}:${REV}

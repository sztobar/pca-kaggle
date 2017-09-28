.PHONY: run build

run:
	docker run -it --rm -p 8888:8888 mgr

build: Dockerfile

Dockerfile:
	docker rmi mgr
	docker build -t mgr .

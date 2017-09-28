.PHONY: run build

run:
	docker run -it --rm -p 8888:8888 mgr

build:
	docker build -t mgr .

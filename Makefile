.PHONY: run build

run:
	docker run -it --rm -p 8888:8888 pca-kaggle

build:
	docker build -t pca-kaggle .

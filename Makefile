.PHONY: build run

build:
	docker build -t gotalks .

run:
	docker run -p 8080:8080 -d gotalks

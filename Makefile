all: build

build:
	docker build \
		-t lsstsqre/docker-gc-cron .

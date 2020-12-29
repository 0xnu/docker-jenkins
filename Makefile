build: ## Create the environment and download the Jenkins image.
	mkdir jenkins_dev && \
	sudo chmod 777 jenkins_dev && \
	docker build -t jenkins:local .

run: ## Run Jenkins and install dependencies.
	docker run \
	-d \
	-p 8080:8080 \
	-p 50000:50000 \
	-v "${PWD}/jenkins_dev:/var/jenkins_dev" \
	-v "/run/docker.sock:/run/docker.sock" \
	-v "/usr/bin/docker:/usr/bin/docker" \
	jenkins:local

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: help

.DEFAULT_GOAL := help
.DEFAULT_GOAL := help: ## Prints help for targets with comments

help:
	@cat $(MAKEFILE_LIST) | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build: ## Build the docker image
	docker build -t rbase .

run: ## Run the docker image
	docker run -it --rm --entrypoint /usr/bin/R rbase



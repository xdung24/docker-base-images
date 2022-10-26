.PHONY: build

TAG=xdung24/publicrepo

build: ## Build and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):angular-13 -f angular-13.Dockerfile .
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):angular-7 -f angular-7.Dockerfile .
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):python-3.6.9 -f python-3.6.9.Dockerfile .
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):python-3.7.15 -f python-3.7.15.Dockerfile .
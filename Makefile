.PHONY: build-angular-7 build-angular-13 build-angular-14 build-python-3.6 build-python-3.7 build-python-3.8

TAG=xdung24/vidiva-base-images

build-angular-7: ## Build angular-7 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):angular-7 -f angular-7.Dockerfile .

build-angular-13: ## Build angular-13 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):angular-13 -f angular-13.Dockerfile .

build-angular-14: ## Build angular-14 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):angular-14 -f angular-14.Dockerfile .

build-python-3.6: ## Build python-3.6 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):python-3.6 -f python-3.6.Dockerfile .

build-python-3.7: ## Build python-3.7 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):python-3.7 -f python-3.7.Dockerfile .

build-python-3.8: ## Build python-3.8 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):python-3.8 -f python-3.8.Dockerfile .

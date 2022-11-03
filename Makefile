TAG=xdung24/vidiva-base-images

.PHONY: help

help: ## Show this help message.
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

angular-7: ## Build angular-7 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):angular-7 -f angular-7.Dockerfile .

angular-8: ## Build angular-8 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):angular-8 -f angular-8.Dockerfile .

angular-9: ## Build angular-9 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):angular-9 -f angular-9.Dockerfile .

angular-10: ## Build angular-10 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):angular-10 -f angular-10.Dockerfile .

angular-11: ## Build angular-11 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):angular-11 -f angular-11.Dockerfile .

angular-12: ## Build angular-12 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):angular-12 -f angular-12.Dockerfile .

angular-13: ## Build angular-13 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):angular-13 -f angular-13.Dockerfile .

angular-14: ## Build angular-14 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):angular-14 -f angular-14.Dockerfile .

python-3.6: ## Build python-3.6 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):python-3.6 -f python-3.6.Dockerfile .

python-3.7: ## Build python-3.7 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):python-3.7 -f python-3.7.Dockerfile .

python-3.8: ## Build python-3.8 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):python-3.8 -f python-3.8.Dockerfile .

python-3.9: ## Build python-3.9 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):python-3.9 -f python-3.9.Dockerfile .

python-3.10: ## Build python-3.10 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(TAG):python-3.10 -f python-3.10.Dockerfile .

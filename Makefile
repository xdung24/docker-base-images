ANGULAR_TAG=xdung24/angular-base-images
PYTHON_TAG=xdung24/python-base-images
NODE_TAG=xdung24/node-base-images
GO_TAG=xdung24/go-base-images

.PHONY: help

help: ## Show this help message.
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

angular: angular-7 angular-8 angular-9 angular-10 angular-11 angular-12 angular-13 angular-14 angular-15  angular-16 ## Build all angular images and push to docker hub 

angular-7: ## Build angular-7 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(ANGULAR_TAG):7 -f angular/angular-7.Dockerfile .

angular-8: ## Build angular-8 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(ANGULAR_TAG):8 -f angular/angular-8.Dockerfile .

angular-9: ## Build angular-9 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(ANGULAR_TAG):9 -f angular/angular-9.Dockerfile .

angular-10: ## Build angular-10 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(ANGULAR_TAG):10 -f angular/angular-10.Dockerfile .

angular-11: ## Build angular-11 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(ANGULAR_TAG):11 -f angular/angular-11.Dockerfile .

angular-12: ## Build angular-12 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(ANGULAR_TAG):12 -f angular/angular-12.Dockerfile .

angular-13: ## Build angular-13 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(ANGULAR_TAG):13 -f angular/angular-13.Dockerfile .

angular-14: ## Build angular-14 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(ANGULAR_TAG):14 -f angular/angular-14.Dockerfile .

angular-15: ## Build angular-15 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(ANGULAR_TAG):15 -f angular/angular-15.Dockerfile .

angular-16: ## Build angular-16 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(ANGULAR_TAG):16 -f angular/angular-16.Dockerfile .

python: python-3.6.9 python-3.6 python-3.7 python-3.8 python-3.9 python-3.10 python-3.11 python-3.11.4 ## Build all python images and push to docker hub

python-3.6.9: ## Build python-3.6.9 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(PYTHON_TAG):3.6.9 -f python/python-3.6.9.Dockerfile .

python-3.6: ## Build python-3.6 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(PYTHON_TAG):3.6 -f python/python-3.6.Dockerfile .

python-3.7: ## Build python-3.7 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(PYTHON_TAG):3.7 -f python/python-3.7.Dockerfile .

python-3.8: ## Build python-3.8 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(PYTHON_TAG):3.8 -f python/python-3.8.Dockerfile .

python-3.9: ## Build python-3.9 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(PYTHON_TAG):3.9 -f python/python-3.9.Dockerfile .

python-3.10: ## Build python-3.10 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(PYTHON_TAG):3.10 -f python/python-3.10.Dockerfile .

python-3.11: ## Build python-3.11 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(PYTHON_TAG):3.11 -f python/python-3.11.Dockerfile .

python-3.11.4: ## Build python-3.11.4 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(PYTHON_TAG):3.11.4 -f python/python-3.11.4.Dockerfile .

node: node-10 node-12 node-14 node-16 node-18 node-20 ## Build all node images and push to docker hub

node-10: ## Build node-10 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(NODE_TAG):10 -f node/node-10.Dockerfile .

node-12: ## Build node-12 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(NODE_TAG):12 -f node/node-12.Dockerfile .

node-14: ## Build node-14 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(NODE_TAG):14 -f node/node-14.Dockerfile .

node-16: ## Build node-16 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(NODE_TAG):16 -f node/node-16.Dockerfile .

node-18: ## Build node-18 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(NODE_TAG):18 -f node/node-18.Dockerfile .

node-20: ## Build node-20 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(NODE_TAG):20 -f node/node-20.Dockerfile .

go: go-1.18 go-1.19 go-1.20 go-1.21 ## Build all go images and push to docker hub

go-1.18: ## Build go-1.18 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(GO_TAG):1.18 -f go/go-1.18.Dockerfile .

go-1.19: ## Build go-1.19 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(GO_TAG):1.19 -f go/go-1.19.Dockerfile .

go-1.20: ## Build go-1.20 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(GO_TAG):1.20 -f go/go-1.20.Dockerfile .

go-1.21: ## Build go-1.21 and push to docker hub
	@docker buildx build --platform linux/arm64,linux/amd64 --push --tag $(GO_TAG):1.21 -f go/go-1.21.Dockerfile .
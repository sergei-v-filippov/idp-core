.PHONY: up down logs tf-plan

up: ## Start the platform locally
	docker-compose up -d --build

down: ## Stop the platform
	docker-compose down

logs: ## Tail logs
	docker-compose logs -f

tf-init: ## Initialize Terraform
	cd infra/terraform && terraform init

tf-plan: ## Plan Infrastructure
	cd infra/terraform && terraform plan
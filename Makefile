VENV_DIR := .venv
SHELL := /usr/bin/env bash
.DEFAULT_GOAL := help
.SHELLFLAGS := -eu -o pipefail -c
PATH := $(VENV_DIR)/bin:$(PATH)
export PATH

help:
	@grep -E '^[a-zA-Z1-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| awk 'BEGIN { FS = ":.*?## " }; { printf "\033[36m%-30s\033[0m %s\n", $$1, $$2 }'

install: ## Install all necessary tools
	$(MAKE)	venv
	$(MAKE) install-pip-packages
	@echo -e "\n--> You should now activate the python3 venv with:"
	@echo -e "source $(VENV_DIR)/bin/activate"

venv: ## Create python3 venv if it does not exists
	$(info --> Create python virtual env ($(VENV_DIR)))
	[[ -d $(VENV_DIR) ]] || $(shell command -v python3) -m venv $(VENV_DIR)

install-pip-packages: ## Install python3 requirements
	$(info --> Install requirements via `pip3`)
		pip3 install -r requirements.txt

upgrade-pip-packages: ## Upgrade python3 requirements
	$(shell command -v pip3) -U -r requirements.txt

molecule-test: ## Run molecule tests on all roles
	bash ci/run.sh -a

clean: ## Clean venv
	[[ ! -d $(VENV_DIR) ]] || rm -rf $(VENV_DIR)

pre-commit-install: ## Install pre-commit hooks
	pre-commit install

pre-commit-run: ## Run pre-commit hooks with $PRE_COMMIT_ARGS default to (diff master...[current_branch])
	pre-commit run $(PRE_COMMIT_ARGS)

lint: ## Run linters on the whole repository
	PRE_COMMIT_ARGS=--all-files \
	$(MAKE) pre-commit-run

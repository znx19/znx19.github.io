# Makefile for Jekyll site

JEKYLL_ENV ?= development
BUNDLE ?= bundle

.PHONY: help install serve build clean

help: ## Show available targets
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-22s\033[0m %s\n", $$1, $$2}'

install: ## Install Ruby and Node dependencies
	$(BUNDLE) install
	npm install

serve: ## Serve the site locally
	$(BUNDLE) exec jekyll serve --livereload --host 127.0.0.1

build: ## Build the site for production
	JEKYLL_ENV=production $(BUNDLE) exec jekyll build

clean: ## Clean generated files
	$(BUNDLE) exec jekyll clean

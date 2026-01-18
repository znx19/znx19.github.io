# Makefile for Jekyll Site

# Variables
JEKYLL_ENV ?= development

# Commands
.PHONY: help install serve build clean update-pubs

help: ## Show this help message / 显示此帮助信息
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'

install: ## Install dependencies / 安装依赖
	bundle install
	npm install

serve: ## Serve the site locally / 本地运行网站
	bundle exec jekyll serve --livereload

build: ## Build the site / 构建网站
	JEKYLL_ENV=production bundle exec jekyll build

clean: ## Clean generated files / 清理生成的文件
	bundle exec jekyll clean

update-pubs: ## Update publications from TSV / 从 TSV 更新出版物
	python markdown_generator/pubsFromBib.py
	python markdown_generator/talks.py

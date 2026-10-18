.DEFAULT_GOAL := help
.PHONY: help lint format

help: ## Отобразить список доступных команд и их описание
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

lint: ## Проверить линтерами код в репозитории
	ruff check ./src

format: ## Запустить автоформатер
	ruff check --fix ./src
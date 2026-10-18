# FastAI

Бэкенд ИИ-генератора сайтов для стартапа FastAI. API связывает готовый React-фронтенд
с нейросетью (DeepSeek), которая генерирует HTML-код сайтов.

Стек: Python 3.13, FastAPI, [uv](https://docs.astral.sh/uv/), ruff, pre-commit.

## Схемы приложения

- [Локальная инсталляция бэкенда](https://dvmn.org/filer/canonical/1792318155/1235/)
- [Prod инсталляция бэкенда](https://dvmn.org/filer/canonical/1792318167/1236/)
- [Декомпозиция бэкенда по подсистемам](https://gitlab.dvmn.org/root/fastapi-articles/-/wikis/fastai/backend_decomposition.drawio.png)

## Быстрый старт

```shell
uv sync
source .venv/bin/activate      # Linux/macOS
source .venv/Scripts/activate  # Windows, Git Bash
pre-commit install
fastapi dev src/main.py
```

Сервер: http://127.0.0.1:8000/, документация API: http://127.0.0.1:8000/docs

## Основные команды

```shell
make help     # список команд
make lint     # проверить код линтерами
make format   # автоматически исправить код
```

Подробности по развёртыванию, линтерам, хукам и коммитам собраны
в [CONTRIBUTING.md](./CONTRIBUTING.md).

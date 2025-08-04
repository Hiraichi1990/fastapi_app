FROM python:3.11-slim

# uvをインストール
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

COPY . /app
WORKDIR /app

# 依存関係をインストール
RUN uv sync --frozen

# アプリケーションを実行
CMD ["uv", "run", "api/main.py", "--port", "80", "--host", "0.0.0.0"]
# Легковесный сервер Minetest

Этот репозиторий предоставляет легковесный сервер Minetest на основе `alpine:edge`.

## Что такое Minetest?

Minetest — это открытый игровой движок, который позволяет игрокам создавать и исследовать виртуальные миры. Игра вдохновлена Minecraft и предлагает различные режимы игры, включая выживание, креативный и многопользовательский. Вы можете узнать больше о Minetest, посетив официальный сайт и вики:

- [Официальный сайт](https://www.minetest.net)
- [Вики Minetest](https://wiki.minetest.net)

## Инструкции по настройке

1. **Клонируйте репозиторий:**

   ```bash
   git clone https://github.com/yourusername/minetest-server.git
   cd minetest-server
   ```

2. **Настройте переменные окружения:**

   Скопируйте файл `.env_example` в `.env`:

   ```bash
   cp .env_example .env
   ```

   Отредактируйте файл `.env`, чтобы задать переменные окружения в соответствии с вашими нуждами, особенно если вы добавляете свои собственные миры и игры в директорию `data`.

## Установка и запуск

### С помощью Docker

Чтобы собрать и запустить сервер с помощью Docker, выполните:

```bash
docker build -t minetest-server .
docker run -d --env-file .env -p ${PORT}:${PORT}/udp --name minetest -v $(pwd)/data:/opt/minetest minetest-server
```

### С помощью Docker Compose

Чтобы запустить сервер с помощью Docker Compose, выполните:

```bash
docker-compose up -d
```

Эта команда собирает образ и запускает сервер Minetest с заданными переменными окружения.

### Примечание

Для получения дополнительной информации на английском языке, пожалуйста, обратитесь к [этому файлу](./README.md)


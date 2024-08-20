# Lightweight Minetest Server

This repository provides a lightweight Minetest server based on `alpine:edge`.

## What is Minetest?

Minetest is an open-source voxel game engine that allows players to create and explore virtual worlds. It is inspired by Minecraft and offers a variety of gameplay modes, including survival, creative, and multiplayer. You can learn more about Minetest by visiting the official website and wiki:

- [Official Website](https://www.minetest.net)
- [Minetest Wiki](https://wiki.minetest.net)

## Setup Instructions

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/minetest-server.git
   cd minetest-server
   ```

2. **Configure Environment Variables:**

   Copy the `.env_example` file to `.env`:

   ```bash
   cp .env_example .env
   ```

   Edit the `.env` file to set the environment variables according to your needs, especially if you add your own worlds and games in the `data` directory.


## Installation and Running

### Using Docker

To build and run the server using Docker, execute:

```bash
docker build -t minetest-server .
docker run -d --env-file .env -p ${PORT}:${PORT}/udp --name minetest -v $(pwd)/data:/opt/minetest minetest-server
```

### Using Docker Compose

To run the server using Docker Compose, execute:

```bash
docker-compose up -d
```

This command builds the image and starts the Minetest server with the specified environment variables.

### Note

For more information in Russian, please open [this file](./README_RUS.md).


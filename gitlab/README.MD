# Setup

This section outlines how to use the Dockerfile for your project.

## Start

To build and start your Docker containers:

```bash
docker-compose up -d --build
```

## Reset

To stop, remove, rebuild, and restart your Docker containers with the new restart policy:

```bash
docker-compose down # Stop and remove the containers
docker-compose up -d --build # Rebuild and start the containers with the new restart policy
```

## Debug by Reinstalling Docker Compose

If you encounter issues with Docker Compose, you might need to reinstall it. Here are the steps:

```bash
sudo rm /usr/bin/docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
```

You can verify the installation with:

```bash
docker-compose --version
```

Expected output:

```
docker-compose version 1.29.2, build 5becea4c
```

### Notice

This file will autorestart on failure or reboot due to `restart:always` policy defined in your Docker Compose configuration.

-----

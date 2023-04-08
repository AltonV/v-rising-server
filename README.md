[![Image Size](https://img.shields.io/docker/image-size/altonv/v-rising-server?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/altonv/v-rising-server)
[![Docker Pulls](https://img.shields.io/docker/pulls/altonv/v-rising-server?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/altonv/v-rising-server) 
[![Docker Stars](https://img.shields.io/docker/stars/altonv/v-rising-server?logo=docker&label=stars&logoColor=white)](https://hub.docker.com/r/altonv/v-rising-server) 
[![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/AltonV/v-rising-server?logo=github)](https://github.com/AltonV/v-rising-server)
[![GitHub repo size](https://img.shields.io/github/repo-size/AltonV/v-rising-server?logo=github)](https://github.com/AltonV/v-rising-server)
[![GitHub last commit](https://img.shields.io/github/last-commit/AltonV/v-rising-server?logo=github)](https://github.com/AltonV/v-rising-server)

# V Rising Server

[You can view available environment settings here](https://github.com/StunlockStudios/vrising-dedicated-server-instructions#server-host-settings "You can view available environment settings here")

## Docker run
```yaml
docker run -d --name='vrising-server' \
  -e VR_SERVER_NAME="V Rising Server" \
  -e VR_DESCRIPTION="My V Rising server" \
  -e VR_PASSWORD="secret" \
  -v '/etc/localtime:/etc/localtime:ro' \
  -v '/etc/timezone:/etc/timezone:ro' \
  -v '/path/to/data:/data':'rw' \
  -p 9876:9876/udp \
  -p 9877:9877/udp \
  altonv/v-rising-server:latest
```


## Docker compose
```yaml
version: "3"
services:
  vrising:
    image: altonv/v-rising-server:latest
    container_name: vrising-server
    restart: unless-stopped
    environment:
      - VR_SERVER_NAME=V Rising Server
      - VR_DESCRIPTION=My V Rising server
      - VR_SAVE_NAME=world1
      - VR_PRESET=
      - VR_PASSWORD=secret
      - VR_MAX_USERS=20
    volumes:
      - /etc/localtime:/etc/localtime:ro
      - /etc/timezone:/etc/timezone:ro
      - ./vrising_data:/data
    ports:
      - 9876:9876/udp
      - 9877:9877/udp
      - 25575:25575/tcp # Optional RCON port
```

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

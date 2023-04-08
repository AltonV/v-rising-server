FROM fragsoc/steamcmd-wine-xvfb

LABEL maintainer="AltonV <alton@altonveonion.com>"
      org.opencontainers.image.authors="AltonV <alton@altonveonion.com>"
      org.opencontainers.image.url="https://github.com/AltonV/v-rising-server.git"
      org.opencontainers.image.ref.name="altonv/v-rising-server"
      org.opencontainers.image.title="V Rising Server"
      org.opencontainers.image.description="A docker image for a V Rising server on linux"

ARG BUILD_DATE
LABEL org.opencontainers.image.created "${BUILD_DATE}"

COPY run.sh /root

WORKDIR /root

RUN chmod +x ./run.sh

VOLUME /data

EXPOSE 9876/udp
EXPOSE 9877/udp
EXPOSE 25575/tcp

ENTRYPOINT ./run.sh

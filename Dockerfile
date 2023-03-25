FROM fragsoc/steamcmd-wine-xvfb

COPY run.sh /root

WORKDIR /root

RUN chmod +x ./run.sh

VOLUME /data

EXPOSE 9876/udp
EXPOSE 9877/udp
EXPOSE 25575/tcp

ENTRYPOINT ./run.sh

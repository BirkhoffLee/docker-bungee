FROM openjdk:8-jre

ARG BUNGEE_URL=http://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar

WORKDIR /data
ADD "${BUNGEE_URL}" /srv/bungee.jar
RUN cd /srv && \
    chmod 444 /srv/bungee.jar

ADD runBungee.sh /usr/local/bin/bungeecord
RUN chmod +x /usr/local/bin/bungeecord

ENV JAVA_ARGS ""
ENV BUNGEE_ARGS ""

VOLUME "/data"

CMD ["bungeecord"]

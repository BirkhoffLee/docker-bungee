FROM openjdk:8-jre

ARG BUNGEE_URL=http://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar

WORKDIR /data
ADD "${BUNGEE_URL}" /srv/bungee.jar
RUN cd /srv && \
	chmod 444 /srv/bungee.jar && \
    echo "eula=true" > /data/eula.txt

ADD runBungee.sh /usr/local/bin/bungee
RUN chmod +x /usr/local/bin/bungee

ENV JAVA_ARGS "-Xmx1G"
ENV BUNGEE_ARGS ""

VOLUME "/data"

CMD ["bungee"]

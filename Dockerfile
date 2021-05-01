FROM adoptopenjdk/openjdk11:jre

WORKDIR /root/mcserver

ADD https://papermc.io/api/v1/paper/1.16.5/latest/download server.jar

COPY files .

CMD bash start.sh

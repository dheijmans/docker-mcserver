FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
nano \
openjdk-11-jdk \
wget

WORKDIR /root/mcserver

RUN wget https://papermc.io/api/v1/paper/1.16.5/latest/download -O server.jar

COPY files .

CMD bash start.sh

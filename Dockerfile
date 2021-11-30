FROM adoptopenjdk/openjdk16:jre

RUN apt-get update && apt-get install -y openssh-server sudo

RUN useradd -ms /bin/bash admin 

RUN echo 'admin:admin' | chpasswd

RUN service ssh start

EXPOSE 22

WORKDIR /home/admin/mcserver

ADD https://papermc.io/api/v1/paper/1.18/latest/download server.jar

COPY files .

RUN chown -R admin .

CMD bash start.sh

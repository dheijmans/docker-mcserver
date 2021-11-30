FROM adoptopenjdk/openjdk17:jre

RUN apt-get update && apt-get install -y openssh-server sudo

RUN useradd -ms /bin/bash admin 

RUN echo 'admin:admin' | chpasswd

RUN service ssh start

EXPOSE 22

WORKDIR /home/admin/mcserver

ADD https://launcher.mojang.com/v1/objects/3cf24a8694aca6267883b17d934efacc5e44440d/server.jar server.jar

COPY files .

RUN chown -R admin .

CMD bash start.sh

# docker-mcserver
This docker image provides a PaperMC Server that will automatically run on startup.

To simply use the latest stable version, run the following command:

    docker run -it -p 25565:25565 -p 2222:22 dheijmans/mcserver

Files can be transfered to the server by using SFTP on port 2222. Username and password are both 'admin'. The password can be changed later.

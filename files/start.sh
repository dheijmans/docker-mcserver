/usr/sbin/sshd
runuser admin -c 'java -Xms4G -Xmx4G -Dcom.mojang.eula.agree=true -jar /home/admin/mcserver/server.jar --nogui'
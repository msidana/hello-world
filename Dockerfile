FROM ubuntu:xenial-20180417
RUN apt-get update && apt-get install -y openssh-server iputils-ping
RUN echo 'root:password' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN /etc/init.d/ssh restart
CMD tail -f /dev/null

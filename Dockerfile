FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y openssh-server sudo && \
    mkdir /var/run/sshd

RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config && \
    sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config

RUN useradd -m -s /bin/bash ansible && \
    echo 'ansible:ansible' | chpasswd && \
    usermod -aG sudo ansible

EXPOSE 22 80

CMD ["/usr/sbin/sshd", "-D"]
FROM debian
ARG SSHKEY

EXPOSE 2222

RUN apt update -y && apt install -y vim git tree htop make python3 openssh-server

WORKDIR /root

RUN rm ~/.bashrc || true
RUN git clone https://github.com/TheK4n/dotfiles && cd dotfiles && make

RUN mkdir .ssh || true
RUN echo "$SSHKEY" > .ssh/authorized_keys
RUN echo "Port 22" >> /etc/ssh/sshd_config
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN echo "root:1234" | chpasswd


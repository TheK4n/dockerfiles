FROM debian
ARG SSHKEY

EXPOSE 2222

WORKDIR /root
RUN apt update -y && apt install -y vim git tree htop make python3 openssh-server diffutils; \
    rm ~/.bashrc ~/.profile || true; \
    git clone https://github.com/TheK4n/dotfiles && cd dotfiles && ./install install bash; \
    mkdir ~/.ssh || true; \
    echo "$SSHKEY" > ~/.ssh/authorized_keys; \
    echo "Port 22" >> /etc/ssh/sshd_config; \
    echo "PermitRootLogin yes" >> /etc/ssh/sshd_config; \
    echo "PasswordAuthentication no" >> /etc/ssh/sshd_config


FROM debian

RUN apt update -y && apt install -y vim git tree htop make python3

WORKDIR /root

RUN rm ~/.bashrc || true
RUN git clone https://github.com/TheK4n/dotfiles && cd dotfiles && make


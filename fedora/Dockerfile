FROM fedora

WORKDIR /root

RUN yum update -y && yum install -y less neovim which git tree htop make; \
    rm ~/.bashrc || true; \
    git clone https://github.com/TheK4n/dotfiles && cd dotfiles && make

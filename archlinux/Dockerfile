FROM archlinux

WORKDIR /root

RUN pacman-key --refresh-keys; \
    pacman -Syyuu --noconfirm && pacman -S --noconfirm binutils fakeroot neovim which git tree htop make python3 python-pip; \
    rm ~/.bashrc || true; \
    git clone https://github.com/TheK4n/dotfiles && cd dotfiles && ./install install bash


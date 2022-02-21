FROM archlinux

WORKDIR /root

RUN pacman -Syyuu --noconfirm && pacman -S --noconfirm neovim which git tree htop make python3; \
    rm ~/.bashrc || true; \
    git clone https://github.com/TheK4n/dotfiles && cd dotfiles && make


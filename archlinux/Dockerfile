FROM archlinux

RUN pacman -Syyuu --noconfirm && pacman -S --noconfirm neovim which git tree htop make python3 openssh

WORKDIR /root

RUN rm ~/.bashrc || true
RUN git clone https://github.com/TheK4n/dotfiles && cd dotfiles && make
RUN echo "Port 22" >> /etc/ssh/sshd_config
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN echo "root:1234" | chpasswd


FROM archlinux

WORKDIR /root

RUN pacman -Syyuu --noconfirm
RUN pacman -S --noconfirm reflector

CMD reflector \
    --latest 20 \
    --protocol https \
    --country Russia \
    --country Germany \
    --country Polish \
    --sort rate 2>/dev/null

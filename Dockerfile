FROM archlinux/base
RUN pacman -Sy --noconfirm --needed base-devel clang gcc distcc

ADD add-aur.sh /usr/sbin/add-aur
RUN add-aur docker

RUN su docker -c 'yay -S --noprogressbar --needed --noconfirm otf-font-awesome-4'
RUN su docker -c 'yay -S --noprogressbar --needed --noconfirm tectonic'

WORKDIR /usr/src/tex
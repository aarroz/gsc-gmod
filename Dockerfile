FROM egeeio/gmod
RUN dnf install -y ncurses-devel.i686

COPY run.sh /usr/bin/run
COPY update.sh /usr/bin/update

WORKDIR /home/gmod/server
ENV update=/update
CMD ["tail", "-f", "/var/log/dnf.log"]

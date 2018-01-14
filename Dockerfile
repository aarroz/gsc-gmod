FROM egeeio/gmod
RUN dnf install -y ncurses-devel.i686

ENV SERVER_ID rust

COPY run.sh /usr/bin/run
COPY update.sh /usr/bin/update

WORKDIR /opt/gmod
ENV update=/update
CMD ["run"]

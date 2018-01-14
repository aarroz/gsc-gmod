FROM egeeio/steamcmd
RUN dnf install -y ncurses-devel.i686 wget

RUN adduser gmod
RUN chown gmod:gmod /home/gmod
USER gmod

RUN mkdir /home/gmod/steamcmd
WORKDIR /home/gmod/steamcmd
RUN wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz
RUN tar -xzf /home/gmod/steamcmd/steamcmd_linux.tar.gz

RUN mkdir /home/gmod/gmodserver
RUN /home/gmod/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/gmod/gmodserver +app_update 4020 validate +quit
RUN mkdir -p /home/gmod/.steam/sdk32
RUN cp /home/gmod/steamcmd/linux32/steamclient.so /home/gmod/.steam/sdk32/steamclient.so

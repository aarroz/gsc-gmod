FROM egeeio/steamcmd
RUN dnf install -y ncurses-libs.i686

RUN adduser gmod
# RUN chown gmod /home/gmod
# USER gmod

RUN ./steamcmd.sh +login anonymous +force_install_dir /home/gmod/server +app_update 4020 validate +quit

RUN mkdir -p /home/gmod/.steam/sdk32
RUN cp /opt/steamcmd/linux32/steamclient.so /home/gmod/.steam/sdk32/steamclient.so
RUN chown gmod:gmod /home/gmod/*

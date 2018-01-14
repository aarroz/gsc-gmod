FROM egeeio/steamcmd

RUN ./steamcmd.sh +login anonymous +force_install_dir /opt/gmod +app_update 4020 validate +quit
RUN mkdir -p ~/.steam/sdk32
RUN cp /opt/steamcmd/linux32/steamclient.so ~/.steam/sdk32/steamclient.so

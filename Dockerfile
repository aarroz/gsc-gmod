FROM egeeio/gmod
USER root

COPY run.sh /usr/bin/run
COPY update.sh /usr/bin/update
RUN chmod +x /usr/bin/run
RUN chmod +x /usr/bin/update
USER gmod

WORKDIR /home/gmod/gmodserver/
ENV update=/update
CMD ["run"]
# CMD ["tail","-f","/var/log/dnf.log"]
# "tail","-f","/var/log/dnf.log"

# "srcds_run -game garrysmod +maxplayers 10 +map gm_construct"

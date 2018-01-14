FROM egeeio/gmod

COPY run.sh /usr/bin/run
COPY update.sh /usr/bin/update
RUN chmod +x /usr/bin/run
RUN chmod +x /usr/bin/update

WORKDIR /opt/gmodserver/
ENV update=/update
CMD ["run"]

FROM ubuntu
RUN apt-get update && apt-get install -y graphite-carbon
EXPOSE 2003
VOLUME /var/lib/graphite/whisper
ENTRYPOINT /usr/bin/carbon-cache --config /etc/carbon/carbon.conf --nodaemon start

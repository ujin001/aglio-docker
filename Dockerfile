FROM node:0-slim

ADD docker-provision.sh /tmp/
RUN cd /tmp/ && sh docker-provision.sh

ADD aglio-wrapper.sh /usr/local/bin/

WORKDIR /docs

# run Aglio when the container starts
ENTRYPOINT ["aglio"]

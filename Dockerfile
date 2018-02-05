FROM node:9.5.0

WORKDIR /src

RUN set -e ; \
    apt-get update ; \
    apt-get install -yq python python-pip ; \
    pip install supervisor

ADD package.json .

RUN npm install

RUN mkdir -p /var/log/supervisord/

ADD . /src

ADD supervisord.conf /etc/

ENTRYPOINT ["/usr/local/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]
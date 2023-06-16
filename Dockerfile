FROM ubuntu:20.04

RUN apt-get update && apt-get --yes install \
        xinput \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*

COPY _wait.sh _out apm-keyboard apm-mouse x-action-log xinput2insert.sh run /usr/local/bin/
CMD ["run"]
WORKDIR /usr/local/bin

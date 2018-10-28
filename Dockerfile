FROM ubuntu:18.04

RUN apt-get update && apt-get --yes install \
        xinput \
        postgresql-client-10 \
    && rm -rf /var/lib/apt/lists/*

COPY _wait.sh x-action-log xinput2insert.sh run /usr/local/bin/
CMD ["run"]
WORKDIR /usr/local/bin

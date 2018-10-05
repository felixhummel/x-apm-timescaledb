FROM ubuntu:18.04

RUN apt-get update && apt-get --yes install \
        xinput \
    && rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/xinput", "test-xi2", "--root"]

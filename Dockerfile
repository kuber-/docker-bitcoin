FROM ubuntu:latest
RUN apt-get update && \
    apt-get install --yes --no-install-recommends \
            software-properties-common && \
    add-apt-repository --yes ppa:bitcoin/bitcoin && \
    apt-get update && \
    apt-get install --yes bitcoind make && \
    rm -rf /var/lib/apt/lists/*

ADD . /bitcoin
WORKDIR /bitcoin

# expose two rpc ports for the nodes to allow outside container access
EXPOSE 19001 19011
ENTRYPOINT ["bitcoind", "-datadir=1"]
FROM ubuntu:xenial

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C70EF1F0305A1ADB9986DBD8D46F45428842CE5E && \
    echo "deb http://ppa.launchpad.net/bitcoin/bitcoin/ubuntu xenial main" > /etc/apt/sources.list.d/bitcoin.list

RUN apt-get update && apt-get install -y --no-install-recommends \
    libzmq3-dev \
    build-essential \
    curl \
    python \
    make \
    bitcoind \
	net-tools

WORKDIR /bitcoin
ADD . /bitcoin
WORKDIR /bitcoin

# expose two rpc ports for the nodes to allow outside container access
EXPOSE 19000 19001 28332
ENTRYPOINT ["bitcoind", "-datadir=1"]
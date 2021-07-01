#!/bin/bash

# This file is automatically generated by the DockerFileBuildHelper tool, run DockerFileBuildHelper/update-repo.sh to update it
set -e
DOCKERFILE=""


# Build docker-compose-generator
# https://raw.githubusercontent.com/btcpayserver/btcpayserver-docker/dcg-latest/docker-compose-generator/linuxamd64.Dockerfile
DOCKERFILE="docker-compose-generator/linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/btcpayserver-docker/dcg-latest/docker-compose-generator/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="docker-compose-generator/linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/btcpayserver-docker/dcg-latest/docker-compose-generator/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="docker-compose-generator/linuxarm64v8.Dockerfile"
echo "Building btcpayserver/docker-compose-generator:latest"
git clone https://github.com/btcpayserver/btcpayserver-docker docker-compose-generator
cd docker-compose-generator
git checkout dcg-latest
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/docker-compose-generator:latest" .
cd - && cd ..


# Build docker-compose
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/docker-compose/1.28.6/docker-compose/1.28.6/linuxamd64.Dockerfile
DOCKERFILE="docker-compose/1.28.6/linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/docker-compose/1.28.6/docker-compose/1.28.6/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="docker-compose/1.28.6/linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/docker-compose/1.28.6/docker-compose/1.28.6/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="docker-compose/1.28.6/linuxarm64v8.Dockerfile"
echo "Building btcpayserver/docker-compose:1.28.6"
git clone https://github.com/btcpayserver/dockerfile-deps docker-compose
cd docker-compose
git checkout docker-compose/1.28.6
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/docker-compose:1.28.6" .
cd - && cd ..


# Build lightning
# https://raw.githubusercontent.com/btcpayserver/lightning/basedon-v0.9.3-1/Dockerfile
DOCKERFILE="Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/lightning/basedon-v0.9.3-1/contrib/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="contrib/linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/lightning/basedon-v0.9.3-1/contrib/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="contrib/linuxarm64v8.Dockerfile"
echo "Building btcpayserver/lightning:v0.9.3-1"
git clone https://github.com/btcpayserver/lightning lightning
cd lightning
git checkout basedon-v0.9.3-1
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/lightning:v0.9.3-1" .
cd - && cd ..


# Build lightning-charge
# https://raw.githubusercontent.com/ElementsProject/lightning-charge/v0.4.23/Dockerfile
DOCKERFILE="Dockerfile"
# https://raw.githubusercontent.com/ElementsProject/lightning-charge/v0.4.23/arm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="arm32v7.Dockerfile"
# https://raw.githubusercontent.com/ElementsProject/lightning-charge/v0.4.23/arm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="arm64v8.Dockerfile"
echo "Building shesek/lightning-charge:0.4.23-1-standalone"
git clone https://github.com/ElementsProject/lightning-charge lightning-charge
cd lightning-charge
git checkout v0.4.23
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "shesek/lightning-charge:0.4.23-1-standalone" .
cd - && cd ..


# Build spark-wallet
# https://raw.githubusercontent.com/shesek/spark-wallet/v0.2.9/Dockerfile
DOCKERFILE="Dockerfile"
# https://raw.githubusercontent.com/shesek/spark-wallet/v0.2.9/arm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="arm32v7.Dockerfile"
# https://raw.githubusercontent.com/shesek/spark-wallet/v0.2.9/arm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="arm64v8.Dockerfile"
echo "Building shesek/spark-wallet:0.2.9-standalone"
git clone https://github.com/shesek/spark-wallet spark-wallet
cd spark-wallet
git checkout v0.2.9
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "shesek/spark-wallet:0.2.9-standalone" .
cd - && cd ..


# Build c-lightning-rest
# https://raw.githubusercontent.com/Ride-The-Lightning/c-lightning-REST/v0.4.3/amd64.Dockerfile
DOCKERFILE="amd64.Dockerfile"
# https://raw.githubusercontent.com/Ride-The-Lightning/c-lightning-REST/v0.4.3/arm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="arm32v7.Dockerfile"
# https://raw.githubusercontent.com/Ride-The-Lightning/c-lightning-REST/v0.4.3/arm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="arm64v8.Dockerfile"
echo "Building saubyk/c-lightning-rest:0.4.3"
git clone https://github.com/Ride-The-Lightning/c-lightning-REST c-lightning-rest
cd c-lightning-rest
git checkout v0.4.3
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "saubyk/c-lightning-rest:0.4.3" .
cd - && cd ..


# Build rtl
# https://raw.githubusercontent.com/ShahanaFarooqui/RTL/v0.10.0/Dockerfile
DOCKERFILE="Dockerfile"
# https://raw.githubusercontent.com/ShahanaFarooqui/RTL/v0.10.0/Dockerfile.arm32v7
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Dockerfile.arm32v7"
# https://raw.githubusercontent.com/ShahanaFarooqui/RTL/v0.10.0/Dockerfile.arm64v8
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Dockerfile.arm64v8"
echo "Building shahanafarooqui/rtl:0.10.0"
git clone https://github.com/ShahanaFarooqui/RTL rtl
cd rtl
git checkout v0.10.0
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "shahanafarooqui/rtl:0.10.0" .
cd - && cd ..


# Build eclair
# https://raw.githubusercontent.com/ACINQ/eclair/v0.4.1/Dockerfile
DOCKERFILE="Dockerfile"
echo "Building acinq/eclair:release-0.4.1"
git clone https://github.com/ACINQ/eclair eclair
cd eclair
git checkout v0.4.1
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "acinq/eclair:release-0.4.1" .
cd - && cd ..


# Build rtl
# https://raw.githubusercontent.com/ShahanaFarooqui/RTL/v0.10.0/Dockerfile
DOCKERFILE="Dockerfile"
# https://raw.githubusercontent.com/ShahanaFarooqui/RTL/v0.10.0/Dockerfile.arm32v7
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Dockerfile.arm32v7"
# https://raw.githubusercontent.com/ShahanaFarooqui/RTL/v0.10.0/Dockerfile.arm64v8
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Dockerfile.arm64v8"
echo "Building shahanafarooqui/rtl:0.10.0"
git clone https://github.com/ShahanaFarooqui/RTL rtl
cd rtl
git checkout v0.10.0
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "shahanafarooqui/rtl:0.10.0" .
cd - && cd ..


# Build lnd
# https://raw.githubusercontent.com/btcpayserver/lnd/basedon-v0.12.1-beta-withloop/linuxamd64.Dockerfile
DOCKERFILE="linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/lnd/basedon-v0.12.1-beta-withloop/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/lnd/basedon-v0.12.1-beta-withloop/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="linuxarm64v8.Dockerfile"
echo "Building btcpayserver/lnd:v0.12.1-beta-withloop"
git clone https://github.com/btcpayserver/lnd lnd
cd lnd
git checkout basedon-v0.12.1-beta-withloop
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/lnd:v0.12.1-beta-withloop" .
cd - && cd ..


# Build rtl
# https://raw.githubusercontent.com/ShahanaFarooqui/RTL/v0.10.0/Dockerfile
DOCKERFILE="Dockerfile"
# https://raw.githubusercontent.com/ShahanaFarooqui/RTL/v0.10.0/Dockerfile.arm32v7
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Dockerfile.arm32v7"
# https://raw.githubusercontent.com/ShahanaFarooqui/RTL/v0.10.0/Dockerfile.arm64v8
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Dockerfile.arm64v8"
echo "Building shahanafarooqui/rtl:0.10.0"
git clone https://github.com/ShahanaFarooqui/RTL rtl
cd rtl
git checkout v0.10.0
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "shahanafarooqui/rtl:0.10.0" .
cd - && cd ..


# Build bitcoin
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Bitcoin/0.21.1/Bitcoin/0.21.1/linuxamd64.Dockerfile
DOCKERFILE="Bitcoin/0.21.1/linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Bitcoin/0.21.1/Bitcoin/0.21.1/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Bitcoin/0.21.1/linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Bitcoin/0.21.1/Bitcoin/0.21.1/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Bitcoin/0.21.1/linuxarm64v8.Dockerfile"
echo "Building btcpayserver/bitcoin:0.21.1"
git clone https://github.com/btcpayserver/dockerfile-deps bitcoin
cd bitcoin
git checkout Bitcoin/0.21.1
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/bitcoin:0.21.1" .
cd - && cd ..


# Build btcpayserver
# https://raw.githubusercontent.com/btcpayserver/btcpayserver/v1.1.2/amd64.Dockerfile
DOCKERFILE="amd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/btcpayserver/v1.1.2/arm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="arm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/btcpayserver/v1.1.2/arm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="arm64v8.Dockerfile"
echo "Building btcpayserver/btcpayserver:1.1.2$<BTCPAY_BUILD_CONFIGURATION>?"
git clone https://github.com/btcpayserver/btcpayserver btcpayserver
cd btcpayserver
git checkout v1.1.2
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/btcpayserver:1.1.2$<BTCPAY_BUILD_CONFIGURATION>?" .
cd - && cd ..


# Build lightning
# https://raw.githubusercontent.com/Groestlcoin/lightning/v0.10.0/Dockerfile
DOCKERFILE="Dockerfile"
echo "Building groestlcoin/lightning:v0.10.0"
git clone https://github.com/Groestlcoin/lightning lightning
cd lightning
git checkout v0.10.0
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "groestlcoin/lightning:v0.10.0" .
cd - && cd ..



# Build elements
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Elements/0.18.1.11/Elements/0.18.1.11/linuxamd64.Dockerfile
DOCKERFILE="Elements/0.18.1.11/linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Elements/0.18.1.11/Elements/0.18.1.11/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Elements/0.18.1.11/linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Elements/0.18.1.11/Elements/0.18.1.11/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Elements/0.18.1.11/linuxarm64v8.Dockerfile"
echo "Building btcpayserver/elements:0.18.1.11"
git clone https://github.com/btcpayserver/dockerfile-deps elements
cd elements
git checkout Elements/0.18.1.11
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/elements:0.18.1.11" .
cd - && cd ..


# Build lightning
# https://raw.githubusercontent.com/btcpayserver/lightning/basedon-v0.9.0-1/Dockerfile
DOCKERFILE="Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/lightning/basedon-v0.9.0-1/contrib/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="contrib/linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/lightning/basedon-v0.9.0-1/contrib/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="contrib/linuxarm64v8.Dockerfile"
echo "Building btcpayserver/lightning:v0.9.0-1"
git clone https://github.com/btcpayserver/lightning lightning
cd lightning
git checkout basedon-v0.9.0-1
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/lightning:v0.9.0-1" .
cd - && cd ..


# Build lnd
# https://raw.githubusercontent.com/btcpayserver/lnd/basedon-v0.11.0-beta/linuxamd64.Dockerfile
DOCKERFILE="linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/lnd/basedon-v0.11.0-beta/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/lnd/basedon-v0.11.0-beta/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="linuxarm64v8.Dockerfile"
echo "Building btcpayserver/lnd:v0.11.0-beta"
git clone https://github.com/btcpayserver/lnd lnd
cd lnd
git checkout basedon-v0.11.0-beta
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/lnd:v0.11.0-beta" .
cd - && cd ..




# Build nbxplorer
# https://raw.githubusercontent.com/dgarage/nbxplorer/v2.1.51/Dockerfile.linuxamd64
DOCKERFILE="Dockerfile.linuxamd64"
# https://raw.githubusercontent.com/dgarage/nbxplorer/v2.1.51/Dockerfile.linuxarm32v7
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Dockerfile.linuxarm32v7"
# https://raw.githubusercontent.com/dgarage/nbxplorer/v2.1.51/Dockerfile.linuxarm64v8
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Dockerfile.linuxarm64v8"
echo "Building nicolasdorier/nbxplorer:2.1.51"
git clone https://github.com/dgarage/nbxplorer nbxplorer
cd nbxplorer
git checkout v2.1.51
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "nicolasdorier/nbxplorer:2.1.51" .
cd - && cd ..


# Build letsencrypt-nginx-proxy-companion
# https://raw.githubusercontent.com/btcpayserver/docker-letsencrypt-nginx-proxy-companion/v1.12.2/linuxamd64.Dockerfile
DOCKERFILE="linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/docker-letsencrypt-nginx-proxy-companion/v1.12.2/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/docker-letsencrypt-nginx-proxy-companion/v1.12.2/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="linuxarm64v8.Dockerfile"
echo "Building btcpayserver/letsencrypt-nginx-proxy-companion:1.12.2"
git clone https://github.com/btcpayserver/docker-letsencrypt-nginx-proxy-companion letsencrypt-nginx-proxy-companion
cd letsencrypt-nginx-proxy-companion
git checkout v1.12.2
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/letsencrypt-nginx-proxy-companion:1.12.2" .
cd - && cd ..


# Build nginx
# https://raw.githubusercontent.com/nginxinc/docker-nginx/1.16.0/stable/stretch/Dockerfile
DOCKERFILE="stable/stretch/Dockerfile"
# https://raw.githubusercontent.com/nginxinc/docker-nginx/1.16.0/stable/stretch/Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="stable/stretch/Dockerfile"
# https://raw.githubusercontent.com/nginxinc/docker-nginx/1.16.0/stable/stretch/Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="stable/stretch/Dockerfile"
echo "Building nginx:1.16.0"
git clone https://github.com/nginxinc/docker-nginx nginx
cd nginx
git checkout 1.16.0
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "nginx:1.16.0" .
cd - && cd ..


# Build docker-gen
# https://raw.githubusercontent.com/btcpayserver/docker-gen/v0.7.8/linuxamd64.Dockerfile
DOCKERFILE="linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/docker-gen/v0.7.8/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/docker-gen/v0.7.8/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="linuxarm64v8.Dockerfile"
echo "Building btcpayserver/docker-gen:0.7.8"
git clone https://github.com/btcpayserver/docker-gen docker-gen
cd docker-gen
git checkout v0.7.8
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/docker-gen:0.7.8" .
cd - && cd ..



# Build redis
# https://raw.githubusercontent.com/docker-library/redis/f1a8498333ae3ab340b5b39fbac1d7e1dc0d628c/5.0/Dockerfile
DOCKERFILE="5.0/Dockerfile"
echo "Building redis:5.0.2-alpine"
git clone https://github.com/docker-library/redis redis
cd redis
git checkout f1a8498333ae3ab340b5b39fbac1d7e1dc0d628c
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "redis:5.0.2-alpine" .
cd - && cd ..


# Build btctransmuter
# https://raw.githubusercontent.com/btcpayserver/btctransmuter/v0.0.56/Dockerfiles/amd64.Dockerfile
DOCKERFILE="Dockerfiles/amd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/btctransmuter/v0.0.56/Dockerfiles/arm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Dockerfiles/arm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/btctransmuter/v0.0.56/Dockerfiles/arm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Dockerfiles/arm64v8.Dockerfile"
echo "Building btcpayserver/btctransmuter:0.0.56"
git clone https://github.com/btcpayserver/btctransmuter btctransmuter
cd btctransmuter
git checkout v0.0.56
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/btctransmuter:0.0.56" .
cd - && cd ..


# Build btcpayserver-configurator
# https://raw.githubusercontent.com/btcpayserver/btcpayserver-configurator/v0.0.21/Dockerfiles/amd64.Dockerfile
DOCKERFILE="Dockerfiles/amd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/btcpayserver-configurator/v0.0.21/Dockerfiles/arm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Dockerfiles/arm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/btcpayserver-configurator/v0.0.21/Dockerfiles/arm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Dockerfiles/arm64v8.Dockerfile"
echo "Building btcpayserver/btcpayserver-configurator:0.0.21"
git clone https://github.com/btcpayserver/btcpayserver-configurator btcpayserver-configurator
cd btcpayserver-configurator
git checkout v0.0.21
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/btcpayserver-configurator:0.0.21" .
cd - && cd ..


# Build eps
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/EPS/0.2.1.1/EPS/0.2.1.1/linuxamd64.Dockerfile
DOCKERFILE="EPS/0.2.1.1/linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/EPS/0.2.1.1/EPS/0.2.1.1/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="EPS/0.2.1.1/linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/EPS/0.2.1.1/EPS/0.2.1.1/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="EPS/0.2.1.1/linuxarm64v8.Dockerfile"
echo "Building btcpayserver/eps:0.2.1.1"
git clone https://github.com/btcpayserver/dockerfile-deps eps
cd eps
git checkout EPS/0.2.1.1
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/eps:0.2.1.1" .
cd - && cd ..


# Build electrumx
# https://raw.githubusercontent.com/lukechilds/docker-electrumx/master/Dockerfile
DOCKERFILE="Dockerfile"
echo "Building lukechilds/electrumx:latest"
git clone https://github.com/lukechilds/docker-electrumx electrumx
cd electrumx
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "lukechilds/electrumx:latest" .
cd - && cd ..


# Build librepatron
# https://raw.githubusercontent.com/JeffVandrewJr/patron/v0.7.39/Dockerfile
DOCKERFILE="Dockerfile"
echo "Building jvandrew/librepatron:0.7.39"
git clone https://github.com/JeffVandrewJr/patron librepatron
cd librepatron
git checkout v0.7.39
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "jvandrew/librepatron:0.7.39" .
cd - && cd ..


# Build isso
# https://raw.githubusercontent.com/JeffVandrewJr/isso/patron.22/Dockerfile
DOCKERFILE="Dockerfile"
echo "Building jvandrew/isso:atron.22"
git clone https://github.com/JeffVandrewJr/isso isso
cd isso
git checkout patron.22
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "jvandrew/isso:atron.22" .
cd - && cd ..


# Build ndlc-cli
# https://raw.githubusercontent.com/dgarage/ndlc/releases/1.0.1/amd64.Dockerfile
DOCKERFILE="amd64.Dockerfile"
# https://raw.githubusercontent.com/dgarage/ndlc/releases/1.0.1/arm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="arm32v7.Dockerfile"
# https://raw.githubusercontent.com/dgarage/ndlc/releases/1.0.1/arm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="arm64v8.Dockerfile"
echo "Building nicolasdorier/ndlc-cli:1.0.1"
git clone https://github.com/dgarage/ndlc ndlc-cli
cd ndlc-cli
git checkout releases/1.0.1
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "nicolasdorier/ndlc-cli:1.0.1" .
cd - && cd ..


# Build pihole
# https://raw.githubusercontent.com/pi-hole/docker-pi-hole/v5.7/Dockerfile
DOCKERFILE="Dockerfile"
# https://raw.githubusercontent.com/pi-hole/docker-pi-hole/v5.7/Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Dockerfile"
# https://raw.githubusercontent.com/pi-hole/docker-pi-hole/v5.7/Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Dockerfile"
echo "Building pihole/pihole:v5.7"
git clone https://github.com/pi-hole/docker-pi-hole pihole
cd pihole
git checkout v5.7
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "pihole/pihole:v5.7" .
cd - && cd ..


# Build sphinx-relay
# https://raw.githubusercontent.com/stakwork/sphinx-relay/v2.1.3/Dockerfile
DOCKERFILE="Dockerfile"
# https://raw.githubusercontent.com/stakwork/sphinx-relay/v2.1.3/Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Dockerfile"
echo "Building sphinxlightning/sphinx-relay:v2.1.3"
git clone https://github.com/stakwork/sphinx-relay sphinx-relay
cd sphinx-relay
git checkout v2.1.3
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "sphinxlightning/sphinx-relay:v2.1.3" .
cd - && cd ..


# Build python-teos
# https://raw.githubusercontent.com/talaia-labs/python-teos/master/docker/Dockerfile
DOCKERFILE="docker/Dockerfile"
# https://raw.githubusercontent.com/talaia-labs/python-teos/master/docker/arm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="docker/arm32v7.Dockerfile"
# https://raw.githubusercontent.com/talaia-labs/python-teos/master/docker/arm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="docker/arm64v8.Dockerfile"
echo "Building talaia/python-teos:latest"
git clone https://github.com/talaia-labs/python-teos python-teos
cd python-teos
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "talaia/python-teos:latest" .
cd - && cd ..


# Build thunderhub
# https://raw.githubusercontent.com/apotdevin/thunderhub/v0.12.17/Dockerfile
DOCKERFILE="Dockerfile"
# https://raw.githubusercontent.com/apotdevin/thunderhub/v0.12.17/arm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="arm32v7.Dockerfile"
# https://raw.githubusercontent.com/apotdevin/thunderhub/v0.12.17/arm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="arm64v8.Dockerfile"
echo "Building apotdevin/thunderhub:base-v0.12.17"
git clone https://github.com/apotdevin/thunderhub thunderhub
cd thunderhub
git checkout v0.12.17
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "apotdevin/thunderhub:base-v0.12.17" .
cd - && cd ..


# Build docker-gen
# https://raw.githubusercontent.com/btcpayserver/docker-gen/v0.7.8/linuxamd64.Dockerfile
DOCKERFILE="linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/docker-gen/v0.7.8/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/docker-gen/v0.7.8/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="linuxarm64v8.Dockerfile"
echo "Building btcpayserver/docker-gen:0.7.8"
git clone https://github.com/btcpayserver/docker-gen docker-gen
cd docker-gen
git checkout v0.7.8
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/docker-gen:0.7.8" .
cd - && cd ..


# Build tor
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Tor/0.4.4.7/Tor/0.4.4.7/linuxamd64.Dockerfile
DOCKERFILE="Tor/0.4.4.7/linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Tor/0.4.4.7/Tor/0.4.4.7/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Tor/0.4.4.7/linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Tor/0.4.4.7/Tor/0.4.4.7/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Tor/0.4.4.7/linuxarm64v8.Dockerfile"
echo "Building btcpayserver/tor:0.4.4.7"
git clone https://github.com/btcpayserver/dockerfile-deps tor
cd tor
git checkout Tor/0.4.4.7
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/tor:0.4.4.7" .
cd - && cd ..


# Build tor
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Tor/0.4.6.5/Tor/0.4.6.5/linuxamd64.Dockerfile
DOCKERFILE="Tor/0.4.6.5/linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Tor/0.4.6.5/Tor/0.4.6.5/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="Tor/0.4.6.5/linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/dockerfile-deps/Tor/0.4.6.5/Tor/0.4.6.5/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="Tor/0.4.6.5/linuxarm64v8.Dockerfile"
echo "Building btcpayserver/tor:0.4.6.5"
git clone https://github.com/btcpayserver/dockerfile-deps tor
cd tor
git checkout Tor/0.4.6.5
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/tor:0.4.6.5" .
cd - && cd ..


# Build docker-gen
# https://raw.githubusercontent.com/btcpayserver/docker-gen/v0.7.8/linuxamd64.Dockerfile
DOCKERFILE="linuxamd64.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/docker-gen/v0.7.8/linuxarm32v7.Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="linuxarm32v7.Dockerfile"
# https://raw.githubusercontent.com/btcpayserver/docker-gen/v0.7.8/linuxarm64v8.Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="linuxarm64v8.Dockerfile"
echo "Building btcpayserver/docker-gen:0.7.8"
git clone https://github.com/btcpayserver/docker-gen docker-gen
cd docker-gen
git checkout v0.7.8
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/docker-gen:0.7.8" .
cd - && cd ..


# Build docker-woocommerce
# https://raw.githubusercontent.com/btcpayserver/docker-woocommerce/v3.0.12/Dockerfile
DOCKERFILE="Dockerfile"
echo "Building btcpayserver/docker-woocommerce:3.0.12"
git clone https://github.com/btcpayserver/docker-woocommerce docker-woocommerce
cd docker-woocommerce
git checkout v3.0.12
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "btcpayserver/docker-woocommerce:3.0.12" .
cd - && cd ..


# Build mariadb
# https://raw.githubusercontent.com/docker-library/mariadb/master/10.3/Dockerfile
DOCKERFILE="10.3/Dockerfile"
echo "Building mariadb:10.3"
git clone https://github.com/docker-library/mariadb mariadb
cd mariadb
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "mariadb:10.3" .
cd - && cd ..


# Build zammad-docker-compose
# https://raw.githubusercontent.com/zammad/zammad-docker-compose/master/containers/zammad-postgresql/Dockerfile
DOCKERFILE="containers/zammad-postgresql/Dockerfile"
echo "Building zammad/zammad-docker-compose:zammad-postgresql-3.4.0-4"
git clone https://github.com/zammad/zammad-docker-compose zammad-docker-compose
cd zammad-docker-compose
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "zammad/zammad-docker-compose:zammad-postgresql-3.4.0-4" .
cd - && cd ..


# Build zammad-docker-compose
# https://raw.githubusercontent.com/zammad/zammad-docker-compose/master/containers/zammad-elasticsearch/Dockerfile
DOCKERFILE="containers/zammad-elasticsearch/Dockerfile"
echo "Building zammad/zammad-docker-compose:zammad-elasticsearch-3.4.0-4"
git clone https://github.com/zammad/zammad-docker-compose zammad-docker-compose
cd zammad-docker-compose
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "zammad/zammad-docker-compose:zammad-elasticsearch-3.4.0-4" .
cd - && cd ..


# Build zammad-docker-compose
# https://raw.githubusercontent.com/zammad/zammad-docker-compose/master/containers/zammad/Dockerfile
DOCKERFILE="containers/zammad/Dockerfile"
echo "Building zammad/zammad-docker-compose:zammad-3.4.0-4"
git clone https://github.com/zammad/zammad-docker-compose zammad-docker-compose
cd zammad-docker-compose
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "zammad/zammad-docker-compose:zammad-3.4.0-4" .
cd - && cd ..


# Build memcached
# https://raw.githubusercontent.com/docker-library/memcached/master/alpine/Dockerfile
DOCKERFILE="alpine/Dockerfile"
echo "Building memcached:1.5.22-alpine"
git clone https://github.com/docker-library/memcached memcached
cd memcached
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "memcached:1.5.22-alpine" .
cd - && cd ..


# Build zammad-docker-compose
# https://raw.githubusercontent.com/zammad/zammad-docker-compose/master/containers/zammad/Dockerfile
DOCKERFILE="containers/zammad/Dockerfile"
echo "Building zammad/zammad-docker-compose:zammad-3.4.0-4"
git clone https://github.com/zammad/zammad-docker-compose zammad-docker-compose
cd zammad-docker-compose
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "zammad/zammad-docker-compose:zammad-3.4.0-4" .
cd - && cd ..


# Build zammad-docker-compose
# https://raw.githubusercontent.com/zammad/zammad-docker-compose/master/containers/zammad/Dockerfile
DOCKERFILE="containers/zammad/Dockerfile"
echo "Building zammad/zammad-docker-compose:zammad-3.4.0-4"
git clone https://github.com/zammad/zammad-docker-compose zammad-docker-compose
cd zammad-docker-compose
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "zammad/zammad-docker-compose:zammad-3.4.0-4" .
cd - && cd ..


# Build zammad-docker-compose
# https://raw.githubusercontent.com/zammad/zammad-docker-compose/master/containers/zammad/Dockerfile
DOCKERFILE="containers/zammad/Dockerfile"
echo "Building zammad/zammad-docker-compose:zammad-3.4.0-4"
git clone https://github.com/zammad/zammad-docker-compose zammad-docker-compose
cd zammad-docker-compose
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "zammad/zammad-docker-compose:zammad-3.4.0-4" .
cd - && cd ..


# Build zammad-docker-compose
# https://raw.githubusercontent.com/zammad/zammad-docker-compose/master/containers/zammad/Dockerfile
DOCKERFILE="containers/zammad/Dockerfile"
echo "Building zammad/zammad-docker-compose:zammad-3.4.0-4"
git clone https://github.com/zammad/zammad-docker-compose zammad-docker-compose
cd zammad-docker-compose
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "zammad/zammad-docker-compose:zammad-3.4.0-4" .
cd - && cd ..


# Build postgres
# https://raw.githubusercontent.com/docker-library/postgres/b7cb3c6eacea93be2259381033be3cc435649369/9.6/Dockerfile
DOCKERFILE="9.6/Dockerfile"
# https://raw.githubusercontent.com/docker-library/postgres/b7cb3c6eacea93be2259381033be3cc435649369/9.6/Dockerfile
[[ "$(uname -m)" == "armv7l" ]] && DOCKERFILE="9.6/Dockerfile"
# https://raw.githubusercontent.com/docker-library/postgres/b7cb3c6eacea93be2259381033be3cc435649369/9.6/Dockerfile
[[ "$(uname -m)" == "aarch64" ]] && DOCKERFILE="9.6/Dockerfile"
echo "Building postgres:9.6.20"
git clone https://github.com/docker-library/postgres postgres
cd postgres
git checkout b7cb3c6eacea93be2259381033be3cc435649369
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "postgres:9.6.20" .
cd - && cd ..


# Build traefik
# https://raw.githubusercontent.com/containous/traefik-library-image/master/scratch/Dockerfile
DOCKERFILE="scratch/Dockerfile"
echo "Building traefik:latest"
git clone https://github.com/containous/traefik-library-image traefik
cd traefik
git checkout master
cd "$(dirname $DOCKERFILE)"
docker build -f "$DOCKERFILE" -t "traefik:latest" .
cd - && cd ..

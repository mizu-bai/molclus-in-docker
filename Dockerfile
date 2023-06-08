FROM ubuntu:bionic

LABEL maintainer="mizu-bai <shiragawa4519@outlook.com>"

RUN set -x; mkdir -p /opt/molclus

ENV PATH="/opt/molclus/genmer:/opt/molclus/gentor:/opt/molclus:$PATH"

WORKDIR /source

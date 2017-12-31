FROM library/debian:jessie

LABEL "maintainer"="Chris Diehl <cultclassik@gmail.com>"

ENV SW_FILE="lbrynet.linux.zip"
ENV SW_URL="https://lbry.io/get/${SW_FILE}"

ENV RPC_PORT=5279

RUN apt-get update && apt-get install -y --no-install-recommends \
    wget \
    unzip &&\
    rm -rf /var/lib/apt/lists/*

RUN mkdir /lbry

WORKDIR /lbry

RUN wget --no-check-certificate $SW_URL &&\
    unzip $SW_FILE &&\
    rm $SW_FILE

EXPOSE 5279/tcp 4444/udp

VOLUME /root/.local/share/lbry

CMD [ "/lbry/lbrynet-daemon" ]
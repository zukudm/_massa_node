FROM alpine:3.14

ARG ARTIFACT_BIN
ARG ARTIFACT_LINK
ARG INSTALL_DIR="/root"

ENV _INSTALL_MASSA=$INSTALL_DIR


RUN wget  $ARTIFACT_LINK  && tar -zxvf $ARTIFACT_BIN --directory $INSTALL_DIR

ENTRYPOINT ["/usr/bin/tini", "--", "$_INSTALL_MASSA/massa/massa-node/massa-node"]

CMD []









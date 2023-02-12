FROM alpine:3.14

ARG ARTIFACT_BIN
ARG ARTIFACT_LINK
ARG INSTALL_DIR="/root"



RUN wget  $ARTIFACT_LINK  && tar -zxvf $ARTIFACT_BIN --directory $INSTALL_DIR

ENTRYPOINT ["/usr/bin/tini", "--", "$INSTALL_DIR/massa/massa-node/massa-node"]

CMD []









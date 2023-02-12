FROM ubuntu:20.04



RUN chmod +x /sbin/tini

ARG ARTIFACT_BIN
ARG ARTIFACT_LINK
ARG INSTALL_DIR="/root"

ENV _INSTALL_MASSA=$INSTALL_DIR


RUN wget  $ARTIFACT_LINK  && tar -zxvf $ARTIFACT_BIN --directory $INSTALL_DIR

# Add Tini
ENV TINI_VERSION v0.19.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
ENTRYPOINT ["/tini", "--"]


CMD []









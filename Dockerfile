FROM ubuntu:22.04

ARG FASTLY_VERSION

RUN  apt update -y && \
  apt install curl -y && \
  curl -L https://github.com/fastly/cli/releases/download/v${FASTLY_VERSION}/fastly_${FASTLY_VERSION}_linux_amd64.deb > /tmp/fastly_${FASTLY_VERSION}_linux_amd64.deb && \
  apt install /tmp/fastly_${FASTLY_VERSION}_linux_amd64.deb

ENTRYPOINT ["fastly"]

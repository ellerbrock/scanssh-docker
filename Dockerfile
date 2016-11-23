FROM debian:jessie-slim

MAINTAINER Maik Ellerbrock (https://github.com/ellerbrock)

RUN apt-get update && \
  apt-get install -y scanssh && \
  rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["scanssh"]
CMD ["-h"]

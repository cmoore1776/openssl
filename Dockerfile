FROM debian:bookworm-slim

ARG VERSION SHA256

RUN \
  apt update && \
  apt -y upgrade && \
  apt -y install \
    build-essential \
    curl \
    perl \
    zlib1g-dev \
  && \
  mkdir -p /usr/local/src/ && cd /usr/local/src/ && \
  curl https://www.openssl.org/source/openssl-${VERSION}.tar.gz -o openssl-${VERSION}.tar.gz && \
  sha256sum openssl-${VERSION}.tar.gz | grep ${SHA256} && \
  tar -xf openssl-${VERSION}.tar.gz && \
  cd /usr/local/src/openssl-${VERSION} && \
  apt -y remove libssl-dev && \
  ./config "linux-$(uname -m)" --prefix=/usr/local/ssl --openssldir=/usr/local/ssl shared zlib && \
  make -j$(nproc) && \
  make TESTS=-test_afalg test && \
  make install && \
  apt -y remove \
    build-essential \
    curl \
    perl \
    zlib1g-dev \
  && \
  apt -y autoremove && \
  useradd openssl && \
  rm /usr/local/src/openssl-${VERSION}.tar.gz && \
  rm -rf /usr/local/src/openssl-${VERSION} && \
  rm -rf /var/lib/apt/lists/*

USER openssl

WORKDIR /

ENV \
  PATH=/usr/local/ssl/bin:$PATH \
  SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt \
  SSL_CERT_DIR=/etc/ssl/certs

ENTRYPOINT [ "openssl" ]

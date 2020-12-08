FROM ubuntu:20.04

ENV \
  VERSION=1.1.1i \
  SHA256=e8be6a35fe41d10603c3cc635e93289ed00bf34b79671a3a4de64fcee00d5242 \
  DEBIAN_FRONTEND=noninteractive

RUN \
  apt update && apt upgrade -y && apt install -y build-essential checkinstall zlib1g-dev curl && \
  cd /usr/local/src/ && \
  curl https://www.openssl.org/source/openssl-${VERSION}.tar.gz -o openssl-${VERSION}.tar.gz && \
  sha256sum openssl-${VERSION}.tar.gz | grep ${SHA256} && \
  tar -xf openssl-${VERSION}.tar.gz && \
  cd /usr/local/src/openssl-${VERSION} && \
  ./config --prefix=/usr/local/ssl --openssldir=/usr/local/ssl shared zlib && \
  make && \
  make test && \
  make install && \
  cd /etc/ld.so.conf.d/ && \
  echo "/usr/local/ssl/lib" > openssl-${VERSION}.conf && \
  ldconfig -v && \
  rm /usr/bin/c_rehash && \
  rm /usr/bin/openssl && \
  rm /usr/local/src/openssl-${VERSION}.tar.gz && \
  rm -rf /usr/local/src/openssl-${VERSION} && \
  apt remove -y build-essential checkinstall zlib1g-dev curl && \
  apt-get autoremove -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /

ENV \
  PATH=/usr/local/ssl/bin:$PATH \
  SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt \
  SSL_CERT_DIR=/etc/ssl/certs

ENTRYPOINT [ "openssl" ]

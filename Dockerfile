FROM alpine:3.14

ARG VERSION SHA256

RUN \
  apk update && \
  apk upgrade && \
  apk add \
    alpine-sdk \
    curl \
    linux-headers \
    perl \
    zlib-dev \
  && \
  mkdir -p /usr/local/src/ && cd /usr/local/src/ && \
  curl https://www.openssl.org/source/openssl-${VERSION}.tar.gz -o openssl-${VERSION}.tar.gz && \
  sha256sum openssl-${VERSION}.tar.gz | grep ${SHA256} && \
  tar -xf openssl-${VERSION}.tar.gz && \
  cd /usr/local/src/openssl-${VERSION} && \
  ./config --prefix=/usr/local/ssl --openssldir=/usr/local/ssl shared zlib && \
  make && \
  make TESTS=-test_afalg test && \
  make install && \
  apk del \
    alpine-sdk \
    curl \
    linux-headers \
    perl \
    zlib-dev \
  && \
  adduser -D -g '' openssl && \
  echo "/usr/local/ssl/lib:/lib:/usr/local/lib:/usr/lib" > /etc/ld-musl-$(arch).path && \
  rm /usr/local/src/openssl-${VERSION}.tar.gz && \
  rm -rf /usr/local/src/openssl-${VERSION} && \
  rm -rf /var/cache/apk/*

USER openssl

WORKDIR /

ENV \
  PATH=/usr/local/ssl/bin:$PATH \
  SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt \
  SSL_CERT_DIR=/etc/ssl/certs

ENTRYPOINT [ "openssl" ]

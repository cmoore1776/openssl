FROM ubuntu:20.04

ENV \
  VERSION=1.1.0l \
  SHA256=74a2f756c64fd7386a29184dc0344f4831192d61dc2481a93a4c5dd727f41148 \
  DEBIAN_FRONTEND=noninteractive

RUN \
  echo "deb http://archive.ubuntu.com/ubuntu/ bionic main restricted universe multiverse" >> /etc/apt/sources.list && \
  echo "deb http://archive.ubuntu.com/ubuntu/ bionic-updates main restricted universe multiverse" >> /etc/apt/sources.list && \
  echo "deb http://archive.ubuntu.com/ubuntu/ bionic-security main restricted universe multiverse" >> /etc/apt/sources.list && \
  apt update && apt upgrade -y && apt install -y build-essential checkinstall zlib1g-dev curl && \
  apt install -y --allow-downgrades perl=5.26.1-6ubuntu0.5 perl-base=5.26.1-6ubuntu0.5 perl-modules-5.26 libperl5.26 && \
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

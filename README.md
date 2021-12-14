# openssl

Dockerfile for various versions of openssl, based on Alpine Linux and built from source.

## Usage

```bash
docker run --rm shamelesscookie/openssl:latest version
OpenSSL 3.0.1 14 Dec 2021 (Library: OpenSSL 3.0.1 14 Dec 2021)

docker run --rm shamelesscookie/openssl:1.1.1 version
OpenSSL 1.1.1m  14 Dec 2021

docker run --rm shamelesscookie/openssl:1.1.0 version
OpenSSL 1.1.0l  10 Sep 2019

docker run --rm shamelesscookie/openssl:1.0.2 version
OpenSSL 1.0.2u  20 Dec 2019
```

## build

```bash
export VERSION=3.0.1
export SHA256=c311ad853353bce796edad01a862c50a8a587f62e7e2100ef465ab53ec9b06d1
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t shamelesscookie/openssl:latest -t shamelesscookie/openssl:${VERSION} --pull --push .

export VERSION=1.1.1m
export SHA256=f89199be8b23ca45fc7cb9f1d8d3ee67312318286ad030f5316aca6462db6c96
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t shamelesscookie/openssl:1.1.1 -t shamelesscookie/openssl:${VERSION} --pull --push .
```
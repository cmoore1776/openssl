# openssl

Dockerfile for various versions of openssl, based on Alpine Linux and built from source.

## Usage

```bash
docker run --rm shamelesscookie/openssl:latest version
OpenSSL 1.1.1l  24 Aug 2021

docker run --rm shamelesscookie/openssl:3.0.0 version
OpenSSL 3.0.0-alpha13 11 Mar 2021 (Library: OpenSSL 3.0.0-alpha13 11 Mar 2021)

docker run --rm shamelesscookie/openssl:1.1.0 version
OpenSSL 1.1.0l  10 Sep 2019

docker run --rm shamelesscookie/openssl:1.0.2 version
OpenSSL 1.0.2u  20 Dec 2019
```

## build

```bash
export VERSION=3.0.0
export SHA256=59eedfcb46c25214c9bd37ed6078297b4df01d012267fe9e9eee31f61bc70536
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t shamelesscookie/openssl:latest -t shamelesscookie/openssl:${VERSION} --pull --push .

export VERSION=1.1.1l
export SHA256=0b7a3e5e59c34827fe0c3a74b7ec8baef302b98fa80088d7f9153aa16fa76bd1
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t shamelesscookie/openssl:${VERSION} --pull --push .
```
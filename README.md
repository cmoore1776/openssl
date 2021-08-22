# openssl

Dockerfile for various versions of openssl, based on Alpine Linux and built from source.

## Usage

```bash
docker run --rm shamelesscookie/openssl:latest version
OpenSSL 1.1.1k  25 Mar 2021

docker run --rm shamelesscookie/openssl:3.0.0 version
OpenSSL 3.0.0-alpha13 11 Mar 2021 (Library: OpenSSL 3.0.0-alpha13 11 Mar 2021)

docker run --rm shamelesscookie/openssl:1.1.0 version
OpenSSL 1.1.0l  10 Sep 2019

docker run --rm shamelesscookie/openssl:1.0.2 version
OpenSSL 1.0.2u  20 Dec 2019
```

## build

```bash
export VERSION=1.1.1k
export SHA256=892a0875b9872acd04a9fde79b1f943075d5ea162415de3047c327df33fbaee5
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t shamelesscookie/openssl:latest -t shamelesscookie/openssl:${VERSION} --push .

export VERSION=3.0.0-beta2
export SHA256=e76ab22879201b12f014393ee4becec7f264d8f6955b1036839128002868df71
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t shamelesscookie/openssl:${VERSION} --push .
```
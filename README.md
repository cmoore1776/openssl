# openssl

Dockerfile for various versions of openssl, based on Ubuntu 20.04 and built from source.

## Usage

```bash
docker run --rm shamelesscookie/openssl:latest version
OpenSSL 1.1.1h  22 Sep 2020

docker run --rm shamelesscookie/openssl:3.0.0 version
OpenSSL 3.0.0-alpha9 26 Nov 2020 (Library: OpenSSL 3.0.0-alpha9 26 Nov 2020)

docker run --rm shamelesscookie/openssl:1.1.0 version
OpenSSL 1.1.0l  10 Sep 2019

docker run --rm shamelesscookie/openssl:1.0.2 version
OpenSSL 1.0.2u  20 Dec 2019
```
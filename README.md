# openssl

Dockerfile for various versions of openssl, based on Ubuntu 18.04 and built from source.

## Usage

```bash
docker run --rm shamelesscookie/openssl:latest version
OpenSSL 1.1.1d  10 Sep 2019

docker run --rm shamelesscookie/openssl:1.1.0 version
OpenSSL 1.1.0l  10 Sep 2019

docker run --rm shamelesscookie/openssl:1.0.2 version
OpenSSL 1.0.2t  10 Sep 2019
```
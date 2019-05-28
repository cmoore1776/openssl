# openssl

Dockerfile for various versions of openssl, based on Ubuntu 18.04 and built from source.

## Usage

```bash
docker run --rm shamelesscookie/openssl:latest version
OpenSSL 1.1.1c  28 May 2019

docker run --rm shamelesscookie/openssl:1.1.0 version
OpenSSL 1.1.0k  28 May 2019

docker run --rm shamelesscookie/openssl:1.0.2 version
OpenSSL 1.0.2s  28 May 2019
```
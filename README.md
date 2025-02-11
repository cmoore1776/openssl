# openssl

openssl, running on Debian Trixie and built from source.

## Usage

```bash
$ docker run --rm cmoore1776/openssl:latest version
OpenSSL 3.4.1 11 Feb 2025 (Library: OpenSSL 3.4.1 11 Feb 2025)

$ docker run --rm cmoore1776/openssl:3.3 version
OpenSSL 3.3.3 11 Feb 2025 (Library: OpenSSL 3.3.3 11 Feb 2025)

$ docker run --rm cmoore1776/openssl:3.2 version
OpenSSL 3.2.4 11 Feb 2025 (Library: OpenSSL 3.2.4 11 Feb 2025)

$ docker run --rm cmoore1776/openssl:3.1 version
OpenSSL 3.1.8 11 Feb 2025 (Library: OpenSSL 3.1.8 11 Feb 2025)

$ docker run --rm cmoore1776/openssl:3.0 version
OpenSSL 3.0.16 11 Feb 2025 (Library: OpenSSL 3.0.16 11 Feb 2025)

$ docker run --rm cmoore1776/openssl:1.1.1 version
OpenSSL 1.1.1w  11 Sep 2023
```

## build

```bash
export VERSION=3.4.1
export SHA256=002a2d6b30b58bf4bea46c43bdd96365aaf8daa6c428782aa4feee06da197df3
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:latest \
-t cmoore1776/openssl:3.4 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.3.3
export SHA256=712590fd20aaa60ec75d778fe5b810d6b829ca7fb1e530577917a131f9105539
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.3 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.2.4
export SHA256=b23ad7fd9f73e43ad1767e636040e88ba7c9e5775bfa5618436a0dd2c17c3716
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.2 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.1.8
export SHA256=d319da6aecde3aa6f426b44bbf997406d95275c5c59ab6f6ef53caaa079f456f
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.1 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.0.16
export SHA256=57e03c50feab5d31b152af2b764f10379aecd8ee92f16c985983ce4a99f7ef86
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.0 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=1.1.1w
export SHA256=cf3098950cb4d853ad95c0841f1f9c6d3dc102dccfcacd521d93925208b76ac8
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t cmoore1776/openssl:1.1.1 -t cmoore1776/openssl:${VERSION} --pull --push .
```

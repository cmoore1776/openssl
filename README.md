# openssl

openssl, running on Debian Trixie and built from source.

## Usage

```bash
$ docker run --rm cmoore1776/openssl:latest version
OpenSSL 3.6.0 1 Oct 2025 (Library: OpenSSL 3.6.0 1 Oct 2025)

$ docker run --rm cmoore1776/openssl:3.5 version
OpenSSL 3.5.4 30 Sep 2025 (Library: OpenSSL 3.5.4 30 Sep 2025)

$ docker run --rm cmoore1776/openssl:3.4 version
OpenSSL 3.4.3 30 Sep 2025 (Library: OpenSSL 3.4.3 30 Sep 2025)

$ docker run --rm cmoore1776/openssl:3.3 version
OpenSSL 3.3.5 30 Sep 2025 (Library: OpenSSL 3.3.5 30 Sep 2025)

$ docker run --rm cmoore1776/openssl:3.2 version
OpenSSL 3.2.6 30 Sep 2025 (Library: OpenSSL 3.2.6 30 Sep 2025)

$ docker run --rm cmoore1776/openssl:3.1 version
OpenSSL 3.1.8 11 Feb 2025 (Library: OpenSSL 3.1.8 11 Feb 2025)

$ docker run --rm cmoore1776/openssl:3.0 version
OpenSSL 3.0.18 30 Sep 2025 (Library: OpenSSL 3.0.18 30 Sep 2025)

$ docker run --rm cmoore1776/openssl:1.1.1 version
OpenSSL 1.1.1w  11 Sep 2023
```

## build

```bash
export VERSION=3.6.0
export SHA256=b6a5f44b7eb69e3fa35dbf15524405b44837a481d43d81daddde3ff21fcbb8e9
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:latest \
-t cmoore1776/openssl:3.6 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.5.4
export SHA256=967311f84955316969bdb1d8d4b983718ef42338639c621ec4c34fddef355e99
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.5 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.4.3
export SHA256=fa727ed1399a64e754030a033435003991aee36bda9a5b080995cb2ac5cf7f37
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.4 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.3.5
export SHA256=9d62c00a5a6903740c8703f0e006257f429d565d3b91ac1a9bd4a4c700002e01
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.3 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.2.6
export SHA256=89681a9ddaa9ed7cf25ea8ef61338db805200bae47d00510490623547380c148
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.2 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.1.8
export SHA256=d319da6aecde3aa6f426b44bbf997406d95275c5c59ab6f6ef53caaa079f456f
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.1 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.0.18
export SHA256=d80c34f5cf902dccf1f1b5df5ebb86d0392e37049e5d73df1b3abae72e4ffe8b
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.0 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=1.1.1w
export SHA256=cf3098950cb4d853ad95c0841f1f9c6d3dc102dccfcacd521d93925208b76ac8
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t cmoore1776/openssl:1.1.1 -t cmoore1776/openssl:${VERSION} --pull --push .
```

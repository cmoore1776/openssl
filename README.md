# openssl

openssl, running on Debian Trixie and built from source.

## Usage

```bash
docker run --rm cmoore1776/openssl:latest version
OpenSSL 3.1.4 24 Oct 2023 (Library: OpenSSL 3.1.4 24 Oct 2023)

docker run --rm cmoore1776/openssl:3.0.12 version
OpenSSL 3.0.12 24 Oct 2023 (Library: OpenSSL 3.0.12 24 Oct 2023)

docker run --rm cmoore1776/openssl:1.1.1 version
OpenSSL 1.1.1w  11 Sep 2023
```

## build

```bash
export VERSION=3.1.4
export SHA256=840af5366ab9b522bde525826be3ef0fb0af81c6a9ebd84caa600fea1731eee3
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t cmoore1776/openssl:latest -t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.0.12
export SHA256=f93c9e8edde5e9166119de31755fc87b4aa34863662f67ddfcba14d0b6b69b61
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=1.1.1w
export SHA256=cf3098950cb4d853ad95c0841f1f9c6d3dc102dccfcacd521d93925208b76ac8
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t cmoore1776/openssl:1.1.1 -t cmoore1776/openssl:${VERSION} --pull --push .
```

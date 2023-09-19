# openssl

openssl, running on Debian Trixie and built from source.

## Usage

```bash
docker run --rm cmoore1776/openssl:latest version
OpenSSL 3.1.3 19 Sep 2023 (Library: OpenSSL 3.1.3 19 Sep 2023)

docker run --rm cmoore1776/openssl:3.0.11 version
OpenSSL 3.0.11 19 Sep 2023 (Library: OpenSSL 3.0.11 19 Sep 2023)

docker run --rm cmoore1776/openssl:1.1.1 version
OpenSSL 1.1.1w  11 Sep 2023
```

## build

```bash
export VERSION=3.1.3
export SHA256=f0316a2ebd89e7f2352976445458689f80302093788c466692fb2a188b2eacf6
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t cmoore1776/openssl:latest -t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.0.11
export SHA256=b3425d3bb4a2218d0697eb41f7fc0cdede016ed19ca49d168b78e8d947887f55
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=1.1.1w
export SHA256=cf3098950cb4d853ad95c0841f1f9c6d3dc102dccfcacd521d93925208b76ac8
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t cmoore1776/openssl:1.1.1 -t cmoore1776/openssl:${VERSION} --pull --push .
```

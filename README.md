# openssl

openssl, running on Debian Trixie and built from source.

## Usage

```bash
$ docker run --rm cmoore1776/openssl:latest version
OpenSSL 3.5.2 5 Aug 2025 (Library: OpenSSL 3.5.2 5 Aug 2025)

$ docker run --rm cmoore1776/openssl:3.4 version
OpenSSL 3.4.2 1 Jul 2025 (Library: OpenSSL 3.4.2 1 Jul 2025)

$ docker run --rm cmoore1776/openssl:3.3 version
OpenSSL 3.3.4 1 Jul 2025 (Library: OpenSSL 3.3.4 1 Jul 2025)

$ docker run --rm cmoore1776/openssl:3.2 version
OpenSSL 3.2.5 1 Jul 2025 (Library: OpenSSL 3.2.5 1 Jul 2025)

$ docker run --rm cmoore1776/openssl:3.1 version
OpenSSL 3.1.8 11 Feb 2025 (Library: OpenSSL 3.1.8 11 Feb 2025)

$ docker run --rm cmoore1776/openssl:3.0 version
OpenSSL 3.0.16 11 Feb 2025 (Library: OpenSSL 3.0.16 11 Feb 2025)

$ docker run --rm cmoore1776/openssl:1.1.1 version
OpenSSL 1.1.1w  11 Sep 2023
```

## build

```bash
export VERSION=3.5.2
export SHA256=c53a47e5e441c930c3928cf7bf6fb00e5d129b630e0aa873b08258656e7345ec
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:latest \
-t cmoore1776/openssl:3.5 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.4.2
export SHA256=17b02459fc28be415470cccaae7434f3496cac1306b86b52c83886580e82834c
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.4 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.3.4
export SHA256=8d1a5fc323d3fd351dc05458457fd48f78652d2a498e1d70ffea07b4d0eb3fa8
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.3 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.2.5
export SHA256=b36347d024a0f5bd09fefcd6af7a58bb30946080eb8ce8f7be78562190d09879
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.2 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.1.8
export SHA256=d319da6aecde3aa6f426b44bbf997406d95275c5c59ab6f6ef53caaa079f456f
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.1 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.0.17
export SHA256=dfdd77e4ea1b57ff3a6dbde6b0bdc3f31db5ac99e7fdd4eaf9e1fbb6ec2db8ce
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.0 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=1.1.1w
export SHA256=cf3098950cb4d853ad95c0841f1f9c6d3dc102dccfcacd521d93925208b76ac8
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t cmoore1776/openssl:1.1.1 -t cmoore1776/openssl:${VERSION} --pull --push .
```

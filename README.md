# openssl

openssl, running on Debian Trixie and built from source.

## Usage

```bash
$ docker run --rm cmoore1776/openssl:latest version
OpenSSL 3.4.0 22 Oct 2024 (Library: OpenSSL 3.4.0 22 Oct 2024)

$ docker run --rm cmoore1776/openssl:3.3 version
OpenSSL 3.3.2 3 Sep 2024 (Library: OpenSSL 3.3.2 3 Sep 2024)

$ docker run --rm cmoore1776/openssl:3.2 version
OpenSSL 3.2.3 3 Sep 2024 (Library: OpenSSL 3.2.3 3 Sep 2024)

$ docker run --rm cmoore1776/openssl:3.1 version
OpenSSL 3.1.7 3 Sep 2024 (Library: OpenSSL 3.1.7 3 Sep 2024)

$ docker run --rm cmoore1776/openssl:3.0 version
OpenSSL 3.0.15 3 Sep 2024 (Library: OpenSSL 3.0.15 3 Sep 2024)

$ docker run --rm cmoore1776/openssl:1.1.1 version
OpenSSL 1.1.1w  11 Sep 2023
```

## build

```bash
export VERSION=3.4.0
export SHA256=e15dda82fe2fe8139dc2ac21a36d4ca01d5313c75f99f46c4e8a27709b7294bf
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:latest \
-t cmoore1776/openssl:3.4 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.3.2
export SHA256=2e8a40b01979afe8be0bbfb3de5dc1c6709fedb46d6c89c10da114ab5fc3d281
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.3 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.2.3
export SHA256=52b5f1c6b8022bc5868c308c54fb77705e702d6c6f4594f99a0df216acf46239
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.2 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.1.7
export SHA256=053a31fa80cf4aebe1068c987d2ef1e44ce418881427c4464751ae800c31d06c
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.1 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.0.15
export SHA256=23c666d0edf20f14249b3d8f0368acaee9ab585b09e1de82107c66e1f3ec9533
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.0 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=1.1.1w
export SHA256=cf3098950cb4d853ad95c0841f1f9c6d3dc102dccfcacd521d93925208b76ac8
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t cmoore1776/openssl:1.1.1 -t cmoore1776/openssl:${VERSION} --pull --push .
```

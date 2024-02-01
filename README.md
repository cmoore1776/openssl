# openssl

openssl, running on Debian Trixie and built from source.

## Usage

```bash
$ docker run --rm cmoore1776/openssl:latest version
OpenSSL 3.2.1 30 Jan 2024 (Library: OpenSSL 3.2.1 30 Jan 2024)

$ docker run --rm cmoore1776/openssl:3.1 version
OpenSSL 3.1.5 30 Jan 2024 (Library: OpenSSL 3.1.5 30 Jan 2024)

$ docker run --rm cmoore1776/openssl:3.0 version
OpenSSL 3.0.13 30 Jan 2024 (Library: OpenSSL 3.0.13 30 Jan 2024)

$ docker run --rm cmoore1776/openssl:1.1.1 version
OpenSSL 1.1.1w  11 Sep 2023
```

## build

```bash
export VERSION=3.2.1
export SHA256=83c7329fe52c850677d75e5d0b0ca245309b97e8ecbcfdc1dfdc4ab9fac35b39
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:latest \
-t cmoore1776/openssl:3.2 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.1.5
export SHA256=6ae015467dabf0469b139ada93319327be24b98251ffaeceda0221848dc09262
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.1 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.0.13
export SHA256=88525753f79d3bec27d2fa7c66aa0b92b3aa9498dafd93d7cfa4b3780cdae313
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 \
-t cmoore1776/openssl:3.0 \
-t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=1.1.1w
export SHA256=cf3098950cb4d853ad95c0841f1f9c6d3dc102dccfcacd521d93925208b76ac8
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t cmoore1776/openssl:1.1.1 -t cmoore1776/openssl:${VERSION} --pull --push .
```

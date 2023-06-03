# openssl

openssl, running on Debian Bookworm and built from source.

## Usage

```bash
docker run --rm cmoore1776/openssl:latest version
OpenSSL 3.1.1 30 May 2023 (Library: OpenSSL 3.1.1 30 May 2023)

docker run --rm cmoore1776/openssl:3.0.9 version
OpenSSL 3.0.9 30 May 2023 (Library: OpenSSL 3.0.9 30 May 2023)

docker run --rm cmoore1776/openssl:1.1.1 version
OpenSSL 1.1.1u  30 May 2023
```

## build

```bash
export VERSION=3.1.1
export SHA256=b3aa61334233b852b63ddb048df181177c2c659eb9d4376008118f9c08d07674
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t cmoore1776/openssl:latest -t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.0.9
export SHA256=eb1ab04781474360f77c318ab89d8c5a03abc38e63d65a603cabbf1b00a1dc90
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=1.1.1u
export SHA256=e2f8d84b523eecd06c7be7626830370300fbcc15386bf5142d72758f6963ebc6
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t cmoore1776/openssl:1.1.1 -t cmoore1776/openssl:${VERSION} --pull --push .
```

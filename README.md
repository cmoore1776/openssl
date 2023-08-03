# openssl

openssl, running on Debian Bookworm and built from source.

## Usage

```bash
docker run --rm cmoore1776/openssl:latest version
OpenSSL 3.1.2 1 Aug 2023 (Library: OpenSSL 3.1.2 1 Aug 2023)

docker run --rm cmoore1776/openssl:3.0.10 version
OpenSSL 3.0.10 1 Aug 2023 (Library: OpenSSL 3.0.10 1 Aug 2023)

docker run --rm cmoore1776/openssl:1.1.1 version
OpenSSL 1.1.1v  1 Aug 2023
```

## build

```bash
export VERSION=3.1.2
export SHA256=a0ce69b8b97ea6a35b96875235aa453b966ba3cba8af2de23657d8b6767d6539
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t cmoore1776/openssl:latest -t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=3.0.10
export SHA256=1761d4f5b13a1028b9b6f3d4b8e17feb0cedc9370f6afe61d7193d2cdce83323
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t cmoore1776/openssl:${VERSION} --pull --push .

export VERSION=1.1.1v
export SHA256=d6697e2871e77238460402e9362d47d18382b15ef9f246aba6c7bd780d38a6b0
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t cmoore1776/openssl:1.1.1 -t cmoore1776/openssl:${VERSION} --pull --push .
```

# openssl

openssl, running on Alpine Linux and built from source.

## Usage

```bash
docker run --rm shamelesscookie/openssl:latest version
OpenSSL 3.0.6 11 Oct 2022 (Library: OpenSSL 3.0.6 11 Oct 2022)

docker run --rm shamelesscookie/openssl:1.1.1 version
OpenSSL 1.1.1r  11 Oct 2022

docker run --rm shamelesscookie/openssl:1.1.0 version
OpenSSL 1.1.0l  10 Sep 2019

docker run --rm shamelesscookie/openssl:1.0.2 version
OpenSSL 1.0.2u  20 Dec 2019
```

## build

```bash
export VERSION=3.0.6
export SHA256=e4a10a2986945e3f1a1f2ebd68ac780449a1773b96b6a174fdf650d6bc9611f1
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t shamelesscookie/openssl:latest -t shamelesscookie/openssl:${VERSION} --pull --push .

export VERSION=1.1.1r
export SHA256=e389352ae3d5ae4d38597bf8a54f1dcb6fb3c8b50f4fe58a94bb1bf7f85d82a0
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t shamelesscookie/openssl:1.1.1 -t shamelesscookie/openssl:${VERSION} --pull --push .
```
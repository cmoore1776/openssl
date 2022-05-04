# openssl

openssl, based on Alpine Linux and built from source.

## Usage

```bash
docker run --rm shamelesscookie/openssl:latest version
OpenSSL 3.0.3 3 May 2022 (Library: OpenSSL 3.0.3 3 May 2022)

docker run --rm shamelesscookie/openssl:1.1.1 version
OpenSSL 1.1.1o  3 May 2022

docker run --rm shamelesscookie/openssl:1.1.0 version
OpenSSL 1.1.0l  10 Sep 2019

docker run --rm shamelesscookie/openssl:1.0.2 version
OpenSSL 1.0.2u  20 Dec 2019
```

## build

```bash
export VERSION=3.0.3
export SHA256=ee0078adcef1de5f003c62c80cc96527721609c6f3bb42b7795df31f8b558c0b
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t shamelesscookie/openssl:latest -t shamelesscookie/openssl:${VERSION} --pull --push .

export VERSION=1.1.1o
export SHA256=9384a2b0570dd80358841464677115df785edb941c71211f75076d72fe6b438f
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t shamelesscookie/openssl:1.1.1 -t shamelesscookie/openssl:${VERSION} --pull --push .
```
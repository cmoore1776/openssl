# openssl

openssl, based on Alpine Linux and built from source.

## Usage

```bash
docker run --rm shamelesscookie/openssl:latest version
OpenSSL 3.0.2 15 Mar 2022 (Library: OpenSSL 3.0.2 15 Mar 2022)

docker run --rm shamelesscookie/openssl:1.1.1 version
OpenSSL 1.1.1n  15 Mar 2022

docker run --rm shamelesscookie/openssl:1.1.0 version
OpenSSL 1.1.0l  10 Sep 2019

docker run --rm shamelesscookie/openssl:1.0.2 version
OpenSSL 1.0.2u  20 Dec 2019
```

## build

```bash
export VERSION=3.0.2
export SHA256=98e91ccead4d4756ae3c9cde5e09191a8e586d9f4d50838e7ec09d6411dfdb63
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t shamelesscookie/openssl:latest -t shamelesscookie/openssl:${VERSION} --pull --push .

export VERSION=1.1.1n
export SHA256=40dceb51a4f6a5275bde0e6bf20ef4b91bfc32ed57c0552e2e8e15463372b17a
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --build-arg VERSION --build-arg SHA256 -t shamelesscookie/openssl:1.1.1 -t shamelesscookie/openssl:${VERSION} --pull --push .
```
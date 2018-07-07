# ss-local

> A shadowsocks client build by docker

## Prerequirements

Please ensure your computer have `docker` installed

## Usage

```
cp shadowsocks.json.dev shadowsocks.json
```

and replace `YOUR_SERVER_ADDR`, `YOUR_SERVER_PORT`, `YOUR_SERVER_PASS`, `YOUR_SERVER_METHOD` to your own config and run

```
docker build -t ss-client .
docker run -d --name=ss-client -p 8118:8118 ss-client
```
# Fastly CLI Docker Image

* https://github.com/fastly/cli
* https://developer.fastly.com/reference/cli/

## Use

```shell
docker run -e FASTLY_SERVICE_ID=XXX -e FASTLY_API_TOKEN=XXX -it --rm sirdiego/fastly:10.1.0 service list
```

## Build


```shell
docker buildx build --platform linux/amd64 --load \
--build-arg FASTLY_VERSION=10.1.0 \
-f Dockerfile \
-t sirdiego/fastly:10.1.0 .
````

## Publish


```shell
docker push sirdiego/fastly:10.1.0
```

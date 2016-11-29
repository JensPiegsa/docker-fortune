# docker-fortune

Dockerized `fortune` based on `alpine:edge`.

# Usage examples

Print fortunes to STDOUT:

```sh
docker run -d --name logtest1 piegsaj/fortune && \
docker logs -f logtest1
```

Print fortunes to file:

```sh
docker run -d --name logtest2 -e LOGFILE /tmp/log.txt piegsaj/fortune && \
docker logs -f logtest2
```

Print only short fortunes with custom delay:

```sh
docker run -d --name logtest3 -e DELAY=.1 piegsaj/fortune -s && \
docker logs -f logtest3
```


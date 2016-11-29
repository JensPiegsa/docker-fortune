# docker-fortune

Dockerized `fortune` based on `alpine:edge`.

# Usage examples

Print fortunes to STDOUT:

```sh
docker run -d --name logtest1 piegsaj/fortune && \
docker logs -f logtest1
```

Print only short fortunes with custom delay:

```sh
docker run -d --name logtest2 -e DELAY=.1 piegsaj/fortune -s && \
docker logs -f logtest2
```



Print fortunes to file with custom delay and early exit:

```sh
docker run -d --name logtest3 -e LOGFILE=/tmp/log -e DELAY=.1 piegsaj/fortune && \
sleep 3 && \
docker exec logtest3 cat /tmp/log && \
docker rm -f logtest3
```


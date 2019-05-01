docker-gc-cron
===

[![Build Status](https://travis-ci.org/lsst-sqre/docker-gc-cron.png)](https://travis-ci.org/lsst-sqre/docker-gc-cron)

A simple that includes `docker` and the
[`docker-gc`](https://github.com/spotify/docker-gc) script that is intended to
be used as a kubernetes side-car in a pod with a "DinD" container.

Usage
---

```sh
docker run -ti lsstsqre/docker-gc-cron
```

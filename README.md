docker-docker-gc
===

[![Build Status](https://travis-ci.org/lsst-sqre/docker-docker-gc.png)](https://travis-ci.org/lsst-sqre/docker-docker-gc)

A simple image that includes `docker` and the
[`docker-gc`](https://github.com/spotify/docker-gc) script. It is intended to
be used as a kubernetes side-car in a pod with a "DinD" container.

Usage
---

```sh
docker run -ti lsstsqre/docker-gc
```

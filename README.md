docker-gc-cron
===

[![Build Status](https://travis-ci.org/lsst-sqre/docker-gc-cron.png)](https://travis-ci.org/lsst-sqre/docker-gc-cron)

A simple docker image that runs [`docker-gc`]() every 5 minutes.  Intended to
be used as a kubernetes side-car in a pod with a "DinD" container.

Usage
---

```sh
docker run -ti lsstsqre/docker-gc-cron
```

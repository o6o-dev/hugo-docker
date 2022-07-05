# Hugo docker image

This repo aims to create a docker image for [hugo](https://gohugo.io) with as few codes as possible.

It is based on (jojomi's](https://github.com/jojomi/docker-hugo/) work.

It's encouraged to modify the Dockerfile and build your own.

The default configuration is meant to be used behind a reverse proxy.

To build it, run:

```sh
cd src; docker build --network=host -t myhugo .
```

or if you use `podman`:

```sh
cd src; podman build --cgroup-manager=cgroupfs --network=host -t myhugo .
```

where `myhugo` is just the name of the tag of the docker image.

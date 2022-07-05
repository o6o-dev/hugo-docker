Example to use it with [traefik proxy](https://doc.traefik.io/traefik/) in docker-compose:

Note: not a minimal working example.

```
version: "3.3"

services:
  hugo:
    image: myhugo
    volumes:
      - ./hugo/src/:/src
      - ./hugo/output/:/output
    labels:
      traefik.enable: "true"
      traefik.http.routers.hugo.rule: "Host(`your.site.com`)"
    environment:
      HUGO_BASEURL: "https://your.site.com"
      HUGO_THEME: "pick-a-theme"
      HUGO_WATCH: "true"
```

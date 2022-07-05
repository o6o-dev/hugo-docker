FROM alpine:3.16 as builder

ENV HUGO_VERSION=0.101.0
WORKDIR /tmp
RUN wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz -O downloaded.tar.gz
RUN tar -xf downloaded.tar.gz

# --------------------------------

FROM alpine:3.16

# install necessary libraries.
RUN apk add gcompat libstdc++

COPY ./run.sh /run.sh
COPY --from=builder /tmp/hugo /usr/bin/hugo

VOLUME /src
VOLUME /output

WORKDIR /src
CMD ["/run.sh"]

EXPOSE 1313

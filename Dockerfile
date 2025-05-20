# syntax=docker/dockerfile:1
ARG BUILDPLATFORM
FROM --platform=$BUILDPLATFORM golang:bookworm

ADD notely /usr/bin/notely

CMD ["notely"]

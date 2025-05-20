# syntax=docker/dockerfile:1
ARG BUILDPLATFORM
FROM --platform=$BUILDPLATFORM golang:1.24.3-bookworm

ADD notely /usr/bin/notely

CMD ["notely"]

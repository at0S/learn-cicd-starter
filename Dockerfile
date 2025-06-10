# syntax=docker/dockerfile:1
ARG BUILDPLATFORM
FROM --platform=$BUILDPLATFORM golang:1.24.4-alpine3.22

ADD notely /usr/bin/notely

CMD ["notely"]

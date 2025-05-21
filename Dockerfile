# syntax=docker/dockerfile:1
ARG BUILDPLATFORM
FROM --platform=$BUILDPLATFORM golang:1.24.3-alpine3.21

ADD notely /usr/bin/notely

CMD ["notely"]

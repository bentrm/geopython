FROM python:3.6-alpine

RUN set -ex \
    && apk add --no-cache --virtual .tools \
      gettext \
    && apk add --no-cache --virtual .geo \
      --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
      geos \
      proj4 \
      gdal \
      libspatialite

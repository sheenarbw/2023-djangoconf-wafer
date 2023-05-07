#!/bin/sh

cd .. 

GIT_COMMIT="$(git show --format="%h" --no-patch)"
DATE_STR=$(date '+%Y-%m-%d-t-%H-%M')

docker build -t gcr.io/umuzi-prod/djangoconf-wafer:$GIT_COMMIT-$DATE_STR -t gcr.io/umuzi-prod/djangoconf-wafer:latest .
docker push gcr.io/umuzi-prod/djangoconf-wafer:$GIT_COMMIT-$DATE_STR
docker push gcr.io/umuzi-prod/djangoconf-wafer:latest

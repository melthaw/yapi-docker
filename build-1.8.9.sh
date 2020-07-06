#!/bin/bash -e
docker build --build-arg YAPI_VERSION=1.8.9 -f docker/Dockerfile docker -t clouthinkin/yapi:1.8.9
docker push clouthinkin/yapi:1.8.9
#!/bin/bash -e
docker build --build-arg YAPI_VERSION=1.9.2 -f docker/Dockerfile docker -t clouthinkin/yapi:1.9.2
docker push clouthinkin/yapi:1.9.2
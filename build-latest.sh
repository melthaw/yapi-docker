#!/bin/bash -e
docker build -f docker/Dockerfile-latest docker -t clouthinkin/yapi:latest
docker push clouthinkin/yapi:latest
#!/bin/bash -e
docker build -f docker/Dockerfile docker -t clouthinkin/yapi:latest
docker push clouthinkin/yapi:latest
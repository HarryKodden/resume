#!/bin/bash

rm -rf build

docker run -ti \
    -v ${PWD}/source:/opt/resume/source \
    -v ${PWD}/build:/opt/resume/build \
    resume bundle exec middleman build

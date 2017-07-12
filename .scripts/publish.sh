#!/usr/bin/env bash

set -eu

function publish_27 {
    echo "===================="
    echo "Start publish of 2.7"
    echo "===================="
    docker build -t raulanatol/aws-lambda-python:2.7 2.7/.
    docker push raulanatol/aws-lambda-python:2.7
    echo "Publish on https://hub.docker.com/r/raulanatol/aws-lambda-python/"
}

function publish_36 {
    echo "===================="
    echo "Start publish of 3.6"
    echo "===================="
    docker build -t raulanatol/aws-lambda-python:3.6 3.6/.
    docker push raulanatol/aws-lambda-python:3.6
    echo "Publish on https://hub.docker.com/r/raulanatol/aws-lambda-python/"
}

if [ "$#" != "1" ]; then
  echo "Usage publish DOCKER_VERSION"
  exit
fi

if [ "$1" == "2.7" ]; then
    publish_27
elif [ "$1" == "3.6" ]; then
    publish_36
else
    echo "Usage publish DOCKER_VERSION"
fi


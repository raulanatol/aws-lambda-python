#!/usr/bin/env bash

set -eu

docker build -t raulanatol/aws-lambda-python .
docker push raulanatol/aws-lambda-python
echo "Publish on https://hub.docker.com/r/raulanatol/aws-lambda-python/"
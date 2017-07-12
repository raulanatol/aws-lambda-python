# aws-lambda-python

Docker image to do more easy deploy AWS lambdas (python)

Python versions:
    - 2.7
    - 3.6

## Environment variables

| Name | Type | Description |
| ---- | ---- | ----------- |
| LAMBDA_FUNCTION_NAME | Mandatory | The name of the lambda in AWS |
| AWS_DEFAULT_REGION | Mandatory | The AWS lambda region |

## Commands

### Test

Run the tests of your code in the docker image

```bash
docker run -t raulanatol/aws-lambda-python run_test
```

### Deploy

Upload the lambda code including yours libraries/requirements to AWS Lambda

```bash
docker run -t raulanatol/aws-lambda-python deploy
```

## Example Dockerfile

```bash
FROM raulanatol/aws-lambda-python@2.7

ENV AWS_DEFAULT_REGION='eu-west-1'
ENV LAMBDA_FUNCTION_NAME='my-test-lambda'

ADD requirements.txt /lambda/
ADD . /code
ADD src /lambda/
ADD .scripts/test.sh /bin/run_test

RUN build
```
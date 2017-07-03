# aws-lambda-python

Using python2.7

## Environment variables

### LAMBDA_FUNCTION_NAME

Mandatory

### AWS_UPDATE_FUNCTION

If is set the docker run update the lambda code

### AWS_PROFILE

Optional

### AWS_ACCESS_KEY_ID

Optional

### AWS_SECRET_ACCESS_KEY

Optional

### AWS_DEFAULT_REGION

Optional


### TEST_SCRIPT_FIRST

Optional. 
If *true* the upload-lambda execute a test.sh script first. If this script fails the lambda don't be uploaded.
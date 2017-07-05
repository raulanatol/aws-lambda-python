#!/usr/bin/env bash

set -eu

echo "-----------------"
echo "   Start tests   "
echo "-----------------"

test.sh

echo "-----------------"
echo "   Start upload  "
echo "-----------------"

cd /lambda/
zip -r9 /deploy/function.zip *
cd /usr/local/lib64/python2.7/site-packages
zip -r9 /deploy/function.zip *
cd /usr/local/lib/python2.7/site-packages
zip -r9 /deploy/function.zip *

aws lambda update-function-code --function-name ${LAMBDA_FUNCTION_NAME} --zip-file fileb:///deploy/function.zip

echo "-----------------"
echo "     FINISH      "
echo "-----------------"

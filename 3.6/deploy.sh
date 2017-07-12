#!/usr/bin/env bash

set -eu

echo "-----------------"
echo "   Start upload  "
echo "-----------------"

cd /lambda/
zip -9 /deploy/function.zip *
cd /usr/local/lib/python3.6/site-packages
zip -r9 /deploy/function.zip ./
if [ -d "/usr/local/lib/python3.6/lib-dynload/" ]; then
    cd /usr/local/lib/python3.6/lib-dynload/
    zip -r9 /deploy/function.zip ./
fi

aws lambda update-function-code --function-name ${LAMBDA_FUNCTION_NAME} --zip-file fileb:///deploy/function.zip

echo "-----------------"
echo "     FINISH      "
echo "-----------------"

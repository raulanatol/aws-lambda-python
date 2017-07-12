#!/usr/bin/env bash

set -eu

echo "--------------------------"
echo "   Install requirements   "
echo "--------------------------"
pip install -r /lambda/requirements.txt
rm /lambda/requirements.txt
#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)

TEMP_NAME="cfn-base-network"
REGION="us-west-2"

aws --region ${REGION} cloudformation create-stack \
    --stack-name ${TEMP_NAME} \
    --template-body file://${SCRIPT_DIR}/${TEMP_NAME}.yml \
    --parameters file://${SCRIPT_DIR}/${TEMP_NAME}-config.json \
    --capabilities CAPABILITY_NAMED_IAM

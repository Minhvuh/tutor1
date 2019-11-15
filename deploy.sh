#!/bin/bash

# sam build
sam package --output-template-file \
    packaged.yaml --s3-bucket "${BUCKET_NAME}"
sam  deploy --template-file packaged.yaml \
    --region us-east-1 --capabilities \
    CAPABILITY_IAM --stack-name samR4

#!/bin/bash -e

HUGO_VERSION=0.14
S3_BUCKET=cryptohack.net

wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux_amd64.tar.gz
tar xvzf hugo_${HUGO_VERSION}_linux_amd64.tar.gz
cp hugo_${HUGO_VERSION}_linux_amd64/hugo_${HUGO_VERSION}_linux_amd64 hugo

./hugo -v

aws s3 sync public/ s3://${S3_BUCKET} --acl public-read --region ap-southeast-2 --delete --cache-control "max-age=300,s-maxage=300"

#!/bin/bash -e

HUGO_VERSION=0.16
DOWNLOAD_FILE_NAME=hugo_${HUGO_VERSION}_linux-64bit.tgz
S3_BUCKET=hackforprivacy.org

wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${DOWNLOAD_FILE_NAME}
tar xvzf ${DOWNLOAD_FILE_NAME}

./hugo -v

aws s3 sync public/ s3://${S3_BUCKET} --acl public-read --region ap-southeast-2 --delete --cache-control "max-age=300,s-maxage=300"

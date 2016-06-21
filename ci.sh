#!/bin/bash -e

HUGO_VERSION=0.16
DOWNLOAD_FILE_NAME=hugo_${HUGO_VERSION}_linux-64bit
DOWNLOAD_FILE_NAME_WITH_EXTENSION=${DOWNLOAD_FILE_NAME}.tgz
S3_BUCKET=cryptohack.net

wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${DOWNLOAD_FILE_NAME_WITH_EXTENSION}
tar xvzf ${DOWNLOAD_FILE_NAME_WITH_EXTENSION}
cp ${DOWNLOAD_FILE_NAME}/${DOWNLOAD_FILE_NAME} hugo

./hugo -v

aws s3 sync public/ s3://${S3_BUCKET} --acl public-read --region ap-southeast-2 --delete --cache-control "max-age=300,s-maxage=300"

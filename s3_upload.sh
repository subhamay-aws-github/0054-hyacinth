#!/bin/sh

FILE_NAME=$1
TARGET_BUCKET=$2


start=$(date +%s)
echo "`date` :: S3 Upload started."
aws s3 cp ${FILE_NAME} s3://${TARGET_BUCKET}
echo "`date` :: S3 Upload completed."
end=$(date +%s)    
runtime=$(($end-$start))
echo "Total execution time: ${runtime} seconds"
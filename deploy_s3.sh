#!/usr/bin/env bash
echo "Building...."
bundle exec middleman build --clean
echo "Syncing to S3..."
cd build && aws s3 sync . s3://unleash-api-docs
echo "DONE"
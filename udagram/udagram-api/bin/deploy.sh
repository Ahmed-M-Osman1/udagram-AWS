#!/usr/bin/env bash
set -x
set -e

AWS_CONFIG_FILE=$HOME/.aws/config

echo "[profile eb-cli]"                              > $AWS_CONFIG_FILE
echo "aws_access_key_id=$AWS_ACCESS_KEY_ID"         >> $AWS_CONFIG_FILE
echo "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY" >> $AWS_CONFIG_FILE

eb setenv AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION AWS_BUCKET=$AWS_BUCKET AWS_PROFILE=$AWS_PROFILE  JWT_SECRET=$JWT_SECRET PORT=$PORT DB_PORT=$DB_PORT POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_USERNAME=$POSTGRES_USERNAME URL=$URL

cp -R .elasticbeanstalk www/.elasticbeanstalk
cp .npmrc www/.npmrc 
cp package.json www/package.json 
cd www && zip -r Archive.zip . 
cd ..
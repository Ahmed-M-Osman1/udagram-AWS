#!/usr/bin/env bash
set -x
set -e

AWS_CONFIG_FILE=$HOME/.aws/config

echo "[profile eb-cli]"                              > $AWS_CONFIG_FILE
echo "aws_access_key_id=$AWS_ACCESS_KEY_ID"         >> $AWS_CONFIG_FILE
echo "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY" >> $AWS_CONFIG_FILE

eb deploy my-environment-production 2>&1 | tee $CIRCLE_ARTIFACTS/eb_deploy_output.txt
# Temporary hack to overcome issue eith 'eb deploy' returning exit code 0 on error
# See http://stackoverflow.com/questions/23771923/elasticbeanstalk-deployment-error-command-hooks-directoryhooksexecutor-py-p
grep -v -c -q -i error $CIRCLE_ARTIFACTS/eb_deploy_output.txt

cp -R .elasticbeanstalk www/.elasticbeanstalk
cp .npmrc www/.npmrc 
cp package.json www/package.json 
cd www && zip -r Archive.zip . 
cd ..
#!/bin/bash
set -x

mkdir -p $ARCHIVE_DIR
cp -R -n ./ $ARCHIVE_DIR/ || true

echo "GIT_URL=${GIT_URL}" >> $ARCHIVE_DIR/build.properties
echo "GIT_BRANCH=${GIT_BRANCH}" >> $ARCHIVE_DIR/build.properties
echo "GIT_COMMIT=${GIT_COMMIT}" >> $ARCHIVE_DIR/build.properties
echo "DEPLOY_TARGET=${DEPLOY_TARGET}" >> $ARCHIVE_DIR/build.properties
# these are defined as environment properties in the stage configuration
echo "DEVX_GIT=${DEVX_GIT}" >> $ARCHIVE_DIR/build.properties
echo "DEVX_GIT_URL=${DEVX_GIT_URL}" >> $ARCHIVE_DIR/build.properties
echo "DEVX_GIT_URL_RAW=${DEVX_GIT_URL_RAW}" >> $ARCHIVE_DIR/build.properties
echo "DEVX_GIT_URL_CODE=${DEVX_GIT_URL_CODE}" >> $ARCHIVE_DIR/build.properties

echo "File 'build.properties' created for passing env variables to subsequent pipeline jobs:"
cat $ARCHIVE_DIR/build.properties
